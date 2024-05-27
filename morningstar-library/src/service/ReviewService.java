package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import constant.ReviewAttribute;
import database.DBConnector;
import model.Review;

public class ReviewService {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private Vector<Review> reviews = null;
	
	public ReviewService() {
		reviews = new Vector<Review>();
	}
	
	// TODO : 테스트 필요
	public void addReview(Review review) {
		try {
			con = DBConnector.getConnection();
			pstmt = con.prepareStatement(String.join(" ", "INSERT INTO", ReviewAttribute.TABLE_NAME, "VALUES (?,?,?,?);"));		
			pstmt.setString(1, review.getuserID());
			pstmt.setString(2, review.getIsbn());
			pstmt.setInt(3, review.getRating());
			pstmt.setString(4, review.getContents());
			
			pstmt.executeUpdate();			
		} catch (SQLException ex) {
			System.err.println("Database error in OrderService" + ex.getMessage());
		
		} finally {
			try { if (rs != null) rs.close(); } catch (SQLException e) { /* ignored */ }
			try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { /* ignored */ }
			try { if (con != null) con.close(); } catch (SQLException e) { /* ignored */ }
		}
	}
	
	// TODO : 테스트 필요
	public void updateReview(String userID, String isbn, String contents) {
		try {
			con = DBConnector.getConnection();
			pstmt = con.prepareStatement(String.join(" ", "UPDATE", ReviewAttribute.TABLE_NAME, "SET", ReviewAttribute.CONTENT, "=? WHERE", ReviewAttribute.USER_ID, "=? AND", ReviewAttribute.ISBN, "=?;"));		
			pstmt.setString(1, contents);
			pstmt.setString(2, userID);
			pstmt.setString(3, isbn);
			
			pstmt.executeUpdate();			
		} catch (SQLException ex) {
			System.err.println("Database error in OrderService" + ex.getMessage());
		
		} finally {
			try { if (rs != null) rs.close(); } catch (SQLException e) { /* ignored */ }
			try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { /* ignored */ }
			try { if (con != null) con.close(); } catch (SQLException e) { /* ignored */ }
		}
	}
	
	// TODO : 테스트 필요
	public void loadReviews(String isbn) {		
		try {
			con = DBConnector.getConnection();
			pstmt = con.prepareStatement(String.join(" ", "SELECT * FROM", ReviewAttribute.TABLE_NAME, "WHERE", ReviewAttribute.ISBN, "=?;"));
			pstmt.setString(1, isbn);

			rs = pstmt.executeQuery();
			while(rs.next()) {
				reviews.add(new Review(
						rs.getString(ReviewAttribute.USER_ID)
						, rs.getString(ReviewAttribute.ISBN)
						, rs.getString(ReviewAttribute.CONTENT)
						, rs.getInt(ReviewAttribute.RATING)
						));
			}
			
		} catch (SQLException ex) {
			System.err.println("Database error in OrderService" + ex.getMessage());
		
		} finally {
			try { if (rs != null) rs.close(); } catch (SQLException e) { /* ignored */ }
			try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { /* ignored */ }
			try { if (con != null) con.close(); } catch (SQLException e) { /* ignored */ }
		}
	}
	
	public Vector<Review> getReviews() {
		return reviews;
	}
}
