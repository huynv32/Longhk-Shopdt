/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAL.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mindrot.jbcrypt.BCrypt;

public class RegisterSVL extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegisterSVL</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("</body>");
            out.println("</html>");
              
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

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
        DAO dao = new DAO();

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        String repass = request.getParameter("repass");
        if (!name.trim().isEmpty() && !email.trim().isEmpty()  && !pass.trim().isEmpty() && !repass.trim().isEmpty()) {
            if (pass.equals(repass)) {
                String mahoa =  BCrypt.hashpw(pass, BCrypt.gensalt(12));
                if (dao.register(name, email, mahoa) == 0) {
                    request.setAttribute("notifi", "Register Fail! Duplicate Email.");
                    request.getRequestDispatcher("Register.jsp").forward(request, response);
                } else {
                    Cookie ac_email = new Cookie("email", email);
                    Cookie ac_pass = new Cookie("pass", mahoa);

                    ac_email.setMaxAge(15 * 3600);
                    ac_pass.setMaxAge(15 * 3600);
                    response.addCookie(ac_email);
                    response.addCookie(ac_pass);
                    response.sendRedirect("LoginSVL");
                }
            } else {
                request.setAttribute("notifi", "Register Fail!");
                request.getRequestDispatcher("Register.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("notifi", "Register Fail! ");
            request.getRequestDispatcher("Register.jsp").forward(request, response);
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
