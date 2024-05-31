package model;

import java.util.StringJoiner;
import java.util.Vector;

public class Order {

    private int orderID;
    private String userID;
    private String orderDate;
    private String deliveryAddress;
    private int totalAmount;
    private int totalBookCount;
    private Vector<String> isbns;
    private int status;

    public Order(int orderID, String userID, String orderDate, String deliveryAddress, int totalAmount, int totalBookCount, Vector<String> isbns, int status) {
        this.orderID = orderID;
        this.userID = userID;
        this.orderDate = orderDate;
        this.deliveryAddress = deliveryAddress;
        this.totalAmount = totalAmount;
        this.totalBookCount = totalBookCount;
        this.isbns = new Vector<>(isbns);
        this.status = status;
    }

    public String toString() {

        return new StringJoiner(", ", "OrderID: ", "")
                .add(Integer.toString(orderID))
                .add("UserID: " + userID)
                .add("OrderDate: " + orderDate)
                .add("DeliveryAddress: " + deliveryAddress)
                .add("TotalAmount: " + Integer.toString(totalAmount))
                .add("TotalBookCount: " + Integer.toString(totalBookCount))
                .add("ISBNS: " + String.join(", ", isbns))
                .add("Status: " + status)
                .toString();
    }

    public int getOrderID() {
        return orderID;
    }

    public String getUserID() {
        return userID;
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

    public Vector<String> getIsbns() {
        return isbns;
    }
    
    public int getStatus() {
    	return status;
    }
}