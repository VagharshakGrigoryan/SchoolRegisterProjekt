import admin.UserManager;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.util.Date;

@WebServlet(urlPatterns = "/register")
@MultipartConfig(
        fileSizeThreshold   = 1024 * 1024,  // 1 MB
        maxFileSize         = 1024 * 1024 * 10, // 10 MB
        maxRequestSize      = 1024 * 1024 * 15 // 15 MB
)
public class Register extends HttpServlet {

    private static final String UPLOAD_DIR = "D:\\java projekt\\fin\\web\\pic";

    UserManager userManager = new UserManager();

    @Override
    protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Part filePart = req.getPart("picture");
        String fileName = filePart.getSubmittedFileName();
        String picUrl = System.currentTimeMillis() + "_" + fileName;
        filePart.write(UPLOAD_DIR + picUrl);

        String name = req.getParameter("name");
        String surname = req.getParameter("surname");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String region = req.getParameter("region");
        String gender = req.getParameter("gender");

        User user = User.builder()
                .name(name)
                .surname(surname)
                .email(email)
                .password(password)
                .region(region)
                .gender(gender)
                .birthday(new Date())
                .picUrl(picUrl)
                .build();
        userManager.addUser(user);

        req.setAttribute("msg", " Yo have registered successfully !!! you can login now");
        req.getRequestDispatcher("/login.jsp").forward(req, resp);
    }
}
