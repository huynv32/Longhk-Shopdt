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
import javax.servlet.http.HttpSession;
import Models.Account;
import Models.Product;
import java.util.ArrayList;
import java.util.List;
import org.mindrot.jbcrypt.BCrypt;

public class LoginSVL extends HttpServlet {

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

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Check contain account
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        Cookie[] cookie = request.getCookies();
        DAO dao = new DAO();
        String email = null;
        String pass = null;
        Account ac = null;
        if (cookie != null) {
            for (Cookie coo : cookie) {
                if (coo.getName().equals("email")) {
                    email = coo.getValue();
                }
                if (coo.getName().equals("pass")) {
                    pass = coo.getValue();
                }
            }
            ac = dao.getUser(email, pass);
            if (ac != null) {
                if (ac.getAuthority() == 1) {
                    request.setAttribute("email", email);
                    request.getRequestDispatcher("PageAdminSVL").forward(request, response);
                }
            }
        }
        int pageIndex = 1;
        final int PAGE_SIZE = 6;
        int type = 0;
        String raw_page = request.getParameter("pageIndex");
        if (raw_page != null) {
            pageIndex = Integer.parseInt(raw_page);
        }
        List<Product> listProduct = dao.getAllPagging(pageIndex, PAGE_SIZE);
        int totalPage = dao.countPage(PAGE_SIZE);

        request.setAttribute("totalPage", totalPage);
        request.setAttribute("pageIndex", pageIndex);
        request.setAttribute("lst", listProduct);
        request.setAttribute("ac", ac);
        request.setAttribute("type", type);
        request.getRequestDispatcher("AeShopVN.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Xử lý form login
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String email = request.getParameter("email");
        String pass = request.getParameter("pass");

        DAO dao = new DAO();
        if (dao.getPass(email) != "") {
            boolean valuate = BCrypt.checkpw(pass, dao.getPass(email));
            if (valuate == true) {
                Account ac = dao.getUser(email, dao.getPass(email));
                if (ac != null) {
                    Cookie ac_email = new Cookie("email", email);
                    Cookie ac_pass = new Cookie("pass", dao.getPass(email));
                    ac_email.setMaxAge(15 * 3600);
                    ac_pass.setMaxAge(15 * 3600);
                    response.addCookie(ac_email);
                    response.addCookie(ac_pass);
                    if (ac.getAuthority() == 1) {

                        request.setAttribute("email", email);
                        request.getRequestDispatcher("PageAdminSVL").forward(request, response);
                    }
                    int pageIndex = 1;
                    final int PAGE_SIZE = 6;
                    int type = 0;
                    String raw_page = request.getParameter("pageIndex");
                    if (raw_page != null) {
                        pageIndex = Integer.parseInt(raw_page);
                    }
                    List<Product> listProduct = dao.getAllPagging(pageIndex, PAGE_SIZE);
                    int totalPage = dao.countPage(PAGE_SIZE);

                    request.setAttribute("totalPage", totalPage);
                    request.setAttribute("pageIndex", pageIndex);
                    request.setAttribute("lst", listProduct);
                    request.setAttribute("ac", ac);
                    request.setAttribute("type", type);
                    request.getRequestDispatcher("AeShopVN.jsp").forward(request, response);

                }
            }
        }

        request.setAttribute("notifi", "Username or Password incorrect.");
        request.getRequestDispatcher("Login.jsp").forward(request, response);
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
//  public static void main(String[] args) {
//        LoginSVL lg = new LoginSVL();
//        DAO ac = new DAO();
//        ArrayList<Product> lst = ac.getAllProduct();
//        for (Product product : lst) {
//            System.out.println(""+lst.get(0).getProductName());
//        }
//    }
}
