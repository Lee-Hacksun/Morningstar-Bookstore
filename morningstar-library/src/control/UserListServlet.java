package control;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import service.UserService;

@WebServlet("/userlist")
public class UserListServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public UserListServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserService userService = new UserService();
        List<User> userList = userService.getAllUsers();
        request.setAttribute("userList", userList);
        request.getRequestDispatcher("/WEB-INF/userlist.jsp").forward(request, response);
    }
}

