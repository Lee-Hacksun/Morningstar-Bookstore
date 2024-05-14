package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import constant.BookAttribute;
import database.DBConnector;
import model.Book;

public class BookService {	
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private Vector<Book> books = new Vector<Book>();
	private int cursor;
	
	public BookService(int cursor) {
		this.cursor = cursor;
	}
	
	public BookService() {
		this(0);
	}
	
	public Vector<Book> getBooks() {
		return books;
	}
	
	// 두번의 loadBook호출 사이에 insert Book이 일어나면 버그의 가능성 있음 
	public void loadBooks(int count) {
		try {			
			con = DBConnector.getConnection();			
			pstmt = con.prepareStatement("SELECT * FROM " + BookAttribute.TABLE_NAME + " LIMIT " + cursor + ", " + count + ";");
			rs = pstmt.executeQuery();
			
			cursor += count;
						
			while(rs.next()) {
				books.add(new Book(
						rs.getString(BookAttribute.ISBN)
						, rs.getString(BookAttribute.BOOK_NAME)
						, rs.getString(BookAttribute.AUTHOR)
						, rs.getString(BookAttribute.PUBLISHER)
						, rs.getString(BookAttribute.RELEASE_DATE)
						, rs.getString(BookAttribute.DESCRIPTION)
						, rs.getString(BookAttribute.BOOK_IMG_URL)
						, rs.getInt(BookAttribute.PAGE)
						, rs.getInt(BookAttribute.CATEGORY)));
			}
		} catch (SQLException ex) {
			System.err.println("Database error in BookService" + ex.getMessage()); 
			
		} finally {
			try { if (rs != null) rs.close(); } catch (SQLException e) { /* ignored */ }
			try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { /* ignored */ }
			try { if (con != null) con.close(); } catch (SQLException e) { /* ignored */ }
		}
	}
	
	public Book loadBook(String ISBN) {
		try {
			con = DBConnector.getConnection();
			pstmt = con.prepareStatement(String.join(" ", "SELECT * FROM", BookAttribute.TABLE_NAME, "WHERE", BookAttribute.ISBN, "=?;"));
			pstmt.setString(1, ISBN);

			rs = pstmt.executeQuery();
			if(rs.next()) {
				return new Book(
						rs.getString(BookAttribute.ISBN)
						, rs.getString(BookAttribute.BOOK_NAME)
						, rs.getString(BookAttribute.AUTHOR)
						, rs.getString(BookAttribute.PUBLISHER)
						, rs.getString(BookAttribute.RELEASE_DATE)
						, rs.getString(BookAttribute.DESCRIPTION)
						, rs.getString(BookAttribute.BOOK_IMG_URL)
						, rs.getInt(BookAttribute.PAGE)
						, rs.getInt(BookAttribute.CATEGORY));
			}			
			
		} catch (SQLException ex) {
			System.err.println("Database error in BookService" + ex.getMessage()); 
			
		} finally {
			try { if (rs != null) rs.close(); } catch (SQLException e) { /* ignored */ }
			try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { /* ignored */ }
			try { if (con != null) con.close(); } catch (SQLException e) { /* ignored */ }
		}
		return null;
	}
}
