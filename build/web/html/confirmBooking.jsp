<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="model.Account" %> <!-- Import model Account -->

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
    } finally {
        if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
        if (stmt != null) try { stmt.close(); } catch (SQLException ignore) {}
        if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
    }
%>

<%
    // Get user information from session
    Account account = (Account) session.getAttribute("account");
    String displayName = (account != null) ? account.getUsername() : ""; // Get username or display "Login"
    int isAdmin = (account != null) ? account.getIsAdmin() : 0; // Get isAdmin value or set to 0 if not logged in
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Imperial City</title>
        <link rel="icon" href="https://png.pngtree.com/png-clipart/20190617/original/pngtree-hand-drawn-style-little-girl-attractions-punch-travel-punch-png-image_3857565.jpg" type="image/x-icon" />
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
            #order {
                max-width: 900px;
                margin: 120px auto 10px auto;
                padding: 20px;
                background-color: #fff;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                border-radius: 10px;
            }

            /* Title */
            .order__title {
                font-size: 35px;
                font-weight: 700;
                margin-bottom: 20px;
                text-align: center;
                color: red;
            }

            /* Contact Info Section */
            .order__contact-info {
                display: flex;
                justify-content: center;
            }

            .order__contact--form {
                width: 100%;
                max-width: 500px;
                padding: 20px;
                border: 1px solid #ddd;
                border-radius: 10px;
                background-color: #f9f9f9;
            }

            /* Contact Info Title */
            .order__contact--title {
                font-size: 18px;
                font-weight: 500;
                margin-bottom: 10px;
            }

            /* Input Fields */
            .order__contact--form input[type="text"],
            .order__contact--form input[type="email"],
            .order__contact--form input[type="date"],
            .order__contact--form input[type="number"] {
                width: 100%;
                padding: 10px;
                margin-bottom: 10px;
                border: 1px solid #ddd;
                border-radius: 5px;
                font-size: 16px;
            }

            /* Readonly Input Fields */
            .order__contact--form input[readonly] {
                background-color: #e9ecef;
            }

            /* Submit Button */
            .order__contact--form button {
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

            .order__contact--form button:hover {
                background-color: #0056b3;
            }
            /* Tour Info Section */
            .order__card--info {
                display: contents;
                width: 100%;
                margin: 20px;
                margin-top: 20px;
                padding: 15px;
                border: 1px solid #ddd;
                border-radius: 10px;
                background-color: #f9f9f9;
            }

            .order__card--info img {
                width: 100%;
                height: auto;
                border-radius: 20px;
                margin-bottom: 10px;
            }

            .order__card--text {
                margin-bottom: 10px;
            }

            .order__card--text p {
                font-size: 16px;
                margin-bottom: 5px;
            }

            .order-card--content {
                font-weight: bold;
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
                            <!--<li><a href="/traveltour/html/news.jsp">News</a></li>-->
                            <li><a href="/traveltour/html/booking.jsp">Booking</a></li>
                            <!--<li><a href="/traveltour/html/contact.jsp">Contact</a></li>-->
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
        <div id="order">
            <div class="order__title">
                Confirm Booking
            </div>
            <div class="order__contact-info">
                <div class="order__contact--form col-md-6">
                    <form action="/traveltour/bookbill" method="GET">
                        <p class="order__contact--title">Contact Information</p>
                        Full Name: <br> <input type="text" name="name" value="${name}" readonly>
                        <br>
                        Email: <br> <input type="email" name="email" value="${email}" readonly>
                        <br>
                        Phone: <br> <input type="text" name="phone" value="${phone}" readonly>
                        <br>
                        <p class="order__contact--title">Tour Info</p>
                        <div class="order__card--info col-md-8">
                            <img style="border-radius: 20px;" src="${imagePath}" alt="">
                            <p style="font-weight: bold;">${title}</p>
                            <div class="order__card--text">
                                <p>Tour code: <span class="order-card--content">${tourCode}</span></p>
                            </div>
                            <div class="order__card--text">
                                <p>Duration: <span class="order-card--content">${duration}</span></p>
                            </div>
                            <div class="order__card--text">
                                <p>Departure Point: <span class="order-card--content">${departurePlace}</span></p>
                            </div>
                            <div class="order__card--text">
                                <p>Time travel: <span class="order-card--content">${travelTime}</span></p>
                            </div>
                            <div class="order__card--text">
                                <p>Price: <span class="order-card--content">${price}đ</span></p>
                            </div>
                        </div>
                        Start day:<br>
                        <input type="text" name="startDate" value="${startDate}" readonly>
                        <p class="order__contact--title">Passenger</p>
                        Number of Passengers: <br> <input type="number" name="numPassengers" value="${numPassengers}" readonly>
                        <br>
                        <p class="order__contact--title">Total Money</p>
                        <input type="text" name="totalMoney" value="${totalMoney}₫" readonly>
                        <br>
                        <input type="hidden" name="id" value="${tourId}">
                        <input type="hidden" name="tour_code" value="${tourCode}">
                        <button type="submit" class="btn btn-primary">Confirm Payment</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
