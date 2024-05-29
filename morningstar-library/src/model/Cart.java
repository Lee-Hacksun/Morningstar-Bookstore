package model;

import java.util.StringJoiner;
import java.util.Vector;

public class Cart {

	private String userID;
	private Vector<Pair<Book, Integer, Integer>> books;
	private int totalBookCount;
	private int totalAmount;
	
	public Cart(String userID, Vector<Pair<Book, Integer, Integer>> books, int totalBookCount, int totalAmount) {
		this.userID = userID;
		this.books = books;
		this.totalBookCount = totalBookCount;
		this.totalAmount = totalAmount;
		
	}
	
	public String toString() {
		Vector<String> bookNames = new Vector<String>();
		for(Pair<Book, Integer, Integer> book : books) {
			bookNames.add(book.getFirst().getBookName());
		}
		
		return new StringJoiner(", ", "userID: ", "")
				.add(userID)
				.add("Books: " + String.join(", ", bookNames))
				.add("TotalBookCount: " + totalBookCount)
				.add("TotalAmount: " + totalAmount)
				.toString();
	}
	
	public String getUserID() {
		return userID;
	}
	
	public Vector<Pair<Book, Integer, Integer>> getBooks() {
		return books;
	}
	
	public int getTotalBookCount() {
		return totalBookCount;
	}
	
	public int getTotalAmount() {
		return totalAmount;
	}
}