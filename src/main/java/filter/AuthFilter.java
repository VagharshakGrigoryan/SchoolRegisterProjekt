package filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(urlPatterns = {"/addSchool","/addUser",
        "/WEB-INF/singleUser","/home","/WEB-INF/UsHome"})
public class AuthFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        String requestURI = req.getRequestURI();
        Object user = req.getSession().getAttribute("user");

        if ((requestURI.equals("/") || requestURI.equals("/index.jsp")) && user!=null){
            resp.sendRedirect("/");
        }else {
            if (user == null) {
                resp.sendRedirect("/UsHome");
            }else {
                chain.doFilter(request, response);
            }
        }
    }

    @Override
    public void destroy() {

    }
}
