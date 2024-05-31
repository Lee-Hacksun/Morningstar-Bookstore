package control;

import java.io.IOException;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Book;
import model.Order;
import service.BookService;
import service.OrderService;
import service.UserService;

/**
 * Servlet implementation class GoMyPageServlet
 */
@WebServlet("/GoMyPage")
public class GoMyPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GoMyPageServlet() {
        super();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userID = (String) session.getAttribute("userID");
		
		OrderService orderService = new OrderService();
		UserService userService = new UserService();
		BookService bookService = new BookService();
		
		orderService.loadOrdersWithUserID(userID);
		Vector<Order> orders = orderService.getOrders();
		Vector<Book> books = new Vector<Book>();
		
		for(Order order : orders) {
			books.add(bookService.loadBook(order.getIsbns().firstElement()));
		}
		
		request.setAttribute("orders", orders);
		request.setAttribute("user", userService.getUser(userID));
		request.setAttribute("books", books);
		request.getRequestDispatcher("/mypage.jsp").forward(request, response);
	}

}
