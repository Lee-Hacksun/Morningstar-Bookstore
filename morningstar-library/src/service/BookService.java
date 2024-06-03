package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import constant.BookAttribute;
import constant.UserAttribute;
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
	
	public void reloadBooks() {
		books.clear();
		int count = cursor;
		cursor = 0;
		loadBooks(count);
	}
	
	public int getCursor() {
		return cursor;
	}
	
	// 두번의 loadBook호출 사이에 insert Book이 일어나면 버그의 가능성 있음 
	public void loadBooks(int count) {
		PreparedStatement loadPstmt = null;
		try {			
			
			con = DBConnector.getConnection();			
			loadPstmt = con.prepareStatement("SELECT * FROM " + BookAttribute.TABLE_NAME + " LIMIT ?, ?;");
			loadPstmt.setInt(1, cursor);
			loadPstmt.setInt(2, count);
			
			rs = loadPstmt.executeQuery();
			
			cursor += count;
						
			while(rs.next()) {
				System.out.println(rs.getString(BookAttribute.ISBN));
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
			System.err.println("Database error in BookService>loadBooks" + ex.getMessage()); 
			
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
			System.err.println("Database error in BookService>loadBook" + ex.getMessage()); 
			
		} finally {
			try { if (rs != null) rs.close(); } catch (SQLException e) { /* ignored */ }
			try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { /* ignored */ }
			try { if (con != null) con.close(); } catch (SQLException e) { /* ignored */ }
		}
		return null;
	}
	
	// TODO : 검색 도서가 하나 초과일때 처리 필요  
	public Book searchBook(String searchBookName) {
	      try {
	         con = DBConnector.getConnection();
	         pstmt = con.prepareStatement(String.join(" ", "SELECT * FROM", BookAttribute.TABLE_NAME, "WHERE", BookAttribute.BOOK_NAME, "LIKE ?;"));
	         pstmt.setString(1, String.join("", "%", searchBookName, "%"));

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
	         } else {
	        	 return null;
	         }
	         
	      } catch (SQLException ex) {
	         System.err.println("Database error in BookService>searchBook" + ex.getMessage()); 
	         
	      } finally {
	         try { if (rs != null) rs.close(); } catch (SQLException e) { /* ignored */ }
	         try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { /* ignored */ }
	         try { if (con != null) con.close(); } catch (SQLException e) { /* ignored */ }
	      }
	      return null;
	   }

	public void modifyBook(String isbn, String name, String img, String author, String publisher, String detail) {
		 try {
	         con = DBConnector.getConnection();
	         if(img.equals("")) {
	        	 pstmt = con.prepareStatement(String.join(" ", "UPDATE", BookAttribute.TABLE_NAME, "SET", BookAttribute.BOOK_NAME, "=?,", BookAttribute.AUTHOR, "=?,", BookAttribute.PUBLISHER, "=?,", BookAttribute.DESCRIPTION, "=? WHERE", BookAttribute.ISBN, "=?;"));
	        	 pstmt.setString(1, name);
	        	 pstmt.setString(2, author);
	        	 pstmt.setString(3, publisher);
	        	 pstmt.setString(4, detail);
	        	 pstmt.setString(5, isbn);
	        	 
	         } else {
	        	 pstmt = con.prepareStatement(String.join(" ", "UPDATE", BookAttribute.TABLE_NAME, "SET", BookAttribute.BOOK_NAME, "=?,", BookAttribute.AUTHOR, "=?,", BookAttribute.PUBLISHER, "=?,", BookAttribute.DESCRIPTION, "=?,", BookAttribute.BOOK_IMG_URL, "=? WHERE", BookAttribute.ISBN, "=?;"));
		         pstmt.setString(1, name);
		         pstmt.setString(2, author);
		         pstmt.setString(3, publisher);
		         pstmt.setString(4, detail);
		         pstmt.setString(5, img);
		         pstmt.setString(6, isbn);	 
	         }
	         pstmt.executeUpdate();
	         reloadBooks();
	      } catch (SQLException ex) {
	         System.err.println("Database error in BookService>modifyBook" + ex.getMessage()); 
	         
	      } finally {
	         try { if (rs != null) rs.close(); } catch (SQLException e) { /* ignored */ }
	         try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { /* ignored */ }
	         try { if (con != null) con.close(); } catch (SQLException e) { /* ignored */ }
	      }
	}	
}
