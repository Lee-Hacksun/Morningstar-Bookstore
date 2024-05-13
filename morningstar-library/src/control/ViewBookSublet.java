 // Book 배열을 응답으로 보내는 sublet

package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import constant.WebConfig;
import service.BookService;

/**
 * Servlet implementation class ViewBookSublet
 */
@WebServlet("/ViewBook")
public class ViewBookSublet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewBookSublet() {
        super();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BookService bookService = new BookService();
		bookService.loadBook(WebConfig.MAIN_PAGE_BOOK_COUNT);
		
		request.setAttribute("books", bookService.getBooks());
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}

}
