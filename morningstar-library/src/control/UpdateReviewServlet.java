package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ReviewService;

/**
 * Servlet implementation class UpdateReviewServlet
 */
@WebServlet("/UpdateReview")
public class UpdateReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateReviewServlet() {
        super();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("UTF-8");
		
		String contents = request.getParameter("editedContent");
		String isbn = request.getParameter("isbn");
		String userID = request.getParameter("userID");
		
		ReviewService reviewService = new ReviewService();
		reviewService.updateReview(userID, isbn, contents);
		
		request.setAttribute("isbn", isbn);
		request.getRequestDispatcher("/BookDetail").forward(request, response);	
	}

}
