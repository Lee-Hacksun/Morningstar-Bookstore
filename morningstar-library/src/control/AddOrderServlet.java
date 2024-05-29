package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.CartService;
import service.OrderService;
import service.UserService;

/**
 * Servlet implementation class AddOrderServlet
 */
@WebServlet("/AddOrder")
public class AddOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddOrderServlet() {
        super();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		UserService userService = new UserService();
		OrderService orderService = new OrderService();
		CartService cartService = new CartService();
		
		String userID = (String) session.getAttribute("userID");
		
		orderService.addOrder(cartService.getCart(userID), userService.getUser(userID).getDeliveryAddress(), 1);
	}

}
