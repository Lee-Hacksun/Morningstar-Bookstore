package model;

import java.util.Arrays;
import java.util.StringJoiner;

public class ManagerOrder {

	private int managerOrderID;
	private String userID;
	private String orderDate;
	private String[] isbns;
	
	public ManagerOrder(int managerOrderID, String userID, String orderDate, String[] isbns) {
		this.managerOrderID = managerOrderID;
		this.userID = userID;
		this.orderDate = orderDate;
		this.isbns = Arrays.copyOf(isbns, isbns.length);
	}
	
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append(isbns[0]);
		
		for(int i = 1; i < isbns.length; i++) {
			sb.append(", " + isbns[i]);
		}
		
		return new StringJoiner(", ", "ManagerOrderID: ", "")
				.add(Integer.toString(managerOrderID))
				.add("userID: " + userID)
				.add("OrderDate: " + orderDate)
				.add("ISBNS: " + sb.toString())
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
	
	public String[] getIsbns() {
		return isbns;
	}
}