package model;

import java.util.Arrays;
import java.util.StringJoiner;

public class ManagerOrder {

	private int managerOrderID;
	private String customerID;
	private String orderDate;
	private String[] isbns;
	
	public ManagerOrder(int managerOrderID, String customerID, String orderDate, String[] isbns) {
		this.managerOrderID = managerOrderID;
		this.customerID = customerID;
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
				.add("CustomerID: " + customerID)
				.add("OrderDate: " + orderDate)
				.add("ISBNS: " + sb.toString())
				.toString();
	}
	
	public int getManagerOrderID() {
		return managerOrderID;
	}
	
	public String getCustomerID() {
		return customerID;
	}
	
	public String getOrderDate() {
		return orderDate;
	}
	
	public String[] getIsbns() {
		return isbns;
	}
}