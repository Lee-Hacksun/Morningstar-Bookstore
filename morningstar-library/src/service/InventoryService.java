package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DecimalFormat;

import constant.BookAttribute;
import constant.InventoryAttribute;
import database.DBConnector;

public class InventoryService {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private int price;
	
	public InventoryService() {
		price = -1;
	}
	
	public String toString() {
		  DecimalFormat formatter = new DecimalFormat("#,###");
		  
		  String formattedPrice= formatter.format(price);
		  return formattedPrice;
	}
	
	public int getPrice() {
		return price;
	}
	
	public int getPrice(String ISBN) {
		try {
			con = DBConnector.getConnection();
			pstmt = con.prepareStatement(String.join(" ", "SELECT", InventoryAttribute.PRICE, "FROM", InventoryAttribute.TABLE_NAME, "WHERE", InventoryAttribute.ISBN, "=?;"));
			pstmt.setString(1, ISBN);
			
			rs = pstmt.executeQuery();			
			if(rs.next()) {
				price =  rs.getInt(InventoryAttribute.PRICE);
			}
			
		} catch (SQLException ex) {
			System.err.println("Database error in InventoryService " + ex.getMessage());			
			
		} finally {
			try { if (rs != null) rs.close(); } catch (SQLException e) { /* ignored */ }
			try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { /* ignored */ }
			try { if (con != null) con.close(); } catch (SQLException e) { /* ignored */ }
		}
		return price;
	}

	public void modifyCost(String isbn, int newPrice) {
		 try {
	         con = DBConnector.getConnection();
	         pstmt = con.prepareStatement(String.join(" ", "UPDATE", InventoryAttribute.TABLE_NAME, "SET", InventoryAttribute.PRICE, "=? WHERE", InventoryAttribute.ISBN, "=?;"));
	         pstmt.setInt(1, newPrice);
	         pstmt.setString(2, isbn);
	         
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