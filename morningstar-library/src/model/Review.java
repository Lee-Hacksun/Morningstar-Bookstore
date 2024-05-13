package model;

import java.util.StringJoiner;

public class Review {

	private String userID;
	private String isbn;
	private String contents;
	private int rating;
	
	public Review(String userID, String isbn, String contents, int rating) {
		assert (rating >= 0 && rating <= 10) : "올바르지 않은 리뷰 점수";
		
		this.userID = userID;
		this.isbn = isbn;
		this.contents = contents;
		this.rating = rating;
	}
	
	public String toString() {
		return new StringJoiner(", ", "userID: ", "")
				.add(userID)
				.add("ISBN: " + isbn)
				.add("Contents: " + contents)
				.add("Rating: " + Integer.toString(rating))
				.toString();
	}
	
	public String getuserID() {
		return userID;
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