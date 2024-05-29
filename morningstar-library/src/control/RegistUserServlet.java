package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import service.UserService;

/**
 * Servlet implementation class RegistUserServlet
 */
@WebServlet("/RegistUser")
public class RegistUserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public RegistUserServlet() {
        super();
    }

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String userID = request.getParameter("userID");
        String userPW = request.getParameter("userPW");
        String name = request.getParameter("name");
        String deliveryAddress = request.getParameter("deliveryAddress");
        String eMailAddress = request.getParameter("eMailAddress");

        UserService registerService = new UserService();
        boolean isRegistered = registerService.addUser(new User(
                userID,
                userPW,
                name,
                deliveryAddress,
                eMailAddress,
                false));

        if (isRegistered) {
            response.sendRedirect("login.jsp");
        } else {
            request.setAttribute("errorMessage", "회원가입에 실패했습니다. 다시 시도해주세요.");
            request.getRequestDispatcher("create_acc.jsp").forward(request, response);
        }
    }
}

