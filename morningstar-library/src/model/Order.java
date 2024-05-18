package model;

import java.util.Arrays;
import java.util.StringJoiner;

public class Order {

	private int orderID;
	private String userID;
	private String orderDate;
	private String deliveryAddress;
	private int totalAmount;
	private int totalBookCount;
	private String[] isbns;
	
	public Order(int orderID, String userID, String orderDate, String deliveryAddress, int totalAmount, int totalBookCount, String[] isbns) {
		this.orderID = orderID;
		this.userID = userID;
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
				.add("userID: " + userID)
				.add("OrderDate: " + orderDate)
				.add("DeliveryAddress: " + deliveryAddress)
				.add("TotalAmount: " + Integer.toString(totalAmount))
				.add("TotalBookCount: " + Integer.toString(totalBookCount))
				.add("ISBNS: " + sb.toString())
				.toString();
	}
	
	
	/*getter, setter 메소드*/
	public int getOrdeID() {
		return orderID;
	}
	public void setOrdeID(int orderID) {
	    this.orderID = orderID;
	}
	
	public String getuserID() {
		return userID;
	}
	public void setUserID(String userID) {
	    this.userID = userID;
	}
	
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
	    this.orderDate = orderDate;
	}
	
	public String getDeliveryAddress() {
		return deliveryAddress;
	}
	public void setDeliveryAddress(String deliveryAddress) {
	    this.deliveryAddress = deliveryAddress;
	}

	public int getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(int totalAmount) {
	    this.totalAmount = totalAmount;
	}
	
	public int getTotalBookCount() {
		return totalBookCount;
	}
	public void setTotalBookCount(int totalBookCount) {
	    this.totalBookCount = totalBookCount;
	}
	
	public String[] getIsbns() {
		return isbns;
	}
	public void setIsbns(String[] isbns) {
	    this.isbns = isbns;
	}
}