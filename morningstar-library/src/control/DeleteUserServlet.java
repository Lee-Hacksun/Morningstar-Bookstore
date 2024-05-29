package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.UserService;

/**
 * Servlet implementation class DeleteUserServlet
 */
@WebServlet("/DeleteUser")
public class DeleteUserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteUserServlet() {
        super();
    }

    /**
     * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
     */
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userID = request.getParameter("userID");

        UserService userService = new UserService();
        boolean isSuccess = userService.deleteUser(userID);

        // 성공시 동작 구현, 실패시 동작 구현
        if (isSuccess) {
            response.sendRedirect("userlist.jsp");  // 적절한 페이지로 리디렉션
        } else {
            request.setAttribute("errorMessage", "Failed to delete user");
            request.getRequestDispatcher("userlist.jsp").forward(request, response);
        }
    }
}