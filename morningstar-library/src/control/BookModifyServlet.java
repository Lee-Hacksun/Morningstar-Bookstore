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

/**
 * Servlet implementation class BookModifyServlet
 */
@WebServlet("/BookModify")
public class BookModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookModifyServlet() {
        super();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		BookService bookService = (BookService) session.getAttribute("bookService");

		if (bookService == null) {
		    bookService = new BookService();
		    session.setAttribute("bookService", bookService);
		}
		
		String isbn = request.getParameter("isbn");
		String name = request.getParameter("bookname");
        String img = request.getParameter("book_img");
        String author = request.getParameter("bookauthor");
        String publisher = request.getParameter("bookpublisher");
        int price = Integer.parseInt(request.getParameter("bookprice"));
        String detail = request.getParameter("bookdetail");
        
        bookService.modifyBook(isbn, name, img, author, publisher, detail);
        
        InventoryService inventoryService = new InventoryService();
        inventoryService.modifyCost(isbn, price);
        
        response.sendRedirect("admin_index.jsp");
	}

}
