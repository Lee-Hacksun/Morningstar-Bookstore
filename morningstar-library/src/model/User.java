package model;

import java.util.StringJoiner;

public class User {

	private String customerID;
	private String customerPW;
	private String name;
	private String deliveryAddress;
	private String eMailAddress;
	private Boolean managerMode;
	
	public User(String customerID, String customerPW, String name, String deliveryAddress, String eMailAddress, Boolean managerMode) {
		this.customerID = customerID;
		this.customerPW = customerPW;
		this.name = name;
		this.deliveryAddress = deliveryAddress;
		this.eMailAddress = eMailAddress;
		this.managerMode = managerMode;
	}
	
	public String toString() {
		String mode = managerMode ? "관리자" : "고객";
		
		return new StringJoiner(", ", "CustomerID: ", "")
				.add(customerID)
				.add("CustomerPW: " + customerPW)
				.add("Name: " + name)
				.add("DeliveryAddress: " + deliveryAddress)
				.add("E-MailAddress: "+ eMailAddress)
				.add("ManagerMode: " + mode)
				.toString();
	}
	
	public String getCustomerID() {
		return customerID;
	}
	
	public String getCustomerPW() {
		return customerPW;
	}
	
	public String getName() {
		return name;
	}
	
	public String getDeliveryAddress() {
		return deliveryAddress;
	}
	
	public String getEMailAddress() {
		return eMailAddress;
	}
	
	public Boolean isManager() {
		return managerMode;
	}
}