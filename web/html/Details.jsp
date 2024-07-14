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
    }
%>
<%
    // Lấy thông tin người dùng từ session
    Account account = (Account) session.getAttribute("account");
    String displayName = (account != null) ? account.getUsername() : ""; // Lấy tên người dùng, nếu không có sẽ hiển thị "Login"
    int isAdmin = (account != null) ? account.getIsAdmin() : 0; // Get isAdmin value or set to 0 if not logged in
%>
<html>
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
        <link rel="stylesheet" href="/traveltour/assets/css/style/style_details.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <script src="/web/js/main.js"></script>
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
                            <li><a href="/traveltour/dashboard/manager.account.jsp">Manager</a></li> <!-- Show "Manager" link if admin -->
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
        <div id="detail">
            <div class="detail__info">
                <div class="detail-left col-md-7">
                    <div class="detail__tourcode">
                        <i class="ti-ticket"></i>
                        <%= request.getAttribute("tourCode") %>
                    </div>
                    <div class="details__title">
                        <%= request.getAttribute("title") %>
                    </div>
                </div>
                <div class="detail-right col-md-3">
                    <div class="detail__price">
                        <p style="color: red; font-weight: 700;"><%= request.getAttribute("price") %> vnd</p>
                        /pass
                    </div>
                    <form action="/traveltour/OrderServlet" method="GET">
                        <input type="hidden" name="tourCode" value="<%= request.getAttribute("tourCode") %>">
                        <input type="hidden" name="title" value="<%= request.getAttribute("title") %>">
                        <input type="hidden" name="price" value="<%= request.getAttribute("price") %>">
                        <input type="hidden" name="duration" value="<%= request.getAttribute("duration") %>">
                        <input type="hidden" name="travelTime" value="<%= request.getAttribute("travelTime") %>">
                        <input type="hidden" name="imagePath" value="<%= request.getAttribute("imagePath") %>">
                        <input type="hidden" name="departurePlace" value="<%= request.getAttribute("departurePlace") %>">
                        <button class="detail__price--book" type="submit">Booking now</button>
                    </form>
                    <a class="detail__price--contact" href="#">Contact us</a>
                </div>
            </div>
            <div class="detail__img">
                <div class="detail__img--left col-md-8">
                    <!-- Change img from database -->
                    <img class="imgdetail-left" src="<%= request.getAttribute("imagePath") %>" alt="">
                </div>
                <!-- Defalt img not change -->
                <div class="detail__img--right col-md-3">
                    <img class="imgdetail-right" src="https://lh3.googleusercontent.com/pw/AP1GczM3dKi3W960UWWfvbMXqGEBVz4Lrc6E8oBcpAqyDbk7SsZBNPwGAEmVw54MAGkdHMaS-kZHBvfEP8aNmajVDcig6GexITbVgOsMvHicK306ctqeYA26nEsH96QD1Q4t3W8nKDH4EDapWxKQD7ruCzPl=w787-h660-s-no?authuser=0" alt="default-img">
                    <img class="imgdetail-right" src="https://lh3.googleusercontent.com/pw/AP1GczMXbIXXArziFYwEF9jvL1o-RhhOJ5QBjcV-1dW1J6DC2CL2Ur3riE2QJqGEy22X6faJ0XjWrjN_LERMj96NCg8iwsEjFwM4sHcEXz5oqETyI45ULAYsvUJ0OoIdoVGx8wdng37UvIQZ8LVA4Rs-QnqI=w787-h660-s-no?authuser=0" alt="default-img">    
                </div>
            </div>
            <div class="detail__des">
                <div class="detail__des--left col-md-6">
                    <!-- Change from database -->
                    <p>Duration <p style="font-weight: 700;"><%= request.getAttribute("duration") %></p></p>
                    <p>Time travel <p style="font-weight: 700;"><%= request.getAttribute("travelTime") %></p></p>
                    <p>Departure Point: <p style="font-weight: 700;"><%= request.getAttribute("departurePlace") %></p></p>
                </div>
                <div class="detail__des--right col-md-6">
                    <div class="detail__des--row col-md-6">
                        <div class="detail__des--item">
                            <i style="font-size: 30px;" class="ti-car"></i>
                            <p>Transportation</p>
                            <p>Airplane, Passenger Car</p>
                        </div>
                        <div class="detail__des--item">
                            <i style="font-size: 30px;" class="ti-time"></i>
                            <p>Ideal time</p>
                            <p>All year round</p>
                        </div>
                    </div>    
                    <div class="detail__des--row col-md-6">
                        <div class="detail__des--item">
                            <i style="font-size: 30px;" class="ti-cup"></i>
                            <p>Gastronomy</p>
                            <p>Breakfast buffet, According to the menu</p>
                        </div>
                        <div class="detail__des--item">
                            <i style="font-size: 30px;" class="ti-user"></i>
                            <p>Niche Audience</p>
                            <p>Elderly, Couples, Multigenerational Families, Youth</p>
                        </div>
                    </div>                      
                </div>
            </div>
            <div class="detail__plan">
                <div class="detail__plan--title">
                    ITINERARY
                </div>
                <div>
                    <h3 id="day-00">Day 1 - HO CHI MINH CITY - DA NANG - HUE (Lunch, Dinner)</h3>
                    <div class="excerpt"><span class="line"></span>
                        <div>

                            <title></title>

                            <p style="text-align:justify">
                                Guests gather at the Domestic Departure Terminal, Tan Son Nhat Airport, where Vietravel guides will assist them with check-in procedures for their flight to <strong>Da Nang</strong>. Upon arrival at Da Nang airport, guests will start their tour with a visit to:
                                <br><br>
                                <strong>- Son Tra Peninsula and Linh Ung Pagoda:</strong> home to the tallest statue of Avalokitesvara Bodhisattva in Vietnam.
                                <br><br>
                                <strong>- Lap An Lagoon:</strong> enjoy the view of clouds floating over the mountain peaks surrounding the lagoon.
                                <br><br>
                                <strong>- VietPearl Pearl:</strong> a familiar destination for the people of Hue, known for sourcing high-quality pearls and offering the most exquisite products for guests to experience a touch of luxury.
                                <br><br>
                                <strong>- The Imperial City (Dai Noi):</strong> the ancient palace of the 13 Nguyen dynasty emperors, featuring attractions like Ngo Mon Gate, Thai Hoa Palace, Forbidden Purple City, The Mieu Temple, Hien Lam Pavilion, Nine Dynastic Urns, and the Hue Royal Antiquities Museum.
                                <br><br>
                                <strong>- Thien Mu Pagoda:</strong> considered the symbol of Hue, this pagoda preserves many valuable artifacts, both historical and artistic.
                                <br><br>
                                <strong>- Night Stroll:</strong> Experience the vibrant night atmosphere of Hue at the walking street along the Perfume River, harmonizing with the shimmering Truong Tien Bridge. Enjoy street food like bánh mì lọc (Hue-style sandwich) and Hue sweet soup, and observe dragon boats floating on the river with the echo of Hue folk songs. Explore the bustling nightlife of the Western Quarter with numerous busy restaurants and souvenir shops.
                                <br><br>
                                The group will return to the hotel and check in for a free evening.
                            </p>

                            <p style="text-align:justify"><strong>Overnight in Hue.</strong></p>

                        </div>
                    </div>

                </div>
                <div>
                    <h3 id="day-01">Day 2 - HUE - LA VANG - PHONG NHA CAVE (Breakfast, Lunch, Dinner)</h3>
                    <div class="excerpt"><span class="line"></span>
                        <div>

                            <title></title>

                            <p style="text-align:justify">
                                Enjoy breakfast at the hotel. Guests will depart early for Quang Binh, with a stop to visit:
                                <br><br>
                                <strong>- La Vang Holy Land:</strong> one of the four minor basilicas of La Vang in Vietnam.
                                <br><br>
                                <em><span style="color:#c0392b"><strong>(<u>Note:</u> From August 8 to August 16 each year, La Vang Holy Land hosts the annual "Our Lady of La Vang Pilgrimage Festival," so tours during this period will not visit La Vang.)</strong></span></em>
                            </p>

                            <p style="text-align:justify">
                                <strong>- Phong Nha Cave:</strong> located within the Phong Nha - Ke Bang World Natural Heritage site, considered a fairyland with the longest underground river and limestone mountain system in the world.
                                <br><br>
                                The group will return to Hue around 20:00, and guests will have free time to rest.
                            </p>

                            <p style="text-align:justify">
                                <strong>Overnight in Hue.</strong>
                                <br><br>
                                <span style="color:#c0392b"><em><strong><u>Note:</u> If guests choose not to go to Quang Binh, they can stay in Hue for free sightseeing and relaxation. Please inform us of your request before final payment to receive a discount of 400,000 VND per adult. Guests will be responsible for their own lunch and dinner costs and entrance fees to other attractions in the Ancient Capital.</strong></em></span>
                            </p>

                        </div>
                    </div>
                </div>      
                <div>
                    <h3 id="day-02">Day 3 - HUE - DANANG - BA NA HILLS - HOI AN ANCIENT TOWN (Breakfast, afternoon)</h3>
                    <div class="excerpt"><span class="line"></span>
                        <div>
                            <title></title>
                            <p style="text-align:justify">Enjoy breakfast at the hotel. Transfer to Danang, with stops along the way:</p>
                            <p style="text-align:justify"><strong>- Thai Ha Eucalyptus Oil:</strong> Hue is famous for its eucalyptus oil, known nationwide for its wonderful effects, being gentle and safe for all ages, helping to relieve fatigue, chronic pain, and improving sleep quality, etc.</p>
                            <p style="text-align:justify"><strong>- Ba Na Hills Tour<em> (cable car &amp; lunch at your own expense)</em>:</strong> Experience the cool climate of Dalat in Central Vietnam, explore Linh Ung Pagoda, Debay Wine Cellar, Le Jardin D’Amour flower garden, the new spiritual area of Ba Na with Linh Tu Temple, Fantasy Park entertainment area, and freely take photos at the famous Golden Bridge.</p>
                            <p style="text-align:justify"><strong>Lunch at Ba Na Hills at your own expense</strong>. Then continue sightseeing until it's time to descend by cable car.</p>
                            <p style="text-align:justify">In the afternoon, visit:</p>
                            <p style="text-align:justify"><strong>- Hoi An Ancient Town:</strong> Japanese Covered Bridge, Phung Hung Ancient House, Phuc Kien Assembly Hall, Handicraft Workshop,... Freedom to release lanterns on the Hoai River for health, peace, and prosperity in the new year<strong><em> (expenses at your own cost)</em></strong>.</p>
                            <p style="text-align:justify">Return to Danang, check in to the hotel, and free time to relax.</p>
                            <p style="text-align:justify"><strong>Overnight in Danang.</strong></p>
                        </div>
                    </div>
                </div>
                <div>
                    <h3 id="day-03">Day 4 - DANANG - HO CHI MINH CITY (Breakfast)</h3>
                    <div class="excerpt"><span class="line"></span>
                        <div>
                            <title></title>
                            <p style="text-align:justify">Enjoy breakfast at the hotel. Free time to stroll around, experiencing the fresh air and peaceful scenery in the early morning.</p>
                            <p style="text-align:justify"><strong>- Buy local specialties at Qua Mien Trung:</strong> with over 2000 local products from Danang, Central Vietnam, and nearby regions, including notable items like beef sausage, dried beef, dried squid, dried fish maw, etc.</p>
                            <p style="text-align:justify">Transfer to Danang airport for your flight back to Ho Chi Minh City. Farewell and end of the tour at Tan Son Nhat airport.</p>
                            <p style="text-align:center">-----------------o0o0o0o0o--------------</p>
                            <p style="text-align:justify"><strong>Notes:</strong><br>
                                - The itinerary may change depending on actual conditions.<br>
                                - Sightseeing activities (beach bathing, flower viewing, experiences, etc.) are highly weather-dependent, which is beyond our control.<br>
                                - Hotels may be located further from the city center during peak seasons.</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>                
    </div>
</body>
</html>