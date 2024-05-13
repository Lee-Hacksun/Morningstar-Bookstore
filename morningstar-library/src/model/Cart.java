package model;

import java.util.StringJoiner;

public class Cart {

	private String userID;
	private int totalBookCount;
	private int totalAmount;
	
	public Cart(String userID, int totalBookCount, int totalAmount) {
		this.userID = userID;
		this.totalBookCount = totalBookCount;
		this.totalAmount = totalAmount;
	}
	
	public String toString() {
		return new StringJoiner(", ", "userID: ", "")
				.add(userID)
				.add("TotalBookCount: " + totalBookCount)
				.add("TotalAmount: " + totalAmount)
				.toString();
	}
	
	public String getuserID() {
		return userID;
	}
	
	public int getTotalBookCount() {
		return totalBookCount;
	}
	
	public int getTotalAmount() {
		return totalAmount;
	}
}