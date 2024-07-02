<%-- 
    Document   : index
    Created on : Jun 28, 2024, 11:03:28 PM
    Author     : Le Phuong Uyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Imperial City</title>
        <link rel="icon"
              href="https://png.pngtree.com/png-clipart/20190617/original/pngtree-hand-drawn-style-little-girl-attractions-punch-travel-punch-png-image_3857565.jpg"
              type="image/x-icon" />
        <link rel="stylesheet" href="/traveltour/assets/css/responsive/responsive.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&display=swap"
            rel="stylesheet">
        <link rel="stylesheet" href="/traveltour/assets/font/themify-icons/themify-icons.css">
        <link rel="stylesheet" href="/traveltour/assets/css/style/style.css">
        <script src="/web/js/main.js"></script>
    </head>

    <body>


        <div id="main">
            <!-- BEGIN HEADER  -->
            <div id="header">
                <!-- BEGIN NAV -->
                <div id="navbar">
                    <div class="smallnav">
                        <div class="smallnav__left">
                            Royal City, Imperial City, Hue City.
                        </div>
                        <!-- <div class="smallnav__right">
                                <a href="https://www.facebook.com/ptientr.fb/"
                                    class="smallnav__right--icon ti-facebook"></a>
                                <a href="https://www.instagram.com/18.corner_/"
                                    class="smallnav__right--icon ti-instagram"></a>
                                <a href="gmail.com" class="smallnav__right--icon ti-email"></a>
                                <a href="#" class="smallnav__right--icon ti-mobile"></a>
                            </div> -->
                        <div class="smallnav__login">
                            <a style="border-right: 1px solid white;;" href="/traveltour/html/login.jsp">Login</a>
                            <a href="/traveltour/html/register.jsp">Register</a>
                        </div>
                    </div>
                    <div class="bignav">
                        <div class="bignav__namecity">
                            <a href="#" style="
                               text-decoration: none;
                               color: white;
                               ">IMPERIAL CITY</a>
                        </div>
                        <div class="bignav__selection">
                            <ul class="bignav__selection--list">
                                <li><a href="/traveltour/">Home</a></li>
                                <li><a href="/traveltour/html/about.jsp">About</a></li>
                                <!--<li><a href="/traveltour/html/news.jsp">News</a></li>-->
                                <li><a href="/traveltour/html/booking.jsp">Booking</a></li>
                                <!--<li><a href="/traveltour/html/contact.jsp">Contact</a></li>--> 
                                <c:if test ="${not empty sessionScope.username && sessionScope.role =='admin'}">
                                    <li class="manage"><a href="/traveltour/manage" style="color:white; text-decoration: none">Manage</a></li>
                                </c:if>

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


                <!-- BEGIN SLIDER  -->
                <div id="slider">
                    <div class="slider__img">
                        <img class="slider__img" src="/traveltour/assets/img/slider_home.jpeg" alt="">
                    </div>
                    <div class="slider__title">
                        <p>Welcome To Hue City</p>
                        <h1>Visit <span class="changecontent"></span></h1>

                    </div>
                    <div class="slider__btn">
                        <button href="/traveltour/html/booking.jsp" class="slider__btn--btn">
                            <a style="text-decoration: none; color: white;" href="/traveltour/html/booking.jsp">EXPLORE
                                NOW</a>
                            <span style="opacity: 1;" class="slider__btn--btn--span"></span>
                            <span style="opacity: 0.7;" class="slider__btn--btn--span"></span>
                            <span style="opacity: 0.5;" class="slider__btn--btn--span"></span>
                        </button>
                    </div>
                </div>

                <!-- BEGIN CONTENT  -->
                <div id="content">
                    <div class="content__padding">
                        <div class="content__title">The best tourist destination</div>
                        <div class="content__des">Summary of the most recommended destinations when tourists come to
                            Hue.</div>
                        <div class="content__tour">
                            <div class="content__tour--btn">
                                <i class="ti-angle-left content__tour--inbtn"></i>
                            </div>
                            <div class="content__tour--item">
                                <img src="/traveltour/assets/img/Khai_Dinh.jpg" alt="" class="content__tour--item--img">
                                <p class="content__tour--item--nameplace">KHAI DINH TOMB</p>
                                <p class="content__tour--item--des">The Tomb of Khai Dinh, officially Ung Mausoleum is a
                                    tomb
                                    built for Khai Dinh, it blend of Vietnamese with Western styles, Emperor of the
                                    Nguyen
                                    dynasty of Vietnam.</p>
                                <a href="/traveltour/html/booking.jsp" class="content__tour--item--btn">
                                    <button class="content-btn">BOOK NOW</button>
                                </a>
                            </div>
                            <div class="content__tour--item">
                                <img src="/traveltour/assets/img/slider_home.jpeg" alt="" class="content__tour--item--img">
                                <p class="content__tour--item--nameplace">HUE CITADEL</p>
                                <p class="content__tour--item--des"> "Citadel of Hue, including Imperial City, Purple
                                    Forbidden
                                    City, Royal Canal, Museum of Hue, National University, Lake of the Serene Heart"
                                    part of
                                    Complex of Hue Monuments</p>
                                <a href="/traveltour/html/booking.jsp"  class="content__tour--item--btn">
                                    <button class="content-btn">BOOK NOW</button>
                                </a>
                            </div>
                            <div class="content__tour--item">
                                <img src="/traveltour/assets/img/tam_giang.jpg" alt="" class="content__tour--item--img">
                                <p class="content__tour--item--nameplace">TAM GIANG</p>
                                <p class="content__tour--item--des">Tam Giang Lagoon is a lagoon located in the Tam
                                    Giang - Cau
                                    Hai lagoon system. Tam Giang lagoon area is about 52 km, stretching about 24 km. It
                                    is a
                                    large lagoon of Vietnam.</p>
                                <a href="/traveltour/html/booking.jsp"  class="content__tour--item--btn">
                                    <button class="content-btn">BOOK NOW</button>
                                </a>
                            </div>
                            <div class="content__tour--btn">
                                <i class="ti-angle-right content__tour--inbtn"></i>
                            </div>
                        </div>
                    </div>
                    <!-- BEGIN BOOKING BAR  -->
                    <!-- <div class="content__booking">
                            <div class="content__booking--destination content__booking--margin">
                                <p class="content__booking--title">DESTINATION</p>
                                <input class="input-box input-box-destination" type="text"
                                    placeholder="Where you want to go?">
                            </div>
                            <div class="content__booking--date content__booking--margin">
                                <p class="content__booking--title">DATE</p>
                                <input class="input-box" type="text" placeholder="DD-MM-YYYY">
                            </div>
                            <div class="content__booking--time content__booking--margin">
                                <p class="content__booking--title">TIME</p>
                                <div class="content__booking--time--option"> -->
                    <!-- <input class="input-box" type="text" placeholder="__:__"> -->
                    <!-- <select name="" aria-placeholder="__:__" class="input-box">
                                        <option value="1">00:00</option>
                                        <option value="2">00:30</option>
                                        <option value="3">01:00</option>
                                        <option value="4">01:30</option>
                                        <option value="5">02:00</option>
                                        <option value="6">02:30</option>
                                        <option value="7">03:00</option>
                                        <option value="8">03:30</option>
                                        <option value="9">04:00</option>
                                        <option value="10">04:30</option>
                                        <option value="11">05:00</option>
                                        <option value="12">05:30</option>
                                        <option value="13">06:00</option>
                                        <option value="14">06:30</option>
                                        <option value="15">07:00</option>
                                        <option value="16">07:30</option>
                                        <option value="17">08:00</option>
                                        <option value="18">08:30</option>
                                        <option value="19">09:00</option>
                                        <option value="20">09:30</option>
                                        <option value="21">10:00</option>
                                        <option value="22">10:30</option>
                                        <option value="23">11:00</option>
                                        <option value="24">11:30</option>
                                        <option value="25">12:00</option>
                                        <option value="26">12:30</option>
                                    </select>
                                    <select name="" class="input-box-time">
                                        <option value="1">AM</option>
                                        <option value="2">PM</option>
                                    </select>
                                </div>
                            </div>
                            <div class="content__booking--adults content__booking--margin">
                                <p class="content__booking--title">ADULTS</p>
                                <select name="" class="input-box ">
                                    <option value="0">0</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                </select>
                            </div>
                            <div class="content__booking--children content__booking--margin">
                                <p class="content__booking--title">CHILDREN</p>
                                <select name="" class="input-box">
                                    <option value="0">0</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                </select>
                            </div>
                            <div class="content__booking--btn">
                                <pstyle="margin-right: 10px;>SEARCH</pstyle=>
                                    <span style="opacity:1;" class="content__booking--btn--span"> </span>
                                    <span style="opacity: 0.7;" class="content__booking--btn--span"> </span>
                                    <span style="opacity: 0.5;" class="content__booking--btn--span"> </span>
                            </div>
                        </div> -->

                    <!-- BEGIN BOOKING HOTEL  -->
                    <div class="content__hotel--background">
                        <div class="content__hotel">
                            <p class="content__hotel--des">RECOMMEND DREAM HOTEL</p>
                            <p class="content__hotel--title">Recommend Dream Hotel</p>
                            <p class="content__hotel--intro">Recommend To Find You The Best Hotel - To Be Able To Enjoy A
                                Full
                                Vacation</p>
                            <!-- <div class="content__hotel--search">
                                    <div style="display: flex; " class="content__hotel--search--location">
                                        <i style="margin-right: 2px; line-height: 44px; margin-left: 9px;"
                                            class="ti-location-pin"></i>
                                        <select name="" class="content__hotel--search--select">
                                            <option value="" disabled selected>Location</option>
                                            <option value="1">Beach</option>
                                            <option value="2">Natural</option>
                                            <option value="3">City</option>
                                        </select>
                                    </div>
                                    <div style="display: flex; " class="content__hotel--search--budget">
                                        <i style="margin-right: 2px; line-height: 44px;" class="ti-wallet"></i>
                                        <select name="" class="content__hotel--search--select">
                                            <option value="" disabled selected>Budget</option>
                                            <option value="1">50$-100$</option>
                                            <option value="2">100$-150$</option>
                                            <option value="3">150$-200$</option>
                                            <option value="4">200$-250$</option>
                                            <option value="5">250$-300$</option>
                                            <option value="6">300$-350$</option>
                                            <option value="7">350$-400$</option>
                                            <option value="8">400$-450$</option>
                                        </select>
                                    </div>
                                    <div style="display: flex; " class="content__hotel--search--date">
                                        <i style="margin-right: 2px; line-height: 44px;" class="ti-calendar"></i>
                                        <input class="content__hotel--search--date--icon" placeholder="DD-MM-YYYY"
                                            type="text">
                                    </div>
                                    <span class="content__hotel--search--icon">Search</span>
                                </div>
                                <div class="content__hotel--select">
                                    <span class="content__hotel--select--solution">All</span>
                                    <span class="content__hotel--select--solution">Recommend</span>
                                    <span class="content__hotel--select--solution">Beach</span>
                                    <span class="content__hotel--select--solution">Natural</span>
                                </div> -->
                            <div class="content__hotel--list">
                                <div class="content__hotel--list--row1 content__hotel--list--row">
                                    <div class="hotel-solution1 hotel-solution">
                                        <div class="rate-hotel">
                                            <i style="color: #fbce32; margin-right: 2px;" class="ti-star"></i>
                                            <p>4.8</p>
                                        </div>
                                        <div class="hotel--bottom">
                                            <div class="hotel-left">
                                                <p class="hotel-title">Melia Hue</p>
                                                <div style="display: flex; margin-right: 2px;" class="hotel-location">
                                                    <i class="ti-location-pin"></i>
                                                    <p>Hue City</p>
                                                </div>
                                            </div>
                                            <div class="hotel-right">
                                                <p class="hotel-price">$150</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="hotel-solution2 hotel-solution">
                                        <div class="rate-hotel">
                                            <i style="color: #fbce32; margin-right: 2px;" class="ti-star"></i>
                                            <p>4.9</p>
                                        </div>
                                        <div class="hotel--bottom">
                                            <div class="hotel-left">
                                                <p class="hotel-title">Vedana Lagoon</p>
                                                <div style="display: flex; margin-right: 2px;" class="hotel-location">
                                                    <i class="ti-location-pin"></i>
                                                    <p>Phu Loc</p>
                                                </div>
                                            </div>
                                            <div class="hotel-right">
                                                <p class="hotel-price">$170</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="hotel-solution3 hotel-solution">
                                        <div class="rate-hotel">
                                            <i style="color: #fbce32; margin-right: 2px;" class="ti-star"></i>
                                            <p>4.6</p>
                                        </div>
                                        <div class="hotel--bottom">
                                            <div class="hotel-left">
                                                <p class="hotel-title">Pilgrimage Village</p>
                                                <div style="display: flex; margin-right: 2px;" class="hotel-location">
                                                    <i class="ti-location-pin"></i>
                                                    <p>Hue City</p>
                                                </div>
                                            </div>
                                            <div class="hotel-right">
                                                <p class="hotel-price">$136</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="hotel-solution4 hotel-solution">
                                        <div class="rate-hotel">
                                            <i style="color: #fbce32; margin-right: 2px;" class="ti-star"></i>
                                            <p>4.7</p>
                                        </div>
                                        <div class="hotel--bottom">
                                            <div class="hotel-left">
                                                <p class="hotel-title">Kawara My An</p>
                                                <div style="display: flex; margin-right: 2px;" class="hotel-location">
                                                    <i class="ti-location-pin"></i>
                                                    <p>Hue City</p>
                                                </div>
                                            </div>
                                            <div class="hotel-right">
                                                <p class="hotel-price">$181</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="content__hotel--list--row2 content__hotel--list--row">
                                    <div class="hotel-solution5 hotel-solution">
                                        <div class="rate-hotel">
                                            <i style="color: #fbce32; margin-right: 2px;" class="ti-star"></i>
                                            <p>4.8</p>
                                        </div>
                                        <div class="hotel--bottom">
                                            <div class="hotel-left">
                                                <p class="hotel-title">Silk Path Grand</p>
                                                <div style="display: flex; margin-right: 2px;" class="hotel-location">
                                                    <i class="ti-location-pin"></i>
                                                    <p>Hue City</p>
                                                </div>
                                            </div>
                                            <div class="hotel-right">
                                                <p class="hotel-price">$153</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="hotel-solution6 hotel-solution">
                                        <div class="rate-hotel">
                                            <i style="color: #fbce32; margin-right: 2px;" class="ti-star"></i>
                                            <p>4.3</p>
                                        </div>
                                        <div class="hotel--bottom">
                                            <div class="hotel-left">
                                                <p class="hotel-title">Indochine Palace</p>
                                                <div style="display: flex; margin-right: 2px;" class="hotel-location">
                                                    <i class="ti-location-pin"></i>
                                                    <p>Hue City</p>
                                                </div>
                                            </div>
                                            <div class="hotel-right">
                                                <p class="hotel-price">$158</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="hotel-solution7 hotel-solution">
                                        <div class="rate-hotel">
                                            <i style="color: #fbce32; margin-right: 2px;" class="ti-star"></i>
                                            <p>4.5</p>
                                        </div>
                                        <div class="hotel--bottom">
                                            <div class="hotel-left">
                                                <p class="hotel-title">Imperial Hotel</p>
                                                <div style="display: flex; margin-right: 2px;" class="hotel-location">
                                                    <i class="ti-location-pin"></i>
                                                    <p>Hue City</p>
                                                </div>
                                            </div>
                                            <div class="hotel-right">
                                                <p class="hotel-price">$146</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="hotel-solution8 hotel-solution">
                                        <div class="rate-hotel">
                                            <i style="color: #fbce32; margin-right: 2px;" class="ti-star"></i>
                                            <p>4.5</p>
                                        </div>
                                        <div class="hotel--bottom">
                                            <div class="hotel-left">
                                                <p class="hotel-title">Azerai</p>
                                                <div style="display: flex; margin-right: 2px;" class="hotel-location">
                                                    <i class="ti-location-pin"></i>
                                                    <p>Hue City</p>
                                                </div>
                                            </div>
                                            <div class="hotel-right">
                                                <p class="hotel-price">$121</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <p class="content__hotel--seeall">
                                    <a style="text-decoration: none; color:#ffff;" href="/traveltour/html/booking.jsp" >See All</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="content__hotel--review">
                        <p class="content__hotel--review--des">REVIEWS FROM TRAVELER</p>
                        <p class="content__hotel--review--title">Real Experience,<br> Real Review.</p>
                        <div class="content__hotel--review--list">
                            <div class="content__hotel--review--person">
                                <p class="review-apostrophe">"</p>
                                <p class="review-des">
                                    Had a great experience with tour and hotel booking, from search to booking! Our
                                    service is
                                    very professional and smart. Graduate and friendly staff.
                                </p>
                                <div class="review-person">
                                    <div class="review-img">
                                        <img style="
                                             width: 80%;
                                             border-radius: 50%;
                                             "
                                             src="https://www.acfc.com.vn/acfc_wp/wp-content/uploads/2021/07/cach-chup-anh-chan-dung-nam-1.jpeg"
                                             alt="">
                                    </div>
                                    <div class="review-profile">
                                        <p style="font-weight: 700;">Tran Phuc Tien</p>
                                        <p style="color: #929191;">Student</p>

                                    </div>
                                </div>
                            </div>
                            <div class="content__hotel--review--person">
                                <p class="review-apostrophe">"</p>
                                <p class="review-des">
                                    A perfect experience with our booking and tours. Thanks to the professionalism of
                                    the staff,
                                    from searching to booking is quick and convenient. Each itinerary is suggested in
                                    person.
                                </p>
                                <div class="review-person">
                                    <div class="review-img">
                                        <img style="
                                             width: 80%;
                                             border-radius: 50%;
                                             "
                                             src="https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2019/09/large_3bf8713f6055a026c52fbc3d647025ef.jpg"
                                             alt="">
                                    </div>
                                    <div class="review-profile">
                                        <p style="font-weight: 700;">Nguyen Van Anh</p>
                                        <p style="color: #929191;">Doctor</p>

                                    </div>
                                </div>
                            </div>
                            <div class="content__hotel--review--person">
                                <p class="review-apostrophe">"</p>
                                <p class="review-des">
                                    Experience is perfect when using our tour and booking. Made me feel safe,
                                    comfortable and
                                    comfortable. The staff are very enthusiastic.
                                </p>
                                <div class="review-person">
                                    <div class="review-img">
                                        <img style="
                                             width: 80%;
                                             border-radius: 50%;
                                             "
                                             src="https://static.tintuc.com.vn/images/ver3/2020/05/25/1590393348990-1590379676756-98456282-804554020072201-4232647268995432448-o-1-1.jpg"
                                             alt="">
                                    </div>
                                    <div class="review-profile">
                                        <p style="font-weight: 700;">Nguyen Ha My</p>
                                        <p style="color: #929191;">Bloger</p>

                                    </div>
                                </div>
                            </div>
                            <div class="content__hotel--review--person">
                                <p class="review-apostrophe">"</p>
                                <p class="review-des">
                                    My experience with our tour and booking was excellent. The result is perfect and
                                    above all
                                    the staff are very good and friendly.
                                </p>
                                <div class="review-person">
                                    <div class="review-img">
                                        <img style="
                                             width: 80%;
                                             border-radius: 50%;
                                             "
                                             src="https://www.acfc.com.vn/acfc_wp/wp-content/uploads/2021/07/cach-chup-anh-chan-dung-nam-1.jpeg"
                                             alt="">
                                    </div>
                                    <div class="review-profile">
                                        <p style="font-weight: 700;">Nguyen Huy Anh</p>
                                        <p style="color: #929191;">Photographer</p>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="conent__hotel--ask">
                        <div class="conent__hotel--ask--ques">
                            <p class="ask-title">Do you have any question?</p>
                            <p class="ask-des">If you have any question want to ask.<br> We will answer all your
                                question as
                                soon as.</p>
                            <div class="ask-email">
                                <span>
                                    <input class="ask-input" type="text" placeholder="Enter your email">
                                    <button class="ask-btn">Summit</button>
                                </span>
                            </div>
                        </div>
                        <div class="conent__hotel--ask--list">
                            <p class="ask-right-title">Frequently Asked Question</p>
                            <p class="ask-right-question">What city is Imperial City?</p>
                            <p class="ask-right-question">Can I change the flight when I have accident?</p>
                            <p class="ask-right-question">Can I contact to you?</p>
                            <p class="ask-right-question">How to buy a tourist ticket?</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- BEGIN FOOTER  -->
            <div id="footer">
                <div class="footer-display">
                    <div class="footer__title__logo">
                        <div class="footer__title__logo--title">IMPERIAL CITY</div>
                        <p style="width: 75%;
                           font-size: 14px;
                           font-weight: 600;
                           color: #fff;
                           line-height: 2;">The website helps tourists have an overview of Hue before coming to this
                            ancient capital city to travel, learn about dishes and tourist destinations. Allow tours and
                            hotels to plan before arriving in Hue.</p>
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
                        <a class="footer-element" href="./about.jsp">About us</a>
                        <a class="footer-element" href="./news.jsp">News</a>
                        <a class="footer-element" href="./food.jsp">Food</a>
                        <a class="footer-element" href="./contact.jsp">Contact</a>
                    </div>
                    <div class="footer__contact--all">
                        <p style="padding: 12px 0 20px 0;" class="title-footer">Contact Info</p>
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
                            <a class="contact-text-link" href="https://github.com/PTienhocSE/PRJ301_TravelTour">github.com/PTienhocSE/PRJ301_TravelTour</a>
                        </div>
                    </div>
                </div>
                <p style="  color: rgb(202, 202, 202);
                   font-weight: 700;" class="fotter__copyright">Made by <a
                        style="text-decoration: none; color: #3d6196" href="https://github.com/PTienhocSE/PRJ301_TravelTour">Group 4</a></p>

            </div>

        </div>
        <script src="/web/js/main.js"></script>
    </body>


</html>