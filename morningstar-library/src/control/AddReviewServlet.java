package control;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Review;
import service.BookService;
import service.InventoryService;
import service.OrderService;
import service.ReviewService;

/**
 * Servlet implementation class AddReviewServlet
 */
@WebServlet("/AddReview")
public class AddReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddReviewServlet() {
        super();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		
		String userID = (String) session.getAttribute("userID");		
		String isbn = request.getParameter("isbn");
		String contents = request.getParameter("comment");
		int rating = Integer.parseInt(request.getParameter("rating"));
		
		OrderService orderService = new OrderService();
		
		if(orderService.isReviewable(userID, isbn)) {
			ReviewService reviewService = new ReviewService();
			reviewService.addReview(new Review(userID
					, isbn
					, contents
					, rating
					, LocalDate.now().toString()));
		}
		
		BookService bookService = new BookService();
		
		ReviewService reviewService = new ReviewService();		
		reviewService.loadReviews(isbn);
		
		InventoryService inventoryService = new InventoryService();
		inventoryService.getPrice(isbn);
				
		request.setAttribute("reviews", reviewService.getReviews());
		request.setAttribute("userID", userID);
		request.setAttribute("isbn", isbn);
		request.setAttribute("book", bookService.loadBook(isbn));
		request.setAttribute("price", inventoryService.getPrice());
		request.getRequestDispatcher("/BookDetail").forward(request, response);	
	}

}
