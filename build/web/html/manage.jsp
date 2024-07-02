<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
  <!-- Nucleo Icons -->
  <link href="../assets/css/nucleo-icons.css" rel="stylesheet" />
  <link href="../assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <link href="../assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link id="pagestyle" href="../assets/css/argon-dashboard.css?v=2.0.4" rel="stylesheet" />
</head>

<body class="g-sidenav-show   bg-gray-100">
    <!-- Navbar -->
     <div id="header">

                <!-- BEGIN NAV  -->
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
                            <a style="border-right: 1px solid white;;" href="">Login</a>
                            <a href="">Register</a>
                        </div>
                    </div>
                    <div class="bignav">
                        <div class="bignav__namecity">
                            <a href="/traveltour/index.html" style="
                               text-decoration: none;
                               color: white;
                               ">IMPERIAL CITY</a>
                        </div>
                        <div class="bignav__selection">
                            <ul class="bignav__selection--list">
                                <li><a href="/traveltour/index.jsp">Home</a></li>
                                <li><a href="/traveltour/html/about.jsp">About</a></li>
                                <!--<li><a href="/traveltour/html/news.jsp">News</a></li>-->
                                <li><a href="/traveltour/html/booking.jsp">Booking</a></li>
                                <li><a href="/traveltour/manage">Manage</a></li>
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

    <!-- End Navbar -->
    </br></br></br></br>

    
    <div class="container-fluid py-4">
      <div class="row">
        <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
          <div class="card">
            <div class="card-body p-3">
              <div class="row">
                <div class="col-8">
                  <div class="numbers">
                      <p class="text-sm mb-0 text-uppercase font-weight-bold">Total Revenue</p>
                    <h5 class="font-weight-bolder">
                    <c:out value="${sessionScope.totalAmount}" />
                    </h5>
                    <p class="mb-0">
                      <span class="text-success text-sm font-weight-bolder">+55%</span>
                      since yesterday
                    </p>
                  </div>
                </div>
                <div class="col-4 text-end">
                  <div class="icon icon-shape bg-gradient-primary shadow-primary text-center rounded-circle">
                    <i class="ni ni-money-coins text-lg opacity-10" aria-hidden="true"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
          <div class="card">
            <div class="card-body p-3">
              <div class="row">
                <div class="col-8">
                  <div class="numbers">
                    <p class="text-sm mb-0 text-uppercase font-weight-bold">Number Of Users</p>
                    <h5 class="font-weight-bolder">
                      <c:out value="${sessionScope.numberOfUsers}" />
                    </h5>
                    <p class="mb-0">
                      <span class="text-success text-sm font-weight-bolder">+3%</span>
                      since last week
                    </p>
                  </div>
                </div>
                <div class="col-4 text-end">
                  <div class="icon icon-shape bg-gradient-danger shadow-danger text-center rounded-circle">
                    <i class="ni ni-world text-lg opacity-10" aria-hidden="true"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
          <div class="card">
            <div class="card-body p-3">
              <div class="row">
                <div class="col-8">
                  <div class="numbers">
                    <p class="text-sm mb-0 text-uppercase font-weight-bold">Number of Booking</p>
                    <h5 class="font-weight-bolder">
                      <c:out value="${sessionScope.numberOfBooking}" />
                    </h5>
                    <p class="mb-0">
                      <span class="text-danger text-sm font-weight-bolder">-2%</span>
                      since last quarter
                    </p>
                  </div>
                </div>
                <div class="col-4 text-end">
                  <div class="icon icon-shape bg-gradient-success shadow-success text-center rounded-circle">
                    <i class="ni ni-paper-diploma text-lg opacity-10" aria-hidden="true"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6">
          <div class="card">
            <div class="card-body p-3">
              <div class="row">
                <div class="col-8">
                  <div class="numbers">
                    <p class="text-sm mb-0 text-uppercase font-weight-bold">The Most Popular Tour</p>
                    <h5 class="font-weight-bolder" style="font-size: 10px">
                            <c:out value="${sessionScope.theMostTour}" />
                    </h5>
                    <p class="mb-0">
                      <span class="text-success text-sm font-weight-bolder">+5%</span> than last month
                    </p>
                  </div>
                </div>
                <div class="col-4 text-end">
                  <div class="icon icon-shape bg-gradient-warning shadow-warning text-center rounded-circle">
                    <i class="ni ni-cart text-lg opacity-10" aria-hidden="true"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row mt-4">
        <div class="col-lg-7 mb-lg-0 mb-4">
          <div class="card z-index-2 h-100">
            <div class="card-header pb-0 pt-3 bg-transparent">
              <h6 class="text-capitalize">Sales overview</h6>
              <p class="text-sm mb-0">
                <i class="fa fa-arrow-up text-success"></i>
                <span class="font-weight-bold">4% more</span> in 2024
              </p>
            </div>
            <div class="card-body p-3">
              <div class="chart">
                <canvas id="chart-line" class="chart-canvas" height="300"></canvas>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-5">
          <div class="card card-carousel overflow-hidden h-100 p-0">
            <div id="carouselExampleCaptions" class="carousel slide h-100" data-bs-ride="carousel">
              <div class="carousel-inner border-radius-lg h-100">
                <div class="carousel-item h-100 active" style="background-image: url('../assets/img/pilgrimage.jpg');
      background-size: cover;">
                  <div class="carousel-caption d-none d-md-block bottom-0 text-start start-0 ms-5">
                    <div class="icon icon-shape icon-sm bg-white text-center border-radius-md mb-3">
                      <i class="ni ni-camera-compact text-dark opacity-10"></i>
                    </div>
                    <h5 class="text-white mb-1">Hue</h5>
                    <p>Luxurious and comfortable resorts.</p>
                  </div>
                </div>
                <div class="carousel-item h-100" style="background-image: url('../assets/img/nonphucam.jpg');
      background-size: cover;">
                  <div class="carousel-caption d-none d-md-block bottom-0 text-start start-0 ms-5">
                    <div class="icon icon-shape icon-sm bg-white text-center border-radius-md mb-3">
                      <i class="ni ni-bulb-61 text-dark opacity-10"></i>
                    </div>
                    <h5 class="text-white mb-1">Imperial City</h5>
                    <p>Traditional craft villages rich in ethnic culture.</p>
                  </div>
                </div>
                <div class="carousel-item h-100" style="background-image: url('../assets/img/Chuon Lagoon.jpg');
      background-size: cover;">
                  <div class="carousel-caption d-none d-md-block bottom-0 text-start start-0 ms-5">
                    <div class="icon icon-shape icon-sm bg-white text-center border-radius-md mb-3">
                      <i class="ni ni-trophy text-dark opacity-10"></i>
                    </div>
                    <h5 class="text-white mb-1">Share with your friends!</h5>
                    <p>Unprecedented exciting experiences that create lasting memories.</p>
                  </div>
                </div>
              </div>
              <button class="carousel-control-prev w-5 me-3" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
              </button>
              <button class="carousel-control-next w-5 me-3" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
              </button>
            </div>
          </div>
        </div>
      </div>
      </div>
                    </br></br></br></br></br>
    
  </main>
  <!--   Core JS Files   -->
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap.min.js"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="../assets/js/plugins/smooth-scrollbar.min.js"></script>
  <script src="../assets/js/plugins/chartjs.min.js"></script>
  <script>
    var ctx1 = document.getElementById("chart-line").getContext("2d");

    var gradientStroke1 = ctx1.createLinearGradient(0, 230, 0, 50);

    gradientStroke1.addColorStop(1, 'rgba(94, 114, 228, 0.2)');
    gradientStroke1.addColorStop(0.2, 'rgba(94, 114, 228, 0.0)');
    gradientStroke1.addColorStop(0, 'rgba(94, 114, 228, 0)');
    new Chart(ctx1, {
      type: "line",
      data: {
        labels: ["Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
        datasets: [{
          label: "Revenue",
          tension: 0.4,
          borderWidth: 0,
          pointRadius: 0,
          borderColor: "#5e72e4",
          backgroundColor: gradientStroke1,
          borderWidth: 3,
          fill: true,
          data: [50, 40, 300, 220, 500, 250, 400, 230, 500],
          maxBarThickness: 6

        }],
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: {
            display: false,
          }
        },
        interaction: {
          intersect: false,
          mode: 'index',
        },
        scales: {
          y: {
            grid: {
              drawBorder: false,
              display: true,
              drawOnChartArea: true,
              drawTicks: false,
              borderDash: [5, 5]
            },
            ticks: {
              display: true,
              padding: 10,
              color: '#fbfbfb',
              font: {
                size: 11,
                family: "Open Sans",
                style: 'normal',
                lineHeight: 2
              },
            }
          },
          x: {
            grid: {
              drawBorder: false,
              display: false,
              drawOnChartArea: false,
              drawTicks: false,
              borderDash: [5, 5]
            },
            ticks: {
              display: true,
              color: '#ccc',
              padding: 20,
              font: {
                size: 11,
                family: "Open Sans",
                style: 'normal',
                lineHeight: 2
              },
            }
          },
        },
      },
    });
  </script>
  <script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
      var options = {
        damping: '0.5'
      }
      Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
  </script>
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
  <!-- Github buttons -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/argon-dashboard.min.js?v=2.0.4"></script>
</body>

</html>