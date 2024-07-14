<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="model.Account" %>
<%
    // Lấy thông tin người dùng từ session
    Account account = (Account) session.getAttribute("account");
    String displayName = (account != null) ? account.getUsername() : ""; // Lấy tên người dùng, nếu không có sẽ hiển thị "Login"
    int isAdmin = (account != null) ? account.getIsAdmin() : 0; // Get isAdmin value or set to 0 if not logged in
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
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/traveltour/assets/font/themify-icons/themify-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<style>
    body {
        height: fit-content !important;
        font-family: 'Open Sans', sans-serif;
        
    }
    /* BEGIN SLIDER  */
    #slider .slider__title {
        position: relative;
        top: -374px !important;
        width: 100%;
        text-align: center;
        font-weight: 800;
        font-size: 87px;
        color: #d6e3f3 !important;
        opacity: 0.8;
    }
    #slider .slider__btn .slider__btn--btn {
        padding: 16px 50px;
        border-style: none;
        border-radius: 30px;
        transition: all 410ms ease;
        cursor: pointer;
        color: white;
        opacity: 1;
        font-size: 15px;
        font-weight: 600;
        background: linear-gradient(to right, #527dc8, #8b7fb4, #3264a0, #4e5e88) !important;
    }
    #slider .slider__btn .slider__btn--btn:hover {
        background: linear-gradient(to left, #527dc8, #8b7fb4, #3264a0, #4e5e88) !important;
    }
    #slider .slider__img {
        width: 100%;
        height: 100vh;
        background-repeat: no-repeat;
        background-size: cover;
        background-position: center center;
        opacity: 0.9;
        filter: grayscale(0.8) blur(1px) !important;
    }
    /* BEGIN CONTENT  */
    .content__intro {
        padding: 60px 100px;
        display: flex;
    }
    .content__intro--img {
        width: 40%;
    }
    .content__intro--infor {
        padding: 0px 0px 0 80px;
        width: 60%;
    }
    .content__intro--infor--title,
    .content__ThienMuPagoda--infor--title {
        text-transform: uppercase;
        font-size: 29px;
        font-weight: 700;
    }
    .content__intro--infor--desc,
    p.content__ThienMuPagoda--infor--desc {
        color: #929191;
        margin-top: 30px;
        line-height: 2;
        text-align: justify;
        padding-bottom: 35px;
        font-weight: 600;
    }
    .content__ThienMuPagoda {
        display: flex;
        padding: 60px 100px;
        background-color: #F5F9FB;
    }
    .content__ThienMuPagoda--img {
        width: 40%;
    }
    .content__ThienMuPagoda--infor {
        width: 60%;
        padding: 0 80px 0 0;
    }
    .footer__contact--all {
        padding: 12px 0 20px 0;
    }
    .footer-element {
        display: block;
    }
    .contact-text-link {
        color: #fff;
        text-decoration: none;
    }
</style>
<body>
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
         <!-- BEGIN SLIDER  -->
         <div id="slider">
            <div class="slider__img">
                <img class="slider__img" src="/traveltour/assets/img/slider_about.png" alt="">
            </div>
            <div class="slider__title">
                <p>INTRODUCTION</p>
            </div>
            <div class="slider__btn">
                <button class="slider__btn--btn">EXPLORE NOW
                    <span style="opacity: 1;" class="slider__btn--btn--span"></span>
                    <span style="opacity: 0.7;" class="slider__btn--btn--span"></span>
                    <span style="opacity: 0.5;" class="slider__btn--btn--span"></span>  
                </button>
            </div>
        </div>
        <!--BEGIN CONTENT-->
        <div id="content">
            <div class="content__intro">
                <div class="content__intro--img">
                    <img style="width: 100%; padding-top: 45px;" src="/traveltour/assets/img/ticket_intro.jpg" alt="">
                </div>
                <div class="content__intro--infor">
                    <div class="content__intro--infor--title">Why should we go to Hue?</div>
                    <p class="content__intro--infor--desc">Hue Vietnam is a historic and cultural city in central Vietnam. It was the capital of the Nguyen dynasty from 1802 to 1945 and has many attractions such as the Imperial City, the Thien Mu Pagoda and the Dong Ba Market. Hue is also famous for its refined cuisine and its scenic Perfume River. You can explore the relics of the Nguyen emperors such as Khai Dinh Tomb, Minh Mang Tomb or Tu Duc Tomb, or enjoy some local dishes such as banh beo, bun bo Hue or com hen. Hue is an ideal destination for those who love history, culture and nature of Vietnam.</p>
                </div>
            </div>
            <div class="content__ThienMuPagoda">
                <div class="content__ThienMuPagoda--infor">
                    <div class="content__ThienMuPagoda--infor--title">Why should we go to Thien Mu Pagoda?</div>
                    <p class="content__ThienMuPagoda--infor--desc">Thien Mu Pagoda (namely Heaven Fairy Lady Pagoda), also known as Linh Mu Pagoda, is one of the most fascinating and ancient pagodas in Hue city. It is situated on Ha Khe hill, on the north bank of the Perfume River, in Huong Long village, 5 kilometers from Hue city. It was built in the 17th century by Nguyen Hoang – the first Nguyen Lord. Thien Mu Pagoda is a good highlight in your Hue tours. It has become the home to historical relics, myriad long-established temples, and pagodas, unique traditions, and culture. A trip to explore ancient Hue, especially Thien Mu Pagoda is almost like a journey back in time to enter the world of ancient Vietnamese. It is also famous for its mysterious spiritual stories.</p>
                </div>
                <div class="content__ThienMuPagoda--img">
                    <img style="width: 100%;" src="/traveltour/assets/img/travel_intro.jpg" alt="">
                </div>
            </div>
        </div>

        <!-- BEGIN FOOTER  -->
        <div id="footer">
            <div class="footer-display">
                <div class="footer__title__logo">
                    <div class="footer__title__logo--title">IMPERIAL CITY</div>
                    <p style="width: 75%; font-size: 14px; font-weight: 600; color: #fff; line-height: 2;">The website helps tourists have an overview of Hue before coming to this ancient capital city to travel, learn about dishes and tourist destinations. Allow tours and hotels to plan before arriving in Hue.</p>
                </div>
                <div class="footer__product">
                    <p class="title-footer">Product</p>
                    <a class="footer-element" href="./index.html">Tourist</a>
                    <a class="footer-element" href="./index.html">Hotel</a>
                    <a class="footer-element" href="./index.html">Flight</a>
                    <a class="footer-element" href="./index.html">Transportation</a>
                </div>
                <div class="footer__company">
                    <p class="title-footer">Company</p>
                    <a class="footer-element" href="./about.html">About us</a>
                    <a class="footer-element" href="./news.html">News</a>
                    <a class="footer-element" href="./booking.html">Food</a>
                    <a class="footer-element" href="./contact.html">Contact</a>
                </div>
                <div class="footer__contact--all">
                    <p class="title-footer">Contact Info</p>
                    <div class="footer__contact">
                        <i style="margin-right: 4px;" class="ti-location-pin"></i>
                        <p class="contact-text">Da Nang, Viet Nam.</p>
                    </div>
                    <div class="footer__contact">
                        <i style="margin-right: 4px;" class="ti-email"></i>
                        <p class="contact-text">phuctienrt@gmail.com</p>
                    </div>
                    <div class="footer__contact">
                        <i style="margin-right: 4px;" class="ti-mobile"></i>
                        <p class="contact-text">+84386188917</p>
                    </div>
                    <div class="footer__contact">
                        <i style="margin-right: 4px;" class="ti-github"></i>
                        <a class="contact-text-link" href="https://github.com/PTienhocSE">github.com/PTienhocSE</a>
                    </div>
                </div>
            </div>
            <p style="color: rgb(202, 202, 202); font-weight: 700;" class="fotter__copyright">Made by <a style="text-decoration: none; color: #3d6196" href="https://www.facebook.com/ptientr.fb/"> Tran Phuc Tien</a></p>
        </div>
    </div>
</body>
</html>
