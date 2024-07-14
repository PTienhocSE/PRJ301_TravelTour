/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import dal.DBContext;
import model.Account;
import model.Tour;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AccountDAO {
       Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Account> getAllAccount() {
        List<Account> tours = new ArrayList<>();
        String query = "select * from Account";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account account = new Account();
                account.setUserID(rs.getInt("id"));
                account.setFirstName(rs.getString("firstName"));
                account.setLastName(rs.getString("lastName"));
                account.setEmail(rs.getString("email"));
                account.setUsername(rs.getString("username"));
                account.setPassword(rs.getString("password"));
                account.setPhone(rs.getString("phone"));
                account.setIsUser(rs.getInt("isUser"));
                account.setIsAdmin(rs.getInt("isAdmin"));
                
                tours.add(account);
            }

        } catch (Exception e) {
            System.out.println("Error retrieving products: " + e.getMessage());
        }

        return tours;
    }
    public void addAccount(String firstName, String lastName, String email, String username, String password, String phone, String isUser, String isAdmin) {
        String query = "INSERT INTO [dbo].[Account]\n" +
"           ([firstName]\n" +
"           ,[lastName]\n" +
"           ,[email]\n" +
"           ,[username]\n" +
"           ,[password]\n" +
"           ,[phone]\n" +
"           ,[isUser]\n" +
"           ,[isAdmin])" +
"     VALUES(?,?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
              ps.setString(1, firstName);
            ps.setString(2, lastName);
            ps.setString(3, email);
            ps.setString(4, username);
            ps.setString(5, password);
            ps.setString(6, phone);
            ps.setString(7, isUser);
            ps.setString(8, isAdmin);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
public void updateAccout(String userID,String firstName, String lastName, String email, String username, String password, String phone, String isUser, String isAdmin) {
            String query = "UPDATE [dbo].[Account]\n" +
"   SET [firstName] = ?\n" +
"      ,[lastName] = ?\n" +
"      ,[email] = ?\n" +
"      ,[username] = ?\n" +
"      ,[password] = ?\n" +
"      ,[phone] = ?\n" +
"      ,[isUser] = ?\n" +
"      ,[isAdmin] = ?\n" +
" WHERE id = ?" ;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, firstName);
            ps.setString(2, lastName);
            ps.setString(3, email);
            ps.setString(4, username);
            ps.setString(5, password);
            ps.setString(6, phone);
            ps.setString(7, isUser);
            ps.setString(8, isAdmin);
            ps.setString(9, userID);

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public void deleteAccount(String userID) {
        String query = "DELETE FROM [dbo].[Account]\n" +
"      WHERE id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public Account getAccountById(String id) {
       String query = "select* from Account\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                    return new Account(rs.getInt(1), rs.getString(2), 
                            rs.getString(3), rs.getString(4), rs.getString(5), 
                            rs.getString(6), rs.getString(7), rs.getInt(8), rs.getInt(9));
            }
        } catch (Exception e) {
        }
        return null;    
    }

}
