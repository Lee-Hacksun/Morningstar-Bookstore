package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import constant.InventoryAttribute;
import database.DBConnector;

public class InventoryService {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	private int price;
	
	public InventoryService() {
		price = -1;
	}
	
	public int loadPrice(String ISBN) {
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
}