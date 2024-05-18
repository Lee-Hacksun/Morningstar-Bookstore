package model;

import java.util.StringJoiner;
import java.util.Vector;

public class Cart {

	private String userID;
	private Vector<Pair<BookDTO, Integer, Integer>> books;
	private int totalBookCount;
	private int totalAmount;
	
	public Cart(String userID, Vector<Pair<BookDTO, Integer, Integer>> books, int totalBookCount, int totalAmount) {
		this.userID = userID;
		this.books = books;
		this.totalBookCount = totalBookCount;
		this.totalAmount = totalAmount;
		
		//  Deep Copy books
//		for(Pair<Book, Integer, Integer> book : books) {
//			Book copiedBook = new Book(book.getFirst());
//			Integer copiedCount = new Integer(book.getSecond());
//			Integer copiedAmount = new Integer(book.getThird());
			
//			books.add(new Pair<>(copiedBook, copiedCount, copiedAmount));
//		}
	}
	
	public String toString() {
		Vector<String> bookNames = new Vector<String>();
		for(Pair<BookDTO, Integer, Integer> book : books) {
			bookNames.add(book.getFirst().getBookName());
		}
		
		return new StringJoiner(", ", "userID: ", "")
				.add(userID)
				.add("Books: " + String.join(", ", bookNames))
				.add("TotalBookCount: " + totalBookCount)
				.add("TotalAmount: " + totalAmount)
				.toString();
	}
	
	
	
	/*getter, setter 메소드*/
	public String getuserID() {
		return userID;
	}
	public void setuserID(String userID) {
	    this.userID = userID;
	}
	
	public Vector<Pair<BookDTO, Integer, Integer>> getBooks() {
		return books;
	}
	public void setBooks(Vector<Pair<BookDTO, Integer, Integer>> books) {
	    this.books = books;
	}
	
	public int getTotalBookCount() {
		return totalBookCount;
	}
	public void setTotalBookCount(int totalBookCount) {
	    this.totalBookCount = totalBookCount;
	}
	
	public int getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(int totalAmount) {
	    this.totalAmount = totalAmount;
	}
	
}