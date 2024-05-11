package model;

public class testmain {

	public static void main(String[] args) {
		String[] isbns = {"123"};
		
		Book book = new Book("432421423", "돈키호테", "세르반테스", "믿음사", "2024-01-13", "이 책은 좋은 책이다", "fsdfsd", 123, 4);
		Cart cart = new Cart("luda", 10, 10000);
		History history = new History(123, "2024-01-01");
		ManagerOrder managerOrder = new ManagerOrder(123, "luda", "2024-01-01", isbns);
		Order order = new Order(123, "luda", "2024-01-01", "안산시 신길동", 20, 20000, isbns);
		Review review = new Review("luda", "123", "이책 너무 재밌어요", 8);
		User user = new User("luda", "luda123", "루다", "안산시 신길동", "luda@home.com", true); 
		
		System.out.println(book.toString());
		System.out.println(cart.toString());
		System.out.println(history.toString());
		System.out.println(managerOrder.toString());
		System.out.println(order.toString());
		System.out.println(user.toString());
	}

}
