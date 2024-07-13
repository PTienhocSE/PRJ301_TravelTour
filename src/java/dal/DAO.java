package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Account;

/**
 * Data Access Object for handling database operations related to Account.
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Account login(String user, String pass) throws Exception {
        String query = "SELECT * FROM Account WHERE username = ? AND password = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            if (rs.next()) {
                int id = rs.getInt("id");
                String username = rs.getString("username");
                String password = rs.getString("password");
                int isUser = rs.getInt("isUser");
                int isAdmin = rs.getInt("isAdmin");
                return new Account(id, username, password, isUser, isAdmin);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public void registerUser(String firstName, String lastName, String email, String phoneNumber, String username, String password) throws Exception {
        String INSERT_USERS_SQL = "INSERT INTO Account (firstName, lastName, email, username, password, phone, isUser, isAdmin) VALUES (?, ?, ?, ?, ?, ?, 1, 0)";
        try (Connection conn = new DBContext().getConnection(); PreparedStatement preparedStatement = conn.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(1, firstName);
            preparedStatement.setString(2, lastName);
            preparedStatement.setString(3, email);
            preparedStatement.setString(4, username);
            preparedStatement.setString(5, password);
            preparedStatement.setString(6, phoneNumber);
            int result = preparedStatement.executeUpdate();
            System.out.println("Insert result: " + result);
        } catch (SQLException e) {
            e.printStackTrace();
            throw new Exception("Error inserting user: " + e.getMessage());
        }
    }

    public int getNumberOfUser() {
        String sql = "SELECT COUNT(*) AS numberOfUsers\n"
                + "FROM Account\n"
                + "WHERE isUser = 1;";
        try (Connection con = new DBContext().getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt("numberOfUsers");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public int getNumberOfBooking() {
        String sql = "SELECT COUNT(*) as numberOfBooking FROM Booking";
        try (Connection con = new DBContext().getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt("numberOfBooking");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public int getTotalAmount() {
        String sql = "SELECT SUM(CONVERT(int, T.price)) AS TotalAmount FROM Booking B JOIN Tour T ON B.Tourid = T.id";
        try (Connection con = new DBContext().getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt("TotalAmount");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
    public String getTheMostTour() throws Exception{
        String sql="SELECT TOP 1 T.title FROM Booking B JOIN Tour T ON B.Tourid = T.id GROUP BY T.title ORDER BY COUNT(B.Tourid) DESC";
        try (Connection conn = new DBContext().getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getString("title");
            }
        } catch (SQLException e) {
            e.printStackTrace();
             throw new Exception("Error while fetching the most booked tour", e);
        }
        return "";
}
}
