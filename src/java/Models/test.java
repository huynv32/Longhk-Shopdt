/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import DAL.DAO;
import org.mindrot.jbcrypt.BCrypt;

/**
 *
 * @author Admin
 */
public class test {
    public static void main(String[] args) {
//        String password = "stackjava.com";
//String hash = BCrypt.hashpw(password, BCrypt.gensalt(12));
//System.out.println("BCrypt hash: " + hash);
          DAO dao = new DAO();
          System.out.println(dao.getPass("xxxx"));
    }
}
