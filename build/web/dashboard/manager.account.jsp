<%-- 
    Document   : manager.account
    Created on : Jul 14, 2024, 12:00:07 AM
    Author     : phuct
--%>
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
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>Manager Imperial City</title>

        <!-- Meta -->
        <meta name="description" content="Marketplace for Bootstrap Admin Dashboards" />
        <meta name="author" content="Bootstrap Gallery" />
        <link rel="canonical" href="https://www.bootstrap.gallery/">
        <meta property="og:url" content="https://www.bootstrap.gallery">
        <meta property="og:title" content="Admin Templates - Dashboard Templates | Bootstrap Gallery">
        <meta property="og:description" content="Marketplace for Bootstrap Admin Dashboards">
        <meta property="og:type" content="Website">
        <meta property="og:site_name" content="Bootstrap Gallery">
        <link rel="shortcut icon" href="assets/images/favicon.svg" />

        <!-- *************
                ************ CSS Files *************
        ************* -->
        <link rel="stylesheet" href="assets/fonts/bootstrap/bootstrap-icons.css" />
        <link rel="stylesheet" href="assets/css/main.min.css" />
        <link rel="stylesheet" href="assets/css/main.css" />


        <!-- *************
                ************ Vendor Css Files *************
        ************ -->

        <!-- Scrollbar CSS -->
        <link rel="stylesheet" href="assets/vendor/overlay-scroll/OverlayScrollbars.min.css" />

        <!-- Toastify CSS -->
        <link rel="stylesheet" href="assets/vendor/toastify/toastify.css" />

    </head>

    <body>

        <!-- Page wrapper start -->
        <div class="page-wrapper">

            <!-- App header starts -->
            <div class="app-header d-flex align-items-center">

                <!-- Toggle buttons start -->
                <div class="d-flex">
                    <button class="toggle-sidebar" id="toggle-sidebar">
                        <i class="bi bi-list lh-1"></i>
                    </button>
                    <button class="pin-sidebar" id="pin-sidebar">
                        <i class="bi bi-list lh-1"></i>
                    </button>
                </div>
                <!-- Toggle buttons end -->

                <!-- App brand starts -->
                <div class="app-brand py-2 ms-3">
                    <a href="/traveltour/index.html" class="d-sm-block d-none">
                        IMPERIAL CITY
                    </a>
                </div>
                <!-- App brand ends -->

                <!-- App header actions start -->
                <div class="header-actions col">

                    <div class="dropdown ms-2">
                        <a id="userSettings" class="dropdown-toggle d-flex py-2 align-items-center text-decoration-none" href="#!"
                           role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <img src="assets/images/user.png" class="rounded-2 img-3x" alt="Bootstrap Gallery" />
                            <span class="ms-2 text-truncate d-lg-block d-none"><%= displayName %></span>
                        </a>
                    </div>
                </div>
            </div>
            <!-- App header actions end -->

        </div>
        <!-- App header ends -->

        <!-- Main container start -->
        <div class="main-container">

            <!-- Sidebar wrapper start -->
            <nav id="sidebar" class="sidebar-wrapper">

                <!-- Sidebar profile starts -->
                <div class="shop-profile">
                    <p class="mb-1 fw-bold text-primary">Inperial City</p>
                    <p class="m-0">Book Tour Hue City, Viet Nam</p>
                </div>
                <!-- Sidebar profile ends -->

                <!-- Sidebar menu starts -->
                <div class="sidebarMenuScroll">
                    <ul class="sidebar-menu">
                        <li class="active current-page">
                            <a href="/traveltour/dashboard/manager.account.jsp">
                                <i class="bi bi-pie-chart"></i>
                                <span class="menu-text">Account</span>
                            </a>
                        </li>
                        <li>
                            <a href="/traveltour/dashboard/manager.booking.jsp">
                                <i class="bi bi-bar-chart-line"></i>
                                <span class="menu-text">Booking</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- Sidebar menu ends -->

            </nav>
            <!-- Sidebar wrapper end -->

            <!-- App container starts -->
            <div class="app-container">
                <!-- App hero header starts -->
                <div class="app-hero-header d-flex align-items-center">
                    <!-- Breadcrumb start -->
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <i class="bi bi-house lh-1 pe-3 me-3 border-end border-dark"></i>
                            <a href="index.html" class="text-decoration-none">Home</a>
                        </li>
                        <li class="breadcrumb-item text-secondary" aria-current="page">
                            Account
                        </li>
                    </ol>
                    <!-- Breadcrumb end -->

                    <!-- Sales stats start -->
                    <!-- <div class="ms-auto d-lg-flex d-none flex-row">
                            <div class="d-flex flex-row gap-2">
                                    <button class="btn btn-sm btn-primary">Today</button>
                                    <button class="btn btn-sm btn-white">7d</button>
                                    <button class="btn btn-sm btn-white">2w</button>
                                    <button class="btn btn-sm btn-white">1m</button>
                                    <button class="btn btn-sm btn-white">3m</button>
                                    <button class="btn btn-sm btn-white">6m</button>
                                    <button class="btn btn-sm btn-white">1y</button>
                            </div>
                    </div> -->
                    <!-- Sales stats end -->

                </div>
                <!-- App Hero header ends -->

                <!-- App body starts -->
                <div class="app-body">


                </div>
                <!-- App body ends -->

                <!-- App footer start -->
                <div class="app-footer">
                    <span>© Bootstrap Gallery 2023</span>
                </div>
                <!-- App footer end -->

            </div>
            <!-- App container ends -->

        </div>
        <!-- Main container end -->

    </div>
    <!-- Page wrapper end -->

    <!-- *************
            ************ JavaScript Files *************
    ************* -->
    <!-- Required jQuery first, then Bootstrap Bundle JS -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/moment.min.js"></script>

    <!-- *************
            ************ Vendor Js Files *************
    ************* -->

    <!-- Overlay Scroll JS -->
    <script src="assets/vendor/overlay-scroll/jquery.overlayScrollbars.min.js"></script>
    <script src="assets/vendor/overlay-scroll/custom-scrollbar.js"></script>

    <!-- Toastify JS -->
    <script src="assets/vendor/toastify/toastify.js"></script>
    <script src="assets/vendor/toastify/custom.js"></script>

    <!-- Apex Charts -->
    <script src="assets/vendor/apex/apexcharts.min.js"></script>
    <script src="assets/vendor/apex/custom/dash1/visitors.js"></script>
    <script src="assets/vendor/apex/custom/dash1/sales.js"></script>
    <script src="assets/vendor/apex/custom/dash1/sparkline.js"></script>
    <script src="assets/vendor/apex/custom/dash1/tasks.js"></script>
    <script src="assets/vendor/apex/custom/dash1/income.js"></script>

    <!-- Custom JS files -->
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/todays-date.js"></script>
</body>

</html>
