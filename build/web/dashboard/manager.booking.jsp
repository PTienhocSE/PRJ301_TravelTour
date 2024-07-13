<%-- 
    Document   : manager.booking
    Created on : Jul 14, 2024, 12:02:18 AM
    Author     : phuct
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

                    <div class="dropdown border-start">
                        <div class="dropdown-menu dropdown-menu-end shadow-lg">
                            <h5 class="fw-semibold px-3 py-2 text-primary">Messages</h5>
                            <div class="dropdown-item">
                                <div class="d-flex py-2 border-bottom">
                                    <img src="assets/images/user3.png" class="img-3x me-3 rounded-5" alt="Admin Theme" />
                                    <div class="m-0">
                                        <h6 class="mb-1 fw-semibold">Angelia Payne</h6>
                                        <p class="mb-1">
                                            Membership has been ended.
                                        </p>
                                        <p class="small m-0 text-secondary">Today, 07:30pm</p>
                                    </div>
                                </div>
                            </div>
                            <div class="dropdown-item">
                                <div class="d-flex py-2 border-bottom">
                                    <img src="assets/images/user1.png" class="img-3x me-3 rounded-5" alt="Admin Theme" />
                                    <div class="m-0">
                                        <h6 class="mb-1 fw-semibold">Clyde Fowler</h6>
                                        <p class="mb-1">
                                            Congratulate, James for new job.
                                        </p>
                                        <p class="small m-0 text-secondary">Today, 08:00pm</p>
                                    </div>
                                </div>
                            </div>
                            <div class="dropdown-item">
                                <div class="d-flex py-2">
                                    <img src="assets/images/user4.png" class="img-3x me-3 rounded-5" alt="Admin Theme" />
                                    <!-- <div class="m-0">
                                            <h6 class="mb-1 fw-semibold">Sophie Michiels</h6>
                                            <p class="mb-1">
                                                    Lewis added new schedule release.
                                            </p>
                                            <p class="small m-0 text-secondary">Today, 09:30pm</p>
                                    </div> -->
                                </div>
                            </div>
                            <div class="d-grid mx-3 my-1">
                                <a href="javascript:void(0)" class="btn btn-primary">View all</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="dropdown ms-2">
                    <a id="userSettings" class="dropdown-toggle d-flex py-2 align-items-center text-decoration-none" href="#!"
                       role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="assets/images/user.png" class="rounded-2 img-3x" alt="Bootstrap Gallery" />
                        <span class="ms-2 text-truncate d-lg-block d-none">Anne Santiago</span>
                    </a>

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
                <div class="app-hero-header d-flex align-items-start">

                    <!-- Breadcrumb start -->
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <i class="bi bi-house lh-1"></i>
                            <a href="index.html" class="text-decoration-none">Home</a>
                        </li>
                        <li class="breadcrumb-item" aria-current="page">Booking</li>
                    </ol>
                    <!-- Breadcrumb end -->

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
    <script src="assets/vendor/apex/custom/dash2/sparkline.js"></script>
    <script src="assets/vendor/apex/custom/dash2/traffic.js"></script>
    <script src="assets/vendor/apex/custom/dash2/active-users.js"></script>
    <script src="assets/vendor/apex/custom/dash2/statistics.js"></script>

    <!-- Newsticker JS -->
    <script src="assets/vendor/newsticker/newsTicker.min.js"></script>
    <script src="assets/vendor/newsticker/custom-newsTicker.js"></script>

    <!-- Custom JS files -->
    <script src="assets/js/custom.js"></script>
</body>

</html>