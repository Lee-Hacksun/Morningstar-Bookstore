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

        for (int i = 1; i < isbns.length; i++) {
            sb.append(", ").append(isbns[i]);
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

    public String[] getIsbns() {
        return Arrays.copyOf(isbns, isbns.length);
    }
}