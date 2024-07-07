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
    String displayName = (account != null) ? account.getUsername() : "Login"; // Get username or display "Login"
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
    </head>
    <body>
        <div id="header">
            <div id="navbar">
                <div class="smallnav">
                    <div class="smallnav__left">
                        Royal City, Imperial City, Hue City.
                    </div>
                    <div class="smallnav__login">
                        <a href="#"><%= displayName %></a> <!-- Display username or "Login" -->
                        <% if (account != null) { %> <!-- Check if user is logged in -->
                        <a href="/traveltour/html/logout.jsp">Logout</a> <!-- Show "Logout" link if logged in -->
                        <% } else { %> <!-- If not logged in -->
                        <a style="border-right: 1px solid white;" href="/traveltour/html/login.jsp">Login</a>
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
            <div class="order__card">
                <div class="order__card--img col-md-4">
                    <img style="border-radius: 20px;" src="<%= request.getAttribute("imagePath") %>" alt="">
                </div>
                <div class="order__card--info col-md-8">
                    <p style="margin-right: 25px; font-size: 18px; font-weight: 700;"><%= request.getAttribute("title") %></p>
                    <div class="order__card--text">
                        <p>Tour code: <p class="order-card--content"> <%= request.getAttribute("tourCode") %></p></p>
                    </div>
                    <div class="order__card--text">
                        <p>Duration: <p class="order-card--content"><%= request.getAttribute("duration") %> days</p></p>
                    </div>
                    <div class="order__card--text">
                        <p>Departure Point: <p class="order-card--content"> <%= request.getAttribute("departurePlace") %></p></p>
                    </div>
                    <div class="order__card--text">
                        <p>Time travel: <p class="order-card--content"><%= request.getAttribute("travelTime") %></p></p>
                    </div>
                </div>
            </div>
            <div class="order__title">
                Trip Overview
            </div>
            <div class="order__contact-info">
                <form action="/calculateBooking.jsp" method="POST" class="order__contact--form col-md-6">
                    <p class="order__contact--title">Contact Information</p>
                    Full Name: <br> <input type="text" name="name" value="">
                    <br>
                    Email: <br> <input type="email" name="email" value="">
                    <br>
                    Phone: <br> <input type="text" name="phone" value="">
                    <br>
                    <p class="order__contact--title">Date</p>
                    <input type="date" name="startDate" value="">
                    <p class="order__contact--title">Passenger</p>
                    Number of Passengers: <br> <input type="number" name="numPassengers" value="1">
                    <br>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
                <div class="order__order--info col-md-6">
                    <div class="group-checkout">
                        <div class="product">
                            <div class="product-image">
                                <img src="<%= request.getAttribute("imagePath") %>" class="img-fluid" alt="image">
                            </div>
                            <div class="product-content">
                                <p class="title"><%= request.getAttribute("title") %></p>
                            </div>
                        </div>
                        <div class="go-tour">
                            <div class="start">
                                <i class="fal fa-calendar-minus"></i>
                                <div class="start-content">
                                    <h4>Start the trip</h4>
                                    <p class="time"><%= request.getAttribute("startDate") %></p>
                                    <p class="from"></p>
                                </div>
                            </div>
                            <div class="end">
                                <i class="fal fa-calendar-minus"></i>
                                <div class="start-content">
                                    <h4>End of trip</h4>
                                    <p class="time"><%= request.getAttribute("endDate") %></p>
                                    <p class="from"></p>
                                </div>
                            </div>
                        </div>
                        <div class="detail">
                            <table>
                                <thead>
                                    <tr>
                                        <th class="l1"><i class="fal fa-users me-1" id="AmoutPerson"></i>Passenger</th>
                                        <th class="l2 text-right"><span class="total-booking"><%= request.getAttribute("totalPrice") %>₫</span></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="detail">
                                        <td>Pass</td>
                                        <td class="t-price text-right"><%= request.getAttribute("price") %>₫</td>
                                    </tr>
                                    <tr class="total">
                                        <td>Total Money</td>
                                        <td class="t-price text-right"><%= request.getAttribute("totalPrice") %>₫</td>
                                    </tr>
                                </tbody>
                            </table>
                            <button class="btn btn-primary btn-order">Book now</button>
                        </div>
                    </div>                    
                </div>
            </div>
        </div>
    </body>
</html>
