package model;

import java.util.StringJoiner;

public class Cart {

	private String customerID;
	private int totalBookCount;
	private int totalAmount;
	
	public Cart(String customerID, int totalBookCount, int totalAmount) {
		this.customerID = customerID;
		this.totalBookCount = totalBookCount;
		this.totalAmount = totalAmount;
	}
	
	public String toString() {
		return new StringJoiner(", ", "CustomerID: ", "")
				.add(customerID)
				.add("TotalBookCount: " + totalBookCount)
				.add("TotalAmount: " + totalAmount)
				.toString();
	}
	
	public String getCustomerID() {
		return customerID;
	}
	
	public int getTotalBookCount() {
		return totalBookCount;
	}
	
	public int getTotalAmount() {
		return totalAmount;
	}
}

//customerID varchar(10),
//totalBookCount int,
//totalAmount int,