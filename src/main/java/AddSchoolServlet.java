
import admin.SchoolManager;
import model.School;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

@WebServlet(urlPatterns = "/addSchool")

public class AddSchoolServlet extends HttpServlet {

    private final SchoolManager schoolManager = new SchoolManager();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/addSchool.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name= req.getParameter("name");
        String classes = req.getParameter("classes");
        String flow = req.getParameter("flow");



        School school = School.builder()
                .name(name)
                .classes(classes)
                .flows(flow)
                .register(new Date())
                .build();

        schoolManager.addSchool(school);

        req.getSession().setAttribute("msg", "school was added");
        resp.sendRedirect("/home.jsp");
    }
}



