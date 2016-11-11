/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author greatwmc
 */
@WebServlet(name = "LoginControl", urlPatterns = {"/login"})
public class LoginControl extends HttpServlet {

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession ses =  request.getSession(true);
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");

        String userid = request.getParameter("userid");
        String password = request.getParameter("password");
        
        Boolean userValid = Pattern.matches("^[a-z][a-z0-9]*$", userid);
        Boolean passValid = Pattern.matches("^[a-z0-9!@#$*]*$", password);

        out.println("<html><head><title>Login</title></head><body>");

        if (!userValid) {
            ses.setAttribute("loggedIn", false);
            //out.println("<h1>UserID is not valid</h1>");
            //out.println("<br><a href=https://" + request.getServerName() + ":8443" + request.getContextPath() + "/login.jsp>try again</a>");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }

        if (!passValid) {
            ses.setAttribute("loggedIn", false);
            //out.println("<h1>password is not valid</h1>");
            //out.println("<br><a href=https://" + request.getServerName() + ":8443" + request.getContextPath() + "/login.jsp>try again</a>");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }

        // document body     
        out.println("</body></html>");
        
        if(passValid && userValid)
        {
            String correctHash = "e99a18c428cb38d5f260853678922e03";
            if(userid.equals("smithlab") && hashPassword(password).equals(correctHash))
            {
            ses.setAttribute("loggedIn", true);
            request.getRequestDispatcher("/userhome.jsp").forward(request, response);
            }
            else
            {
                request.getRequestDispatcher("/login.jsp").forward(request, response);
            }
        }
    }
    
    private static String hashPassword(String password) {
       String digest;
       try {
           MessageDigest md = MessageDigest.getInstance("md5");
           md.reset();
           byte[] bytes = md.digest(password.getBytes());
           digest = new BigInteger(1, bytes).toString(16);
       }
       catch (NoSuchAlgorithmException nsae) {
           nsae.printStackTrace();
           digest = null;
       }
       return digest;
  }
}
