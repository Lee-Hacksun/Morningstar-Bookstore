package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.UserService;

/**
 * Servlet implementation class LoginServlet
 */
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
            session.setAttribute("userID", userID);
            response.sendRedirect("home.jsp"); // 로그인 성공 시 이동할 페이지
        } else {
            request.setAttribute("errorMessage", "아이디 또는 비밀번호가 잘못되었습니다.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
