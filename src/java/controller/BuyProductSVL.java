/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAL.DAO;
import Models.Account;
import Models.Product;
import Models.QuantityProductAdd;
import com.sun.imageio.plugins.common.BogusColorSpace;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author NTD
 */
public class BuyProductSVL extends HttpServlet {

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
            out.println("<title>Servlet BuyProductSVL</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BuyProductSVL at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        String productID = request.getParameter("productid");
        String operator = request.getParameter("operator");
        DAO dao = new DAO();
        ArrayList<Product> lstProductincard = null;
        ArrayList<QuantityProductAdd> lstProductQuantity = null;
        PrintWriter out = response.getWriter();
        boolean checkOrder = false;
//        System.out.println("kkk"+lstProductincard);
        if (productID != null) {
            BigDecimal moneyTotal = new BigDecimal(0);
            lstProductincard = (ArrayList<Product>) session.getAttribute("lstProductincard");
            lstProductQuantity = (ArrayList<QuantityProductAdd>) session.getAttribute("lstProductQuantity");
            if (lstProductQuantity == null || lstProductincard == null) {
                lstProductQuantity = new ArrayList<>();
                lstProductincard = new ArrayList<>();
//                System.out.println("xxxx"+lstProductincard);
            }
//            System.out.println(lstProductincard);
            int productPare = Integer.parseInt(productID);
            boolean checkContain = false;
            
            
            for (int i = 0; i < lstProductQuantity.size(); i++) {
                if (lstProductQuantity.get(i).getProductID().equals(productID)) {
                    int newQuantity = lstProductQuantity.get(i).getQuantity();
                    if (operator != null && operator.equals("sub")) {
                        if (newQuantity != 1) {
                            newQuantity -= 1;
                        }
                    } else {
                        if (lstProductincard.get(i).getUnitsinStock() - lstProductincard.get(i).getUnitsOnOrder() > newQuantity) {
                            newQuantity += 1;
                        }

                    }
                    BigDecimal newAmout = dao.getoneProduct(productPare).getUnitPrice().multiply(new BigDecimal(newQuantity));
                    lstProductQuantity.get(i).setAmount(newAmout);
                    lstProductQuantity.get(i).setQuantity(newQuantity);
                    checkContain = true;
                }
                moneyTotal = moneyTotal.add(lstProductQuantity.get(i).getAmount());
            }
            if (checkContain == false) {
                Product p = dao.getoneProduct(productPare);
                if (p.getUnitsOnOrder() < p.getUnitsinStock()) {
                    lstProductincard.add(p);
                    lstProductQuantity.add(new QuantityProductAdd(request.getParameter("productid"), 1, p.getUnitPrice()));
                    moneyTotal = moneyTotal.add(p.getUnitPrice());
                } else {
                    checkOrder = true;
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('San Pham Da Het! Moi Quy Khach Quay Lai Sau');");
                    out.println("location='LoginSVL';");
                    out.println("</script>");
                }
            }
            session.setAttribute("lstProductincard", lstProductincard);
            session.setAttribute("lstProductQuantity", lstProductQuantity);
            session.setAttribute("money", moneyTotal);
            session.setAttribute("card", lstProductQuantity.size());
        }

        Cookie[] cookies = request.getCookies();
        String email = "";
        String pass = "";
        String username = "";
        if (cookies != null) {
            for (Cookie cooky : cookies) {
                if (cooky.getName().equals("email")) {
                    email = cooky.getValue();
                }
                if (cooky.getName().equals("pass")) {
                    pass = cooky.getValue();
                }
            }
            Account ac = dao.getUser(email, pass);
            if (ac != null) {
                request.setAttribute("ac", ac);
                if (checkOrder == false) {
                    request.getRequestDispatcher("BuyProduct.jsp").forward(request, response);
                }
            } else {
                if (checkOrder == false) {
                    response.sendRedirect("Login.jsp");
                }
            }
        }
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
        //Điền thông tĩn xác nhận mua
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        String email = request.getParameter("email");
        String reciever = request.getParameter("reciever");
        int  phone = Integer.parseInt(request.getParameter("phone"));
        String address = request.getParameter("address");
        String note = request.getParameter("note");
        BigDecimal money = new BigDecimal(String.valueOf(session.getAttribute("money")));
        Date date = new Date();
        SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");
        java.sql.Date datesql = java.sql.Date.valueOf(fm.format(date));
        DAO dao = new DAO();
        
        dao.InsertOrder(email, reciever, phone, address, datesql, "chờ xử lý", note, money);
        ArrayList<QuantityProductAdd> lstProductQuantity = (ArrayList<QuantityProductAdd>)session.getAttribute("lstProductQuantity");
        for(QuantityProductAdd p : lstProductQuantity){
            int productID = Integer.parseInt(p.getProductID());
            Product q = dao.getoneProduct(productID);
            dao.InsertOrderDetails(productID, p.getQuantity(), p.getAmount(), q.getUrl());
        }
        
        Enumeration<String> attributes = request.getSession().getAttributeNames();
        while(attributes.hasMoreElements()){
            String attribute = attributes.nextElement();
            session.removeAttribute(attribute);
        }
        response.sendRedirect("LoginSVL");
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
