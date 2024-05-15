package service;

import model.Cart;

public class test {

	public static void main(String[] args) {
		CartService cartService = new CartService();
		boolean s = cartService.addItem("com", "9788971904398", 5);
		
		System.out.println("add Item: " + s);

	}

}
