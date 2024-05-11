package model;

import java.util.Arrays;
import java.util.StringJoiner;

public class Order {

	private int orderID;
	private String customerID;
	private String orderDate;
	private String deliveryAddress;
	private int totalAmount;
	private int totalBookCount;
	private String[] isbns;
	
	public Order(int orderID, String customerID, String orderDate, String deliveryAddress, int totalAmount, int totalBookCount, String[] isbns) {
		this.orderID = orderID;
		this.customerID = customerID;
		this.orderDate = orderDate;
		this.deliveryAddress = deliveryAddress;
		this.totalAmount = totalAmount;
		this.totalBookCount = totalBookCount;
		this.isbns = Arrays.copyOf(isbns, isbns.length);
	}
	
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append(isbns[0]);
		
		for(int i = 1; i < isbns.length; i++) {
			sb.append(", " + isbns[i]);
		}
		
		return new StringJoiner(", ", "OrderID: ", "")
				.add(Integer.toString(orderID))
				.add("CustomerID: " + customerID)
				.add("OrderDate: " + orderDate)
				.add("DeliveryAddress: " + deliveryAddress)
				.add("TotalAmount: " + Integer.toString(totalAmount))
				.add("TotalBookCount: " + Integer.toString(totalBookCount))
				.add("ISBNS: " + sb.toString())
				.toString();
	}
	
	public int getOrdeID() {
		return orderID;
	}
	
	public String getCustomerID() {
		return customerID;
	}
	
	public String getOrderDate() {
		return orderDate;
	}
	
	public String getDeliveryAddress() {
		return deliveryAddress;
	}
	
	public int getTotalAmount() {
		return totalAmount;
	}
	
	public int getTotalBookCount() {
		return totalBookCount;
	}
	
	public String[] getIsbns() {
		return isbns;
	}
}