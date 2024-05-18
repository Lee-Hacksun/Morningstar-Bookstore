package model;

import java.util.StringJoiner;

public class User {

	private String userID;
	private String userPW;
	private String name;
	private String deliveryAddress;
	private String eMailAddress;
	private Boolean managerMode;
	
	public User(String userID, String customerPW, String name, String deliveryAddress, String eMailAddress, Boolean managerMode) {
		this.userID = userID;
		this.userPW = customerPW;
		this.name = name;
		this.deliveryAddress = deliveryAddress;
		this.eMailAddress = eMailAddress;
		this.managerMode = managerMode;
	}
	
	public String toString() {
		String mode = managerMode ? "관리자" : "고객";
		
		return new StringJoiner(", ", "userID: ", "")
				.add(userID)
				.add("CustomerPW: " + userPW)
				.add("Name: " + name)
				.add("DeliveryAddress: " + deliveryAddress)
				.add("E-MailAddress: "+ eMailAddress)
				.add("ManagerMode: " + mode)
				.toString();
	}
	
	
	
	/*getter, setter 메소드*/
	public String getUserID() {
        return userID;
    }
    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getUserPW() {
        return userPW;
    }
    public void setUserPW(String userPW) {
        this.userPW = userPW;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public String getDeliveryAddress() {
        return deliveryAddress;
    }
    public void setDeliveryAddress(String deliveryAddress) {
        this.deliveryAddress = deliveryAddress;
    }

    public String getEmailAddress() {
        return eMailAddress;
    }
    public void setEmailAddress(String emailAddress) {
        this.eMailAddress = emailAddress;
    }

    public Boolean getManagerMode() {
        return managerMode;
    }
    public void setManagerMode(Boolean managerMode) {
        this.managerMode = managerMode;
    }
}