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
		try {
			pstmt = con.prepareStatement("SELECT MAX(orderID) AS orderID FROM "+ OrderAttribute.TABLE_NAME +";");
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				orderID = rs.getInt("orderID");
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

	// TODO : 배송지 처리에 더 좋은 방법이 있는지 고민
	// TODO : 테스트 필요
	public void addOrder(Cart cart, String deliveryAddress) {
		try {
			LocalDate currentDate = LocalDate.now();
			
			con = DBConnector.getConnection();
			pstmt = con.prepareStatement(String.join(" ", "INSERT INTO", OrderAttribute.TABLE_NAME, "VALUES (?,?,?,?,?, 1);"));
			 
			pstmt.setInt(1, orderID); 
			pstmt.setString(2, cart.getUserID());
			pstmt.setString(3, currentDate.toString());
			pstmt.setString(4, deliveryAddress);
			pstmt.setInt(5, cart.getTotalAmount());
			
			pstmt.executeUpdate();
			
			pstmt = con.prepareStatement(String.join(" ", "INSERT INTO", OrderListAttribute.TABLE_NAME, "VALUES (?,?,?,?);"));
			for(Pair<Book, Integer, Integer> book : cart.getBooks()) {
				
				pstmt.setString(1, cart.getUserID());
				pstmt.setInt(2, orderID);
				pstmt.setString(3, book.getFirst().getIsbn());
				pstmt.setInt(4,  book.getSecond());
				
				pstmt.executeUpdate();
			}
			
		} catch (SQLException ex) {
			System.err.println("Database error in OrderService" + ex.getMessage());
		} finally {
			try { if (rs != null) rs.close(); } catch (SQLException e) { /* ignored */ }
			try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { /* ignored */ }
			try { if (con != null) con.close(); } catch (SQLException e) { /* ignored */ }
		}
		orderID++;
	}
	public void loadValidOrders() {
		orders.clear();
		loadOrders(true);
	}
	
	public void loadInvalidOrders() {
		orders.clear();
		loadOrders(false);
	}
	
	public void loadAllOrders() {
		orders.clear();
		loadOrders(true);
		loadOrders(false);
	}
	
	// TODO : 테스트 필요
	private void loadOrders(boolean isValid) {		
		try {
			Vector<String> isbns = new Vector<String>(); 
			
			ResultSet isbnRS = null;
			con = DBConnector.getConnection();
			
			pstmt = con.prepareStatement(String.join(" ", "SELECT * FROM", OrderAttribute.TABLE_NAME, "WHERE", OrderAttribute.STATUS, "=?;"));			
			pstmt.setBoolean(1, isValid);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {				
				pstmt = con.prepareStatement(String.join(" ", "SELECT", OrderListAttribute.ISBN, "FROM", OrderListAttribute.TABLE_NAME, "WHERE", OrderListAttribute.ORDER_ID, "=?;"));
				pstmt.setInt(1,  rs.getInt(OrderAttribute.ORDER_ID));
				
				isbnRS = pstmt.executeQuery();				
				while(isbnRS.next()) {
					isbns.add(isbnRS.getString(OrderListAttribute.ISBN));
				}
				
				orders.add(new Order( rs.getInt(OrderAttribute.ORDER_ID)
						, rs.getString(OrderAttribute.CUSTOMER_ID)
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
					if(!bookRS.getBoolean(OrderAttribute.STATUS)) {
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
}
