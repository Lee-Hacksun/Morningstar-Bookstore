package model;

import java.util.StringJoiner;

public class Review {

	private String customerID;
	private String isbn;
	private String contents;
	private int rating;
	
	public Review(String customerID, String isbn, String contents, int rating) {
		assert (rating >= 0 && rating <= 10) : "올바르지 않은 리뷰 점수";
		
		this.customerID = customerID;
		this.isbn = isbn;
		this.contents = contents;
		this.rating = rating;
	}
	
	public String toString() {
		return new StringJoiner(", ", "CustomerID: ", "")
				.add(customerID)
				.add("ISBN: " + isbn)
				.add("Contents: " + contents)
				.add("Rating: " + Integer.toString(rating))
				.toString();
	}
	
	public String getCustomerID() {
		return customerID;
	}
	
	public String getIsbn() {
		return isbn;
	}
	
	public String getContents() {
		return contents;
	}
	
	public int getRating() {
		return rating;
	}
}