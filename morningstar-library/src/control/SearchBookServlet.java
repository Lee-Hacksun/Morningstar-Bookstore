package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Book;
import service.BookService;
import service.InventoryService;
import service.ReviewService;

/**
 * Servlet implementation class SearchBookServlet
 */
@WebServlet("/SearchBook")
public class SearchBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchBookServlet() {
        super();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String searchBookName = request.getParameter("searchBookName");
		
		InventoryService inventoryService = new InventoryService();
		
		HttpSession session = request.getSession();
		BookService bookService = (BookService) session.getAttribute("bookService");

		if (bookService == null) {
		    bookService = new BookService();
		    session.setAttribute("bookService", bookService);
		}
		Book findBook = bookService.searchBook(searchBookName);
		
		if(findBook == null) {
			request.setAttribute("books", bookService.getBooks());
			request.getRequestDispatcher("/mainpage.jsp").forward(request, response);
		} else {
			ReviewService reviewService = new ReviewService();
			reviewService.loadReviews(findBook.getIsbn());
			
			request.setAttribute("reviews", reviewService.getReviews());
			request.setAttribute("book", findBook);
			request.setAttribute("price", inventoryService.getPrice(findBook.getIsbn()));
			request.getRequestDispatcher("/book_detail.jsp").forward(request, response);
		}
	}

}
