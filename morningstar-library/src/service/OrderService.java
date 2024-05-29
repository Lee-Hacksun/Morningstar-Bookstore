package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.Vector;

import constant.OrderAttribute;
import constant.OrderListAttribute;
import database.DBConnector;
import model.Book;
import model.Cart;
import model.Order;
import model.Pair;

public class OrderService {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private int orderID;
	private Vector<Order> orders;
	
	public OrderService() {
		orders = new Vector<Order>();
		
		try {
			con = DBConnector.getConnection();
			pstmt = con.prepareStatement("SELECT MAX(orderID) AS orderID FROM "+ OrderAttribute.TABLE_NAME +";");
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				orderID = rs.getInt("orderID") + 1;
			}
		} catch (SQLException ex) {
			System.err.println("Database error in OrderService" + ex.getMessage());
			
		} finally {
			try { if (rs != null) rs.close(); } catch (SQLException e) { /* ignored */ }
			try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { /* ignored */ }
			try { if (con != null) con.close(); } catch (SQLException e) { /* ignored */ }
		}
	}
	
	public Vector<Order> getOrders() {
		return orders;
	}

	public void addOrder(Cart cart, String deliveryAddress, int status) {
		try {
			LocalDate currentDate = LocalDate.now();
			
			con = DBConnector.getConnection();
			pstmt = con.prepareStatement(String.join(" ", "INSERT INTO", OrderAttribute.TABLE_NAME, "VALUES (?,?,?,?,?,?,?);"));
			pstmt.setInt(1, orderID); 
			pstmt.setString(2, cart.getUserID());
			pstmt.setString(3, currentDate.toString());
			pstmt.setString(4, deliveryAddress);
			pstmt.setInt(5, cart.getTotalBookCount());
			pstmt.setInt(6, cart.getTotalAmount());
			pstmt.setInt(7, status);
			
			pstmt.executeUpdate();
			
			pstmt = con.prepareStatement(String.join(" ", "INSERT INTO", OrderListAttribute.TABLE_NAME, "VALUES (?,?,?,?);"));
			for(Pair<Book, Integer, Integer> book : cart.getBooks()) {
				
				pstmt.setString(1, cart.getUserID());
				pstmt.setInt(2, orderID);
				pstmt.setString(3, book.getFirst().getIsbn());
				pstmt.setInt(4,  book.getSecond());
				
				pstmt.executeUpdate();
			}
			
			CartService cartService = new CartService();
			cartService.deleteCart(cart.getUserID());
			
		} catch (SQLException ex) {
			System.err.println("Database error in OrderService" + ex.getMessage());
		} finally {
			try { if (rs != null) rs.close(); } catch (SQLException e) { /* ignored */ }
			try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { /* ignored */ }
			try { if (con != null) con.close(); } catch (SQLException e) { /* ignored */ }
		}
		orderID++;
	}
	public void loadOrdersWithStatus(int status) {
		orders.clear();
		loadOrders(status);
	}
	
	public void loadAllOrders() {
		orders.clear();
		loadOrders(0); // 배송 취소
		loadOrders(1); // 배송 준비준
		loadOrders(2); // 배송중
		loadOrders(3); // 배송 완료
	}
	
	// TODO : 테스트 필요 
		public boolean isReviewable(String userID, String isbn) {		
			try {
				ResultSet bookRS = null;
				
				con = DBConnector.getConnection();
				pstmt = con.prepareStatement(String.join(" ", "SELECT", OrderListAttribute.ORDER_ID, "FROM", OrderListAttribute.TABLE_NAME, "WHERE", OrderListAttribute.USER_ID, "=? AND", OrderListAttribute.ISBN, "=?;"));
				pstmt.setString(1, userID);
				pstmt.setString(2, isbn);
				
				rs = pstmt.executeQuery();			
				while(rs.next()) {
					pstmt = con.prepareStatement(String.join(" ", "SELECT", OrderAttribute.STATUS, "FROM", OrderAttribute.TABLE_NAME, "WHERE", OrderAttribute.ORDER_ID, "=?;"));
					pstmt.setInt(1, rs.getInt(OrderListAttribute.ORDER_ID));
					
					bookRS = pstmt.executeQuery();				
					if(bookRS.next()) {
						if(bookRS.getInt(OrderAttribute.STATUS) == 3) {
							return true;
						}
					}
				} 
				
				return false;
			} catch (SQLException ex) {
				System.err.println("Database error in OrderService" + ex.getMessage());
			
			} finally {
				try { if (rs != null) rs.close(); } catch (SQLException e) { /* ignored */ }
				try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { /* ignored */ }
				try { if (con != null) con.close(); } catch (SQLException e) { /* ignored */ }
			}
			return false;
		}
		
		public void loadOrdersWithUserID(String userID) {
			try {				
				Vector<String> isbns = new Vector<String>();
				ResultSet isbnRS = null;
				
				con = DBConnector.getConnection();
				
				pstmt = con.prepareStatement(String.join(" ", "SELECT * FROM", OrderAttribute.TABLE_NAME, "WHERE", OrderAttribute.USER_ID, "=?;"));			
				pstmt.setString(1, userID);
				
				rs = pstmt.executeQuery();
				while(rs.next()) {				
					pstmt = con.prepareStatement(String.join(" ", "SELECT", OrderListAttribute.ISBN, "FROM", OrderListAttribute.TABLE_NAME, "WHERE", OrderListAttribute.ORDER_ID, "=?;"));
					pstmt.setInt(1, rs.getInt(OrderListAttribute.ORDER_ID));
					
					isbnRS = pstmt.executeQuery();
					while(isbnRS.next()) {
						isbns.add(isbnRS.getString(OrderListAttribute.ISBN));
					}	

					orders.add(new Order( rs.getInt(OrderAttribute.ORDER_ID)
							, rs.getString(OrderAttribute.USER_ID)
							, rs.getString(OrderAttribute.ORDER_DATE)
							, rs.getString(OrderAttribute.DELIVERY_ADDRESS)
							, rs.getInt(OrderAttribute.TOTAL_AMOUNT)
							, rs.getInt(OrderAttribute.TOTAL_BOOK_COUNT)
							, isbns
							, rs.getInt(OrderAttribute.STATUS))
							);
					isbns.clear();
				}				
				
			} catch (SQLException ex) {
				System.err.println("Database error in OrderService" + ex.getMessage());
				
			} finally {
				try { if (rs != null) rs.close(); } catch (SQLException e) { /* ignored */ }
				try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { /* ignored */ }
				try { if (con != null) con.close(); } catch (SQLException e) { /* ignored */ }
			}
		}
	
	// TODO : 테스트 필요
	private void loadOrders(int status) {		
		try {
			Vector<String> isbns = new Vector<String>();
			ResultSet isbnRS = null;
			
			con = DBConnector.getConnection();
			
			pstmt = con.prepareStatement(String.join(" ", "SELECT * FROM", OrderAttribute.TABLE_NAME, "WHERE", OrderAttribute.STATUS, "=?;"));			
			pstmt.setInt(1, status);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {				
				pstmt = con.prepareStatement(String.join(" ", "SELECT", OrderListAttribute.ISBN, "FROM", OrderListAttribute.TABLE_NAME, "WHERE", OrderListAttribute.ORDER_ID, "=?;"));
				pstmt.setInt(1,  rs.getInt(OrderAttribute.ORDER_ID));
				
				isbnRS = pstmt.executeQuery();				
				while(isbnRS.next()) {
					isbns.add(isbnRS.getString(OrderListAttribute.ISBN));
				}
				
				orders.add(new Order( rs.getInt(OrderAttribute.ORDER_ID)
						, rs.getString(OrderAttribute.USER_ID)
						, rs.getString(OrderAttribute.ORDER_DATE)
						, rs.getString(OrderAttribute.DELIVERY_ADDRESS)
						, rs.getInt(OrderAttribute.TOTAL_AMOUNT)
						, rs.getInt(OrderAttribute.TOTAL_BOOK_COUNT)
						, isbns
						, rs.getInt(OrderAttribute.STATUS))
						);
				isbns.clear();
			}
			
		} catch (SQLException ex) {
			System.err.println("Database error in OrderService" + ex.getMessage());
			
		} finally {
			try { if (rs != null) rs.close(); } catch (SQLException e) { /* ignored */ }
			try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { /* ignored */ }
			try { if (con != null) con.close(); } catch (SQLException e) { /* ignored */ }
		}
	}
}
