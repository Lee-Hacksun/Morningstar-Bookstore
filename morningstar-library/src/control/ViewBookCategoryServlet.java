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
import service.BookService;

/**
 * Servlet implementation class ViewBookCategoryServlet
 */
@WebServlet("/ViewBookCategory")
public class ViewBookCategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewBookCategoryServlet() {
        super();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Vector<Book> selectedBooks = new Vector<Book>();
		String category = request.getParameter("category");
		
		HttpSession session = request.getSession();
		BookService bookService = (BookService) session.getAttribute("bookService");

		if (bookService == null) {
		    bookService = new BookService();
		    session.setAttribute("bookService", bookService);
		}
		
		Vector<Book> books = bookService.getBooks();
		for(Book book : books) {
			for(String bookCategory : book.getCategory()) {
				if(bookCategory.contains(category)) {
					selectedBooks.add(book);
					break;
				}
			}
		}
		
		request.setAttribute("showmore", false);
		request.setAttribute("books", selectedBooks);
		
		Object isManager = session.getAttribute("isManager");
		if((isManager != null) && ((int)isManager == 1)) {
			request.getRequestDispatcher("/bookpage.jsp").forward(request, response);
			
		} else {
			request.getRequestDispatcher("/mainpage.jsp").forward(request, response);	
		}
	}

}
