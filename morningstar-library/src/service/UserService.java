package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import constant.UserAttribute;
import utility.PasswordUtil;
import database.DBConnector;
import model.User;

public class UserService {
    private Connection con = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;

    public UserService() {
    }

    public boolean addUser(User user) {
        try {
            con = DBConnector.getConnection();
            pstmt = con.prepareStatement("INSERT INTO " + UserAttribute.TABLE_NAME + " values (?, ?, ?, ?, ?, ?);");

            String hashedPassword = PasswordUtil.hashPassword(user.getUserPW());

            pstmt.setString(1, user.getUserID());
            pstmt.setString(2, hashedPassword);
            pstmt.setString(3, user.getName());
            pstmt.setBoolean(4, user.isManager());
            pstmt.setString(5, user.getEMailAddress());
            pstmt.setString(6, user.getDeliveryAddress());

            int isSuccess = pstmt.executeUpdate();
            return isSuccess > 0;

        } catch (SQLException ex) {
            System.err.println("Database error in UserService: " + ex.getMessage());

        } finally {
            try { if (rs != null) rs.close(); } catch (SQLException e) { /* ignored */ }
            try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { /* ignored */ }
            try { if (con != null) con.close(); } catch (SQLException e) { /* ignored */ }
        }
        return false;
    }

    public boolean loginUser(String userID, String userPW) {
        try {
            con = DBConnector.getConnection();
            pstmt = con.prepareStatement("SELECT " + UserAttribute.USER_PW + " FROM " + UserAttribute.TABLE_NAME 
                    + " WHERE " + UserAttribute.USER_ID + "=?;");
            
            pstmt.setString(1, userID);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                String storedHashedPassword = rs.getString(UserAttribute.USER_PW);
                return PasswordUtil.checkPassword(userPW, storedHashedPassword);
            }

        } catch (SQLException ex) {
            System.err.println("Database error in UserService: " + ex.getMessage());

        } finally {
            try { if (rs != null) rs.close(); } catch (SQLException e) { /* ignored */ }
            try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { /* ignored */ }
            try { if (con != null) con.close(); } catch (SQLException e) { /* ignored */ }
        }
        return false;
    }
    
    public User getUser(String userID) {
    	try {
			con = DBConnector.getConnection();
			pstmt = con.prepareStatement(String.join(" ", "SELECT * FROM", UserAttribute.TABLE_NAME, "WHERE", UserAttribute.USER_ID, "=?;"));
			pstmt.setString(1, userID);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return new User(
						rs.getString(UserAttribute.USER_ID)
						, rs.getString(UserAttribute.USER_PW)
						, rs.getString(UserAttribute.NAME)
						, rs.getString(UserAttribute.DELIVERY_ADDRESS)
						, rs.getString(UserAttribute.EMAIL)
						, rs.getBoolean(UserAttribute.MANAGER_MODE)
						);
			}
			
		} catch (SQLException ex) {
            System.err.println("Database error in UserService: " + ex.getMessage());

        } finally {
            try { if (rs != null) rs.close(); } catch (SQLException e) { /* ignored */ }
            try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { /* ignored */ }
            try { if (con != null) con.close(); } catch (SQLException e) { /* ignored */ }
        }
    	
    	return null;
    }
}
