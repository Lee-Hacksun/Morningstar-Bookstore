package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import constant.WebConfig;
import service.BookService;

/**
 * Servlet implementation class MoreBookServlet
 */
@WebServlet("/MoreBook")
public class MoreBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MoreBookServlet() {
        super();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		BookService bookService = (BookService) session.getAttribute("bookService");

		if (bookService == null) {
		    bookService = new BookService();
		    session.setAttribute("bookService", bookService);
		}
		    bookService.loadBooks(WebConfig.MAIN_PAGE_BOOK_COUNT);
		    
		    request.setAttribute("books", bookService.getBooks());
			request.getRequestDispatcher("/mainpage.jsp").forward(request, response);
	}

}
