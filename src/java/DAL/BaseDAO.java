/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import Models.Product;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import Models.Account;
import Models.Feedback;
import Models.OrderDetails;
import Models.OrderModel;
import Models.Orders;

import Models.ProductDescription;
import java.math.BigDecimal;
import java.util.List;

public abstract class BaseDAO {

    protected Connection connection;

    public BaseDAO() {
        try {
            String user = "sa";
            String pass = "gia1234";
            String url = "jdbc:sqlserver://localhost:1433;databaseName=SE1425_PRJ321";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(BaseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public abstract Account getUser(String email, String password);

    public abstract int register(String username, String email, String password);

    public abstract ArrayList getAllProduct();

    public abstract List<Product> getAllPagging(int pageIndex, int pageSize);

    public abstract ArrayList latestProduct();

//    public abstract ArrayList getNewProduct();

    public abstract ArrayList getAllAccount();

    public abstract ArrayList getEachTypeProduct(int type);

    public abstract ArrayList getEachTypeProduct2(int type, int pageIndex, int pageSize);

    public abstract Product getoneProduct(int id);

    public abstract void EditInformationUser(String phone, String username, String email);

    public abstract ProductDescription GetProductDesCrip(int id);

    public abstract void InsertOrder(String Email, String receiverName, int phone, String address, Date orderdate, String status, String note, BigDecimal totalmoney);

    public abstract void InsertOrderDetails(int ProductID, int quantity, BigDecimal amount, String UrlPRD);

    public abstract void UpdateStatusOrder(int OrderID, String status);

    public abstract ArrayList<OrderModel> getOrderUser(String email);

    public abstract void InsertFeedback(String Email, String name, String phone, String title, String content);

    public abstract void InsertFeedbackAProduct(String Email, String name, String phone, String title, String content, int ProductID);

    public abstract ArrayList<Product> SortProduct(int categoryID, String typeSort);

    public abstract ArrayList<Feedback> getFeedback(String typeFB);

    public abstract ArrayList<OrderModel> getAllOrder();

    public abstract void DeleteUser(String Email);
    
    public abstract void ChangeTypeUser(String Email, int authority);
    
    public abstract ArrayList<OrderDetails> getAllordersDetails();
    
    public abstract void UpdateProductOrder(int productID, int newUnitsOrder);
    
    public abstract void UpdateProduct(Product p, ProductDescription pdes);
    
    public abstract void DeleteProduct(int id);
    
    public abstract void InsertProduct(Product p, ProductDescription prdes);
}
