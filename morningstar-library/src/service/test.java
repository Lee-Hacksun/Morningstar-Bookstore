package service;

import model.Cart;

public class test {

	public static void main(String[] args) {
		CartService cartService = new CartService();
		Cart cart = cartService.loadCart("hanshin");
		
		System.out.println(cart.toString());

	}

}
