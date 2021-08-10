package user;



import admin.UserManager;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/singleUser")
public class SingleUserServlet extends HttpServlet {

    private final UserManager userManager = new UserManager();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));

        User user = userManager.getUserById(id);

        req.setAttribute("user", user);
        req.getRequestDispatcher("/WEB-INF/singleUser.jsp").forward(req, resp);
    }
}
