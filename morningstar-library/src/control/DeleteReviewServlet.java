package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ReviewService;

/**
 * Servlet implementation class DeleteReviewServlet
 */
@WebServlet("/DeleteReview")
public class DeleteReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteReviewServlet() {
        super();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String userID = request.getParameter("userID");
		String isbn = request.getParameter("isbn");
		
		ReviewService reviewService = new ReviewService();
		reviewService.deleteReview(userID, isbn);
		
		request.setAttribute("isbn", isbn);
		request.getRequestDispatcher("/BookDetail").forward(request, response);	
	}

}
