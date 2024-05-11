package model;

import java.util.StringJoiner;

public class History {

	private int orderID;
	private String orderDate;
	
	public History(int orderID, String orderDate) {
		this.orderID = orderID;
		this.orderDate = orderDate;
	}
	
	public String toString() {
		return new StringJoiner(", ", "OrderID: ", "")
				.add(Integer.toBinaryString(orderID))
				.add("OrderDate: " + orderDate)
				.toString();
	}
	
	public int getOrderID() {
		return orderID;
		}
	
	public String getOrderDate() {
		return orderDate;
	}
}