<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="controller.ManageServlet" %> 

<%
    String url = "jdbc:sqlserver://localhost:1433;databaseName=PRJ301_TourTravel;encrypt=false;trustServerCertificate=false";
    String user = "sa";
    String password = "123";

    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        conn = DriverManager.getConnection(url, user, password);
        stmt = conn.createStatement();
        String sql = "SELECT * FROM Tour";
        rs = stmt.executeQuery(sql);
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="model.Account" %> <!-- Import model Account -->
<%
    // Lấy thông tin người dùng từ session
    Account account = (Account) session.getAttribute("account");
    String isAdmin = (String) session.getAttribute("role");
    String displayName = (account != null) ? account.getUsername() : ""; // Lấy tên người dùng, nếu không có sẽ hiển thị "Login"
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Imperial City</title>
        <link rel="icon" href="https://png.pngtree.com/png-clipart/20190617/original/pngtree-hand-drawn-style-little-girl-attractions-punch-travel-punch-png-image_3857565.jpg" type="image/x-icon" />
        <link rel="stylesheet" href="./assets/css/responsive/responsive.css">
        <link rel="stylesheet" href="/traveltour/assets/css/style/style.css">
        <link rel="stylesheet" href="/traveltour/assets/css/style/style_booking.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="/traveltour/assets/font/themify-icons/themify-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </head>
    <body>
        <%
                                        String role = null;
                                        if (session != null) {
                                            role = (String) session.getAttribute("role");
                        }%>
        <div id="main">
            <div id="header">
                <div id="navbar">
                    <div class="smallnav">
                        <div class="smallnav__left">
                            Royal City, Imperial City, Hue City.
                        </div>
                        <div class="smallnav__login">
                            <a href=""><%= displayName %></a> <!-- Hiển thị tên người dùng hoặc "Login" -->
                            <% if (account != null) { %> <!-- Kiểm tra nếu người dùng đã đăng nhập -->
                            <a href="/traveltour/html/logout.jsp">Logout</a> <!-- Hiển thị liên kết "Logout" nếu đã đăng nhập -->
                            <% } else { %> <!-- Nếu chưa đăng nhập -->
                            <a  style="border-right: 1px solid white;" href="/traveltour/html/login.jsp">Login</a>
                            <a href="/traveltour/html/register.jsp">Register</a>
                            <% } %>
                        </div>
                    </div>
                    <div class="bignav">
                        <div class="bignav__namecity">
                            <a href="/traveltour/index.html" style="text-decoration: none; color: white;">IMPERIAL CITY</a>
                        </div>
                        <div class="bignav__selection">
                            <ul class="bignav__selection--list">
                                <li><a href="/traveltour/">Home</a></li>
                                <li><a href="/traveltour/html/about.jsp">About</a></li>
                                <!--<li><a href="/traveltour/html/news.jsp">News</a></li>-->
                                <li><a href="/traveltour/html/booking.jsp">Booking</a></li>
                                
                                <%  if ("admin".equals(role)){
                                    %>
                                    <li> <a href="/traveltour/html/manage.jsp" style="color:white; text-decoration: none">Manage</a></li>
                                    <%}%>
                        </div>
                        <div class="nav--mobile">
                            <i class="ti-menu"></i>
                        </div>
                        <div class="bignav__search">
                            <i class="bignav__search--icon ti-search"></i>
                        </div>
                    </div>
                </div>
                <script>
                    window.addEventListener('scroll', function () {
                        var scrollPosition = window.scrollY || window.pageYOffset;
                        var smallNav = document.querySelector('.smallnav');
                        var bigNav = document.querySelector('.bignav');
                        var smallNavHeight = smallNav.offsetHeight;

                        if (scrollPosition > smallNavHeight) {
                            smallNav.classList.add('smallnav-fixed');
                            bigNav.classList.add('bignav_scroll');
                        } else {
                            smallNav.classList.remove('smallnav-fixed');
                            bigNav.classList.remove('bignav_scroll');
                        }
                    });
                </script>
            </div>
            <div id="booking">
                <div class="booking_des">
                    <p style="color: #2d4271; font-weight: bold; font-size: 35px; text-align: center;">Hue City</p>
                    <p>Hue Thuong Son Thuy charming, where Dai Noi, Ngo Mon, Thai Hoa Palace, Forbidden City, Tu Duc Mausoleum, The Temple, Hien Lam Ca, Cuu Dinh ancient of 13 kings of the Nguyen Dynasty. Thien Mu Pagoda preserves valuable historical and artistic arts.</p>
                    <p>Registering for Hue tour with Vietravel, you can explore the following outstanding destinations: Dai Noi, Thien Mu Pagoda, Hue, An Hien Garden House, Tu Duc Mausoleum, ...</p>
                </div>
                <hr>
                <div class="order-form">
                    <div class="order-form-choose col-md-3 col-sm-4 mb-3">
                        <label style="font-weight: bold;" for="" class="col-md-3 form-label">Order by:</label>
                        <select class="form-select form-select-lg" name="" id="">
                            <option selected>Select one</option>
                            <option value="">Low price</option>
                            <option value="">High price</option>
                        </select>
                    </div>
                </div>
                <div class="booking__form">
                    <% while(rs != null && rs.next()) { %>
                    <div class="card card-item col-md-3">
                        <img class="card-img-top" src="<%= rs.getString("image_path") %>" alt="Title" />
                        <div class="card-body">
                            <form action="">
                                <h4 class="card-title"><%= rs.getString("title") %></h4>
                                <p class="card-text">Tour code:</p>
                                <p class="card-tourcode ti-ticket"><%= rs.getString("tour_code") %></p>
                                <p class="card-text">Place of departure:</p>
                                <p style="font-weight: bold;"><%= rs.getString("departure_place") %></p>
                                <div class="durationtime">
                                    <div class="durationtime-time">
                                        <p class="card-text">Travel time:</p>
                                        <p style="font-weight: bold;"><%= rs.getString("travel_time") %></p>
                                    </div>
                                    <div class="duration-day">
                                        <p class="card-text">Duration:</p>
                                        <p style="font-weight: bold;"><%= rs.getString("duration") %></p>
                                    </div>
                                </div>
                                <p class="card-price"><%= rs.getString("price") %> vnd</p>
                                <div class="book-form">
                                    <input class="book-btn" type="submit" value="Book now">
                                    <a class="detail-btn" href="">View details</a>
                                </div>
                            </form>
                        </div>
                    </div>
                    <% } %>
                </div>
            </div>
        </div>
        <%
            if(rs != null) rs.close();
            if(stmt != null) stmt.close();
            if(conn != null) conn.close();
        %>
    </body>
</html>
