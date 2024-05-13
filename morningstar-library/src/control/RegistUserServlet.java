package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import service.RegsiterService;

/**
 * Servlet implementation class RegistUser
 */
@WebServlet("/RegistUser")
public class RegistUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistUserServlet() {
        super();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
    
    //public User(String userID, String customerPW, String name, String deliveryAddress, String eMailAddress, Boolean managerMode) {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String userID = request.getParameter("userID");
		String userPW = request.getParameter("userPW");
		String name = request.getParameter("name");
		String deliveryAddress = request.getParameter("deliveryAddress");
		String eMailAddress = request.getParameter("eMailAddress");
		
		RegsiterService registerService = new RegsiterService();
		registerService.addUser(new User(
				userID
				, userPW
				, name
				, deliveryAddress
				, eMailAddress
				, false));
	}

}
