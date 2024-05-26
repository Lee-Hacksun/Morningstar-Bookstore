package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.CartService;

/**
 * Servlet implementation class RemoveBookCart
 */
@WebServlet("/RemoveBookCart")
public class RemoveBookCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemoveBookCartServlet() {
        super();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userID = request.getParameter("userID");
		String isbn = request.getParameter("isbn");
		
		CartService cartService = new CartService();
		cartService.removeBook(userID, isbn);
	}

}
