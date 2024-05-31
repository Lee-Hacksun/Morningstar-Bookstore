package model;

import java.util.Arrays;
import java.util.StringJoiner;

public class ManagerOrder {

	private int managerOrderID;
	private String userID;
	private String orderDate;
	private String isbn;
	private int count;
	
	public ManagerOrder(int managerOrderID, String userID, String orderDate, String isbn, int count) {
		this.managerOrderID = managerOrderID;
		this.userID = userID;
		this.orderDate = orderDate;
		this.isbn = isbn;
		this.count = count;
	}
	
	public String toString() {		
		return new StringJoiner(", ", "ManagerOrderID: ", "")
				.add(Integer.toString(managerOrderID))
				.add("userID: " + userID)
				.add("OrderDate: " + orderDate)
				.add("ISBNS: " + isbn)
				.add("BookCount: " + count)
				.toString();
	}
	
	public int getManagerOrderID() {
		return managerOrderID;
	}
	
	public String getuserID() {
		return userID;
	}
	
	public String getOrderDate() {
		return orderDate;
	}
	
	public String getIsbns() {
		return isbn;
	}
	
	public int getCount() {
		return count;
	}
}