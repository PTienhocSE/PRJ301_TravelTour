package dal;

import dal.DBContext;
import model.Tour;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class TourDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Tour> getAllTours() {
        List<Tour> tours = new ArrayList<>();
        String query = "select * from Tour";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Tour tour = new Tour();
                tour.setId(rs.getInt("id"));
                tour.setTitle(rs.getString("title"));
                tour.setTourCode(rs.getString("tour_code"));
                tour.setDeparturePlace(rs.getString("departure_place"));
                tour.setTravelTime(rs.getString("travel_time"));
                tour.setDuration(rs.getString("duration"));
                tour.setPrice(rs.getString("price"));
                tour.setImagePath(rs.getString("image_path"));

                tours.add(tour);
            }

        } catch (Exception e) {
            System.out.println("Error retrieving products: " + e.getMessage());
        }

        return tours;
    }
//add product

    public void addTour(String title,String tourCode,String departurePlace,String travelTime,String price,String duration,String imagePath) {
        String query = "INSERT INTO [dbo].[Tour]\n" +
"           ([title]\n" +
"           ,[tour_code]\n" +
"           ,[departure_place]\n" +
"           ,[travel_time]\n" +
"           ,[price]\n" +
"           ,[duration]\n" +
"           ,[image_path])\n" +
"     VALUES(?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
              ps.setString(1, title);
            ps.setString(2, tourCode);
            ps.setString(3, departurePlace);
            ps.setString(4, travelTime);
            ps.setString(5, price);
            ps.setString(6, duration);
            ps.setString(7, imagePath);

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //update product 
    public void updateTour(String id,String title,String tourCode,String departurePlace,String travelTime,String price,String duration,String imagePath) {
            String query = "UPDATE [dbo].[Tour]"
                            +  "SET [title] = ?"
                            +    " ,[tour_code] = ?"
                            +     ",[departure_place] = ?"
                            +    " ,[travel_time] = ?"
                            +     ",[price] = ?"
                            +    " ,[duration] = ?"
                            +     ",[image_path] = ?"
                        +   " WHERE id = ?" ;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, title);
            ps.setString(2, tourCode);
            ps.setString(3, departurePlace);
            ps.setString(4, travelTime);
            ps.setString(5, price);
            ps.setString(6, duration);
            ps.setString(7, imagePath);
            ps.setString(8, id);    

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Xóa sản phẩm
    public void deleteTour(String id) {
        String query = "DELETE FROM [dbo].[Tour]\n" +
"      WHERE id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    //getProductById
    public Tour getTourById(String id) {
       String query = "select* from Tour\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                    return new Tour(rs.getInt(1), rs.getString(2), rs.getString(3), 
                            rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8));
            }
        } catch (Exception e) {
        }
        return null;    
    }

    public static void main(String[] args) {
  TourDAO product = new TourDAO();
//        List<Product> productList = adProduct.getAllProducts();
//        for (Product product : productList) {
//            System.out.println(product); // Print product information for verification
//        }

        Tour tour = new Tour();
//        newProduct.setProductName("New Product1");
//        newProduct.setImgProduct("data:image/jpeg;base64,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");
//        newProduct.setPriceProduct(9999);
//        newProduct.setTypeProductId(1); // Example type ID
//        newProduct.setSizeId(2); // Example size ID
//        newProduct.setTrademarkId(3); // Example trademark ID
//        newProduct.setQuantity(10);
//        newProduct.setDateAdded(new java.util.Date()); // Current date
//        newProduct.setDescribe_product("Description of the new product");
//
//        // Add the product
//        adProduct.addProduct(newProduct);

//        product.getTourById("1");
//
//       
//        tour.setId(17); // Set the ID of the product you want to update
//        tour.setTitle("New Product Name");
//        tour.setTourCode("HUI-301");
//        tour.setDeparturePlace("Ngu Hanh Son");
//        tour.setTravelTime("9:00");
//        tour.setPrice("450000");
//        tour.setDuration("2 Day");
//        tour.setImagePath("https://lh3.googleusercontent.com/pw/AP1GczPAq58-6L8ZQ1M_1vVSPfyrmjgDGtgVuKfluqNXe6mItIRHobGHSKwB6_-YIeUy-mFaRv6Ca6jteJ-mf9n0uEWE8HZ9Jal7x2POLKndQ_S0IGyF86XdBR4mWMx_ws25SsdC8r91fkra9_gXoOmBSPkB=w1130-h749-s-no-gm?authuser=0");
//        

        // Assuming you have a method to get the database connection
     
//        product .updateTour(tour);
//        
        // Testing getAllTours method
        List<Tour> tourList = product.getAllTours();
        for(Tour t : tourList){
            System.out.println(t);
        }
        
    }
}
