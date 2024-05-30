package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import constant.ManagerOrderAttribute;
import constant.OrderAttribute;
import database.DBConnector;
import model.Order;

public class ManagerOrderService {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private int managerOrderID;
	
	public ManagerOrderService() {		
		try {
			con = DBConnector.getConnection();
			pstmt = con.prepareStatement("SELECT MAX(orderID) AS orderID FROM "+ OrderAttribute.TABLE_NAME +";");
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				managerOrderID = rs.getInt("orderID") + 1;
			}
		} catch (SQLException ex) {
			System.err.println("Database error in OrderService" + ex.getMessage());
			
		} finally {
			try { if (rs != null) rs.close(); } catch (SQLException e) { /* ignored */ }
			try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { /* ignored */ }
			try { if (con != null) con.close(); } catch (SQLException e) { /* ignored */ }
		}
	}
	
	public void addManagerOrder(String userID, String author, String date, String isbn, int count) {
		try {
			con = DBConnector.getConnection();
			pstmt = con.prepareStatement(String.join(" ", "INSERT INTO", ManagerOrderAttribute.TABLE_NAME, "VALUES (?,?,?,?,?,?);"));
			pstmt.setString(1, userID);
			pstmt.setInt(2, managerOrderID);
			pstmt.setString(3, author);
			pstmt.setString(4, date);
			pstmt.setString(5, isbn);
			pstmt.setInt(6, count);
			
			pstmt.executeUpdate();
		} catch (SQLException ex) {
			System.err.println("Database error in BookService" + ex.getMessage()); 
			
		} finally {
			try { if (rs != null) rs.close(); } catch (SQLException e) { /* ignored */ }
			try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { /* ignored */ }
			try { if (con != null) con.close(); } catch (SQLException e) { /* ignored */ }
		}
	}
}
