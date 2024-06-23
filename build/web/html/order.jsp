<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*" %>
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
    String displayName = (account != null) ? account.getUsername() : ""; // Lấy tên người dùng, nếu không có sẽ hiển thị "Login"
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
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&display=swap" rel="stylesheet">
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
                    <img style="border-radius: 20px;" src="https://lh3.googleusercontent.com/pw/AP1GczPAq58-6L8ZQ1M_1vVSPfyrmjgDGtgVuKfluqNXe6mItIRHobGHSKwB6_-YIeUy-mFaRv6Ca6jteJ-mf9n0uEWE8HZ9Jal7x2POLKndQ_S0IGyF86XdBR4mWMx_ws25SsdC8r91fkra9_gXoOmBSPkB=w1130-h749-s-no-gm?authuser=0" alt="">
                </div>
                <div class="order__card--info col-md-8">
                    <!-- Change title name from database -->
                     <p style="margin-right: 25px; font-size: 18px; font-weight: 700;">Da Nang - Hue - Lap An Lagoon - La Vang - Paradise Cave - Ba Na Urban Area - Golden Bridge - Son Tra - Hoi An - Da Nang </p>
                     <div class="order__card--text">
                     <p>Tour code: <p class="order-card--content"> NDSGN3362-014-210624VU-V</p></p>
                     </div>
                     <div class="order__card--text">
                     <p>Duration: <p class="order-card--content"> 1 day</p></p>
                     </div>
                     <div class="order__card--text">
                     <p>Departure Point: <p class="order-card--content"> Hue City</p></p>
                     </div>
                     <div class="order__card--text">
                     <p>Time travel: <p class="order-card--content"> 6:00</p></p>
                     </div>
                    </div>
            </div>
            <div class="order__title">
                Trip Overview
            </div>
            <div class="order__contact-info">
                <!-- Lấy từ database để nhập vào nếu người dùng muốn sửa thì có thể sửa -->
                <form action="" class="order__contact--form col-md-6">
                    <p class="order__contact--title">Contact Infomation</p>
                    Full Name: <br> <input type="text" value="" name="name">
                    <br>
                    Email: <br> <input type="text" value="" name="email">
                    <br>
                    Phone: <br> <input type="text" value="" name="phone">
                    <br>
                    <!-- Người dùng sẽ được chọn ngày xuất phát -->
                    <p class="order__contact--title">Date</p>
                    <input type="date" value="" name="date">
                    <p class="order__contact--title">Passenger</p>
                    Number of Passenger: <br> <input type="number" value="Number of Passenger" name="number">
                </form>
                <div class="order__order--info col-md-6">
                    <div class="group-checkout">
                        <div class="product">
                            <div class="product-image">
                                <img src="https://lh3.googleusercontent.com/pw/AP1GczPAq58-6L8ZQ1M_1vVSPfyrmjgDGtgVuKfluqNXe6mItIRHobGHSKwB6_-YIeUy-mFaRv6Ca6jteJ-mf9n0uEWE8HZ9Jal7x2POLKndQ_S0IGyF86XdBR4mWMx_ws25SsdC8r91fkra9_gXoOmBSPkB=w1130-h749-s-no-gm?authuser=0" class="img-fluid" alt="image">
                            </div>
                            <div class="product-content">
                                <p class="title">Da Nang - Hue - Lap An Lagoon - La Vang - Paradise Cave - Ba Na Urban Area - Golden Bridge - Son Tra - Hoi An - Da Nang (4* Hotel Full Tour)</p>
                            </div>
                        </div>
                        <div class="go-tour">
                            <div class="start">
                                <i class="fal fa-calendar-minus"></i>
                                <div class="start-content">
                                    <h4>Start the trip</h4>
                                    <!-- Ngày người dùng chọn -->
                                    <p class="time">T6, 21 JUNE 2024</p>
                                    <p class="from"></p>
                                </div>
                            </div>
                            <div class="end">
                                <i class="fal fa-calendar-minus"></i>
                                <div class="start-content">
                                    <h4>End of trip</h4>
                                    <!-- Cộng thêm duration ra end date  -->
                                    <p class="time">T2, JUNE 24, 2024</p>
                                    <p class="from"></p>
                                </div>
                            </div>
                        </div>
                        <div class="detail">
                            <table>
                                <thead>
                                    <tr>
                                        <th class="l1"><i class="fal fa-users me-1" id="AmoutPerson"></i>Passenger</th>
                                        <th class="l2 text-right"><span class="total-booking">9.390.000&nbsp;₫</span></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="detail">
                                        <td>Adult</td>
                                        <td class="t-price text-right">1 x 7.990.000&nbsp;₫</td>
                                    </tr>
                                    <tr class="total">
                                        <td>Total Money</td>
                                        <td class="t-price text-right">8.890.000&nbsp;₫</td>
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
