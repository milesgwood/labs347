package servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

    public void doPost(HttpServletRequest request,
            HttpServletResponse response) throws IOException, ServletException{

        String userid = request.getParameter("userid");
        String password = request.getParameter("password");

        if (userid.equals("smithab") && password.equals("lab6")) {
            HttpSession session = request.getSession(true);
            session.setAttribute("loggedIn", true);
            session.setAttribute("userid", userid);
            //response.sendRedirect("index.jsp");
            //Using the above you get lab6/index.jsp
            //Using the below you just get lab6/index
            String nextPage = "/index.jsp";
            RequestDispatcher dispatcher
                    = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
            
        } else {
            //response.sendRedirect("login.jsp");
            String nextPage = "/login.jsp";
            RequestDispatcher dispatcher
                    = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
                    
        }
    }

}
