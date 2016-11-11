/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author greatwmc
 */
@WebServlet(urlPatterns = {"/input"})
public class InputControl extends HttpServlet {

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
        
        String s = request.getParameter("textin");
        s = s.replace("&",   "&#38");
        s = s.replace("<",   "&lt;");
        s = s.replace(">",   "&gt;");
        s = s.replace("\\(", "&#40");
        s = s.replace("\\)", "&#41");
        s = s.replace("|",   "&#124");
        
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        out.println("<html><head><title>Login</title></head><body><h1>You Entered This </h1><p>" + s + "</p></body</html>");
    }

}
