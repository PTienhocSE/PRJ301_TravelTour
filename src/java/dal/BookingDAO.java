package dal;

import model.Booking;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookingDAO {

    private final DBContext dbContext;

    public BookingDAO() {
        dbContext = new DBContext();
    }

    public boolean addBooking(String fullName, String email, String phone, int tourId, String startDay, int numPassengers, String tourCode, double totalMoney) throws Exception {
        String sql = "INSERT INTO Booking (full_name, email, phone, tour_id, start_day, num_passengers, tour_code, total_money) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        try (
            Connection conn = dbContext.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql)
        ) {
            stmt.setString(1, fullName);
            stmt.setString(2, email);
            stmt.setString(3, phone);
            stmt.setInt(4, tourId);
            stmt.setString(5, startDay);
            stmt.setInt(6, numPassengers);
            stmt.setString(7, tourCode);
            stmt.setDouble(8, totalMoney);

            int rowsAffected = stmt.executeUpdate();
            return rowsAffected == 1;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            dbContext.closeConnection();
        }
    }

    public int getTourIdByTourCode(String tourCode) throws SQLException, Exception {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        int tourId = -1; // Default value if not found

        try {
            conn = dbContext.getConnection();
            String sql = "SELECT id FROM Tour WHERE tour_code = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, tourCode);
            rs = stmt.executeQuery();

            if (rs.next()) {
                tourId = rs.getInt("id");
            }
        } catch (SQLException e) {
            throw e;
        } finally {
            // Close resources in reverse order of creation
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return tourId;
    }

    public List<Booking> getAllBooking() throws SQLException, Exception {
        List<Booking> bookings = new ArrayList<>();
        String sql = "SELECT * FROM Booking";
        try (
            Connection conn = dbContext.getConnection();
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
        ) {
            while (rs.next()) {
                Booking booking = new Booking();
                booking.setId(rs.getInt("id"));
                booking.setFullName(rs.getString("full_name"));
                booking.setEmail(rs.getString("email"));
                booking.setPhone(rs.getString("phone"));
                booking.setTourId(rs.getInt("tour_id"));
                booking.setStartDay(rs.getString("start_day"));
                booking.setNumPassengers(rs.getInt("num_passengers"));
                booking.setTourCode(rs.getString("tour_code"));
                booking.setTotalMoney(rs.getDouble("total_money"));
                bookings.add(booking);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        } finally {
            dbContext.closeConnection();
        }
        return bookings;
    }

    public void close() {
        dbContext.closeConnection();
    }
}
