package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.UserService;
import model.User;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
    }

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String userID = request.getParameter("userID");
        String userPW = request.getParameter("userPW");

        UserService userService = new UserService();
        boolean isSuccess = userService.loginUser(userID, userPW);

        if (isSuccess) {
            HttpSession session = request.getSession();
            User user = userService.getUserByID(userID);  // getUserByID 메서드 사용
            session.setAttribute("userID", user.getUserID());
            session.setAttribute("isManager", user.isManager());
            response.sendRedirect("userlist.jsp");  // 적절한 페이지로 리디렉션
        } else {
            request.setAttribute("errorMessage", "Invalid login credentials");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
