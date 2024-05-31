package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.BookService;
import service.InventoryService;
import service.ReviewService;

/**
 * Servlet implementation class BookInfoServlet
 */
@WebServlet("/BookDetail")
public class BookDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookDetailServlet() {
        super();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String userID = (String) session.getAttribute("userID");
		String isbn = request.getParameter("isbn");
		
		BookService bookService = new BookService();
		ReviewService reviewService = new ReviewService();
		reviewService.loadReviews(isbn);
		InventoryService inventoryService = new InventoryService();
		inventoryService.getPrice(isbn);
		
		request.setAttribute("book", bookService.loadBook(isbn));
		request.setAttribute("price", inventoryService.getPrice());
		request.setAttribute("reviews", reviewService.getReviews());
		request.setAttribute("userID", userID);
		request.getRequestDispatcher("/book_detail.jsp").forward(request, response);
	}

}
