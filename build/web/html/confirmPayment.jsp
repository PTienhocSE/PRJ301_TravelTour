<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="model.Account" %> <!-- Import model Account -->

<%
    // Database connection details
    String url = "jdbc:sqlserver://localhost:1433;databaseName=PRJ301_TourTravel;encrypt=false;trustServerCertificate=false";
    String user = "sa";
    String password = "123";

    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        conn = DriverManager.getConnection(url, user, password);
        
        // Retrieve booking details based on the latest booking (you may need to adjust this logic based on your requirements)
        String sql = "SELECT TOP 1 * FROM Booking ORDER BY id DESC";
        stmt = conn.createStatement();
        rs = stmt.executeQuery(sql);

        // Extract booking details
        String fullName = "";
        String email = "";
        String phone = "";
        String tourCode = "";
        String startDay = "";
        int numPassengers = 0;
        String totalMoney = "";

        if (rs.next()) {
            fullName = rs.getString("full_name");
            email = rs.getString("email");
            phone = rs.getString("phone");
            tourCode = rs.getString("tour_code");
            startDay = rs.getString("start_day");
            numPassengers = rs.getInt("num_passengers");
            totalMoney = rs.getString("total_money");
        }

    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
        if (stmt != null) try { stmt.close(); } catch (SQLException ignore) {}
        if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confirm Payment</title>
    <link rel="stylesheet" href="./assets/css/responsive/responsive.css">
    <link rel="stylesheet" href="/traveltour/assets/css/style/style.css">
    <link rel="stylesheet" href="/traveltour/assets/css/style/style_order.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/traveltour/assets/font/themify-icons/themify-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <style>
        /* Reset CSS */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body */
        body {
            font-family: 'Open Sans', sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
        }

        /* Container */
        #confirm {
            max-width: 900px;
            margin: 120px auto 10px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        /* Title */
        .confirm__title {
            font-size: 35px;
            font-weight: 700;
            margin-bottom: 20px;
            text-align: center;
            color: red;
        }

        /* Booking Info Section */
        .confirm__booking-info {
            display: flex;
            justify-content: center;
        }

        .confirm__booking--details {
            width: 100%;
            max-width: 500px;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            background-color: #f9f9f9;
        }

        /* Booking Info Title */
        .confirm__booking--title {
            font-size: 18px;
            font-weight: 500;
            margin-bottom: 10px;
        }

        /* Text Fields */
        .confirm__booking--details input[type="text"],
        .confirm__booking--details input[type="email"],
        .confirm__booking--details input[type="date"],
        .confirm__booking--details input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }

        /* Readonly Text Fields */
        .confirm__booking--details input[readonly] {
            background-color: #e9ecef;
        }

        /* Back to Home Button */
        .confirm__booking--details button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            border: none;
            color: white;
            font-size: 16px;
            font-weight: 500;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
        }

        .confirm__booking--details button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
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
                        <li><a href="/traveltour/index.html">Home</a></li>
                        <li><a href="/traveltour/html/about.jsp">About</a></li>
                        <li><a href="/traveltour/html/booking.jsp">Booking</a></li>
                        <% if (isAdmin == 1) { %> <!-- Check if user is an admin -->
                            <li><a href="/traveltour/dashboard/manager.index.jsp">Manager</a></li> <!-- Show "Manager" link if admin -->
                        <% } %>
                    </ul>
                </div>
                <div class="nav--mobile">
                    <i class="ti-menu"></i>
                </div>
                <div class="bignav__search">
                    <i class="bignav__search--icon ti-search"></i>
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
                })
            </script>
            <div id="confirm">
                <h2 class="confirm__title">Booking Confirmed!</h2>
                <div class="confirm__booking-info">
                    <div class="confirm__booking--details">
                        <h3 class="confirm__booking--title">Booking Details</h3>
                        <p><strong>Full Name:</strong> <%= fullName %></p>
                        <p><strong>Email:</strong> <%= email %></p>
                        <p><strong>Phone Number:</strong> <%= phone %></p>
                        <p><strong>Tour Code:</strong> <%= tourCode %></p>
                        <p><strong>Start Day:</strong> <%= startDay %></p>
                        <p><strong>Number of Passengers:</strong> <%= numPassengers %></p>
                        <p><strong>Total Money:</strong> <%= totalMoney %></p>
                        <button onclick="window.location.href='/traveltour/index.html';">Back to Home</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
