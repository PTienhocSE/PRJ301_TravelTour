<%-- 
    Document   : bookingdetails
    Created on : Jun 22, 2024, 12:45:33 AM
    Author     : TUF
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Booking Details</title>
        <link rel="stylesheet" href="/traveltour/assets/css/style/style.css">
        <link rel="stylesheet" href="/traveltour/assets/css/style/style_booking.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="/traveltour/assets/font/themify-icons/themify-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <div id="main">
            <div id="header">
                <div id="navbar">
                    <div class="smallnav">
                        <div class="smallnav__left">
                            Royal City, Imperial City, Hue City.
                        </div>
                        <div class="smallnav__login">
                            <%@ page import="model.Account" %>
                            <%
                                Account account = (Account) session.getAttribute("account");
                                String displayName = (account != null) ? account.getUsername() : "Login";
                            %>
                            <a href=""><%= displayName %></a>
                            <% if (account != null) { %>
                            <a href="/traveltour/html/logout.jsp">Logout</a>
                            <% } else { %>
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
            </div>
            <div id="bookingDetails">
                <div class="container">
                    <h2>Booking Details</h2>
                    <div class="row">
                        <form action="" method="POST">
                            <div class="col-md-6">
                                <p><strong>Tour Code:</strong> <%= request.getAttribute("tourCode") %></p>
                                <p><strong>Title:</strong> <%= request.getAttribute("title") %></p>
                                <p><strong>Price:</strong> <%= request.getAttribute("price") %> VND</p>
                                <img src="<%= request.getAttribute("imagePath")%>"alt="">
                                <p><strong>Duration:</strong> <%= request.getAttribute("duration") %></p>
                                <p><strong>Travel Time:</strong> <%= request.getAttribute("travelTime") %></p>
                                <p><strong>Departure Place:</strong> <%= request.getAttribute("departurePlace") %></p>
                            </div>
                            <div class="book-form">
                                <input type="hidden" name="tourCode" value="<%= request.getAttribute("tourCode") %>">
                                <input type="hidden" name="title" value="<%= request.getAttribute("title") %>">
                                <input type="hidden" name="price" value="<%= request.getAttribute("price") %>">
                                <input type="hidden" name="duration" value="<%= request.getAttribute("duration") %>">
                                <input type="hidden" name="travelTime" value="<%= request.getAttribute("travelTime") %>">
                                <input type="hidden" name="departurePlace" value="<%= request.getAttribute("departurePlace") %>">
                                <input type="hidden" name="imagePath" value="<%= request.getAttribute("imagePath") %>">
                                <button type="submit">Đặt Ngay</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

