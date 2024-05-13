package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import constant.UserAttribute;
import database.DBConnector;
import model.User;

public class UserService {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public UserService() {
	}
	
	public void addUser(User user) {
		try {
			con = DBConnector.getConnection();
			pstmt = con.prepareStatement("INSERT INTO " + UserAttribute.TABLE_NAME + " values (?, ?, ?, ?, ?, ?);");
			
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPW());
			pstmt.setString(3, user.getName());
			pstmt.setBoolean(4, user.isManager());
			pstmt.setString(5, user.getEMailAddress());
			pstmt.setString(6, user.getDeliveryAddress());
			
			pstmt.execute();
		} catch (SQLException ex) {
			System.err.println("Database error in RegisterService" + ex.getMessage());
		} finally {
			try { if (rs != null) rs.close(); } catch (SQLException e) { /* ignored */ }
			try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { /* ignored */ }
			try { if (con != null) con.close(); } catch (SQLException e) { /* ignored */ }
		}
	}
	
	public boolean loginUser(String userID, String userPW) {
		try {
			con = DBConnector.getConnection();
			pstmt = con.prepareStatement("SELECT COUNT(userID) as success FROM " + UserAttribute.TABLE_NAME 
					+ " where " + UserAttribute.USER_ID + "=? and " + UserAttribute.USER_PW + "=?;");
			
			pstmt.setString(1, userID);
			pstmt.setString(2, userPW);
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				int success = rs.getInt("success");
				if (success == 1) {
					return true;
				}
				else {
					return false;
				}
			}
		} catch (SQLException ex) {
			System.err.println("Database error in RegisterService" + ex.getMessage());
		} finally {
			try { if (rs != null) rs.close(); } catch (SQLException e) { /* ignored */ }
			try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { /* ignored */ }
			try { if (con != null) con.close(); } catch (SQLException e) { /* ignored */ }
		}
		return false;
	}
}
