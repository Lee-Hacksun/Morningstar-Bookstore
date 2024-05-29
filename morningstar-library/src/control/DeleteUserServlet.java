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
@WebServlet("/deleteUser")
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

        if (isSuccess) {
            response.sendRedirect("userlist");
        } else {
            request.setAttribute("errorMessage", "사용자 삭제에 실패했습니다.");
            request.getRequestDispatcher("/WEB-INF/userlist.jsp").forward(request, response);
        }
    }
}
