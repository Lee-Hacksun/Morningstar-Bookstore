package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Cart;
import service.CartService;

/**
 * Servlet implementation class GoCartServlet
 */
@WebServlet("/GoCart")
public class GoCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GoCartServlet() {
        super();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		String userID = (String) session.getAttribute("userID");
		
		CartService cartService = new CartService();
		Cart cart = cartService.getCart(userID);
		
		if(cart.getTotalBookCount() == 0) {
			request.getRequestDispatcher("/shoppingcart_empty.jsp").forward(request, response);
		} else {
			request.setAttribute("cart", cart);
			request.getRequestDispatcher("/shoppingcart.jsp").forward(request, response);
		}
		
		
	}

}
