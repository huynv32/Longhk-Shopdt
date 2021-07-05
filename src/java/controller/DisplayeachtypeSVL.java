 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAL.DAO;
import Models.Account;
import Models.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author NTD
 */
public class DisplayeachtypeSVL extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        DAO dao = new DAO();
        Cookie[] cookie = request.getCookies();
        ArrayList<Product> lstContain = new ArrayList<>();
        lstContain = (ArrayList<Product>) request.getAttribute("lst");
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

        }

        if (lstContain == null) {

            int type = Integer.parseInt(request.getParameter("type"));

            int pageIndex = 1;
            final int PAGE_SIZE = 6;

            String raw_page = request.getParameter("pageIndex");
            System.out.println(raw_page);
            if (raw_page != null) {
                pageIndex = Integer.parseInt(raw_page);
            }

            if (type == 0) {
                List<Product> listProduct1 = dao.getAllPagging(pageIndex, PAGE_SIZE);
                int totalPage1 = dao.countPage(PAGE_SIZE);

                request.setAttribute("totalPage", totalPage1);
                request.setAttribute("pageIndex", pageIndex);
                request.setAttribute("lst", listProduct1);
            } else if (type == -1) {
                request.setAttribute("lst", dao.latestProduct());
            } else {
                List<Product> listProduct = dao.getEachTypeProduct2(type,pageIndex, PAGE_SIZE);
                int totalPage = dao.countPageType(PAGE_SIZE, type);

                request.setAttribute("totalPage", totalPage);
                request.setAttribute("pageIndex", pageIndex);
                request.setAttribute("lst", listProduct);
            }
            request.setAttribute("type", type);
        } else {
            request.setAttribute("lst", lstContain);
        }
        request.setAttribute("ac", ac);

        request.getRequestDispatcher("AeShopVN.jsp").forward(request, response);

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
        processRequest(request, response);
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
        processRequest(request, response);
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
