<%-- 
    Document   : support
    Created on : Aug 12, 2018, 1:24:39 AM
    Author     : Justine Clemente
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <title>UST-CTHM | Support Services</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script type="text/javascript">
            $(window).on('load',function(){
                $('#myModal').modal('show');
            });
        </script>
    </head>
    <body>
        <div class="green-bg header">
            <div>
                <a class="header-link" href="index.html">
                    <div class="row header-content">
                        <div class="col-sm-2">
                            <img class="ust-logo" src="img/ust-logo.png">
                        </div>
                        <div class="col-sm-8 header-text">
                            <p class="lato ust-text">University of Santo Tomas</p><br>
                            <p class="merriweather cthm-text">COLLEGE OF TOURISM AND HOSPITALITY MANAGEMENT</p>
                        </div>
                        <div class="col-sm-2">
                            <img class="cthm-logo" src="img/cthm-logo.png">
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <nav class="navbar navbar-expand-lg white-bg sticky-top lato">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-center" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="index.html" id="HomeLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Home
                        </a>
                        <div class="dropdown-menu" aria-labelledby="HomeLink">
                            <a class="dropdown-item" href="index.html#announcements">Announcements</a>
                            <a class="dropdown-item" href="index.html#news">News and Updates</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="aboutUs.html">About Us</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="TourMgmtLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Tourism Management
                        </a>
                        <div class="dropdown-menu" aria-labelledby="TourMgmtLink">
                        <a class="dropdown-item" href="travelOps.html">Travel Operations and Service Management</a>
                        <a class="dropdown-item" href="recreationLeisure.html">Recreation and Leisure Management</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="HosMgmtLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Hospitality Management
                        </a>
                        <div class="dropdown-menu" aria-labelledby="HosMgmtLink">
                        <a class="dropdown-item" href="culinaryEntrep.html">Culinary Entrepreneurship</a>
                        <a class="dropdown-item" href="hospitalityLead.html">Hospitality Leadership</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="StakeholdersLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Stakeholders
                        </a>
                        <div class="dropdown-menu" aria-labelledby="StakeholdersLink">
                        <a class="dropdown-item" href="students.html">Students</a>
                        <a class="dropdown-item" href="alumni.html">Alumni</a>
                        <a class="dropdown-item" href="industry.html">Industry</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active-tab" href="support.html">Support Service</a>
                    </li>
                </ul>
            </div>
        </nav>

        <div>
            <div>
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block w-100 car-img" src="img/home/car1.jpg" alt="First slide">
                            <div class="carousel-caption d-flex h-100 align-items-center justify-content-center">
                                <h1 class="lato">Make it <b>HAPPEN</b></h1>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100 car-img" src="img/home/car2.jpg" alt="Second slide">
                            <div class="carousel-caption d-flex h-100 align-items-center justify-content-center">
                                <h1 class="lato">Be <b>PART</b> of us</h1>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100 car-img" src="img/home/car3.jpg" alt="Third slide">
                            <div class="carousel-caption d-flex h-100 align-items-center justify-content-center">
                                <h1 class="lato">Share your <b>PASSION</b></h1>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
            <div class="content-wrap">
                <div class="inner-content">
                    <h2 class="merriweather">University Services</h2><hr><br>
                    <div class="row lato">
                        <div class="col-4">
                            <div class="list-group" id="list-tab" role="tablist">
                            <a class="list-group-item list-group-item-action active" id="list-admission-list" data-toggle="list" href="#list-admission" role="tab" aria-controls="admission">Admission</a>
                            <a class="list-group-item list-group-item-action" id="list-swd-list" data-toggle="list" href="#list-swd" role="tab" aria-controls="swd">Student Welfare and Development</a>
                            <a class="list-group-item list-group-item-action" id="list-intl-list" data-toggle="list" href="#list-intl" role="tab" aria-controls="intl">Internationalization</a>
                            <a class="list-group-item list-group-item-action" id="list-comDev-list" data-toggle="list" href="#list-comDev" role="tab" aria-controls="comDev">Community Development</a>
                            <a class="list-group-item list-group-item-action" id="list-ccc-list" data-toggle="list" href="#list-ccc" role="tab" aria-controls="ccc">Counseling and Career Center</a>
                            <a class="list-group-item list-group-item-action" id="list-library-list" data-toggle="list" href="#list-library" role="tab" aria-controls="library">Central Library</a>
                            <a class="list-group-item list-group-item-action" id="list-health-list" data-toggle="list" href="#list-health" role="tab" aria-controls="health">Health Services</a>
                            </div>
                        </div>
                        <div class="col-8">
                            <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="list-admission" role="tabpanel" aria-labelledby="list-admission-list">
                                <h2 class="lato alumni-heading"><b>Admission</b></h2>
                                <p class="lato">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean accumsan, justo in ultrices scelerisque, dui nisl dignissim purus, eu accumsan neque urna eget purus. Donec gravida auctor condimentum. Suspendisse potenti. Aliquam erat volutpat. Aliquam vehicula purus nisi, at efficitur justo vestibulum ut. Praesent ornare tortor eu scelerisque pulvinar. Vivamus id scelerisque leo. Sed lacinia pellentesque est eu accumsan. Proin mauris purus, laoreet ac magna a, gravida finibus ligula. Ut viverra faucibus metus, ut varius turpis tincidunt a.
                                    <br><br>
                                    Duis fermentum erat ac nibh faucibus gravida. Curabitur molestie quam eget sem pretium, non suscipit ante porta. Mauris at turpis at sapien maximus viverra lacinia vel libero. Cras ultrices tellus tellus, nec varius massa pretium et. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut vitae diam id odio consequat ultricies. Suspendisse potenti. Suspendisse iaculis eros id auctor finibus. Etiam at elementum libero. Donec suscipit quis nulla sed sagittis. Etiam porttitor leo eu lacus commodo, ac varius ex suscipit. Aenean posuere vitae risus sit amet viverra. Proin leo metus, cursus sed sapien at, egestas tincidunt tortor. Nunc sapien urna, viverra at dapibus ut, lobortis quis libero. Aenean eget nisi non est congue posuere ut in nisl. Nunc auctor velit sit amet justo pharetra, vel mattis nisi tristique.
                                    <br><br>  
                                    Donec sagittis imperdiet neque quis pretium. Pellentesque nec pharetra enim, sit amet tempor neque. Curabitur pretium, mi in gravida pretium, diam felis mollis urna, a porta purus risus sit amet arcu. Nulla nisi ipsum, malesuada non dictum sagittis, ultricies facilisis enim. Integer pulvinar bibendum lacus, vel tincidunt velit commodo ut. Phasellus vel fringilla tellus, quis posuere quam. Quisque ultricies ex at vestibulum tincidunt. Duis vel dui nunc.
                                </p>
                            </div>
                            <div class="tab-pane fade" id="list-swd" role="tabpanel" aria-labelledby="list-swd-list">
                                <h2 class="lato alumni-heading"><b>Student Welfare and Development</b></h2>
                                <p class="lato">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean accumsan, justo in ultrices scelerisque, dui nisl dignissim purus, eu accumsan neque urna eget purus. Donec gravida auctor condimentum. Suspendisse potenti. Aliquam erat volutpat. Aliquam vehicula purus nisi, at efficitur justo vestibulum ut. Praesent ornare tortor eu scelerisque pulvinar. Vivamus id scelerisque leo. Sed lacinia pellentesque est eu accumsan. Proin mauris purus, laoreet ac magna a, gravida finibus ligula. Ut viverra faucibus metus, ut varius turpis tincidunt a.
                                    <br><br>
                                    Duis fermentum erat ac nibh faucibus gravida. Curabitur molestie quam eget sem pretium, non suscipit ante porta. Mauris at turpis at sapien maximus viverra lacinia vel libero. Cras ultrices tellus tellus, nec varius massa pretium et. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut vitae diam id odio consequat ultricies. Suspendisse potenti. Suspendisse iaculis eros id auctor finibus. Etiam at elementum libero. Donec suscipit quis nulla sed sagittis. Etiam porttitor leo eu lacus commodo, ac varius ex suscipit. Aenean posuere vitae risus sit amet viverra. Proin leo metus, cursus sed sapien at, egestas tincidunt tortor. Nunc sapien urna, viverra at dapibus ut, lobortis quis libero. Aenean eget nisi non est congue posuere ut in nisl. Nunc auctor velit sit amet justo pharetra, vel mattis nisi tristique.
                                    <br><br>  
                                    Donec sagittis imperdiet neque quis pretium. Pellentesque nec pharetra enim, sit amet tempor neque. Curabitur pretium, mi in gravida pretium, diam felis mollis urna, a porta purus risus sit amet arcu. Nulla nisi ipsum, malesuada non dictum sagittis, ultricies facilisis enim. Integer pulvinar bibendum lacus, vel tincidunt velit commodo ut. Phasellus vel fringilla tellus, quis posuere quam. Quisque ultricies ex at vestibulum tincidunt. Duis vel dui nunc.
                                </p>
                            </div>
                            <div class="tab-pane fade" id="list-intl" role="tabpanel" aria-labelledby="list-intl-list">
                                <h2 class="lato alumni-heading"><b>Internationalization</b></h2>
                                <p class="lato">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean accumsan, justo in ultrices scelerisque, dui nisl dignissim purus, eu accumsan neque urna eget purus. Donec gravida auctor condimentum. Suspendisse potenti. Aliquam erat volutpat. Aliquam vehicula purus nisi, at efficitur justo vestibulum ut. Praesent ornare tortor eu scelerisque pulvinar. Vivamus id scelerisque leo. Sed lacinia pellentesque est eu accumsan. Proin mauris purus, laoreet ac magna a, gravida finibus ligula. Ut viverra faucibus metus, ut varius turpis tincidunt a.
                                    <br><br>
                                    Duis fermentum erat ac nibh faucibus gravida. Curabitur molestie quam eget sem pretium, non suscipit ante porta. Mauris at turpis at sapien maximus viverra lacinia vel libero. Cras ultrices tellus tellus, nec varius massa pretium et. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut vitae diam id odio consequat ultricies. Suspendisse potenti. Suspendisse iaculis eros id auctor finibus. Etiam at elementum libero. Donec suscipit quis nulla sed sagittis. Etiam porttitor leo eu lacus commodo, ac varius ex suscipit. Aenean posuere vitae risus sit amet viverra. Proin leo metus, cursus sed sapien at, egestas tincidunt tortor. Nunc sapien urna, viverra at dapibus ut, lobortis quis libero. Aenean eget nisi non est congue posuere ut in nisl. Nunc auctor velit sit amet justo pharetra, vel mattis nisi tristique.
                                    <br><br>  
                                    Donec sagittis imperdiet neque quis pretium. Pellentesque nec pharetra enim, sit amet tempor neque. Curabitur pretium, mi in gravida pretium, diam felis mollis urna, a porta purus risus sit amet arcu. Nulla nisi ipsum, malesuada non dictum sagittis, ultricies facilisis enim. Integer pulvinar bibendum lacus, vel tincidunt velit commodo ut. Phasellus vel fringilla tellus, quis posuere quam. Quisque ultricies ex at vestibulum tincidunt. Duis vel dui nunc.
                                </p>
                            </div>
                            <div class="tab-pane fade" id="list-comDev" role="tabpanel" aria-labelledby="list-comDev-list">
                                <h2 class="lato alumni-heading"><b>Community Development</b></h2>
                                <p class="lato">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean accumsan, justo in ultrices scelerisque, dui nisl dignissim purus, eu accumsan neque urna eget purus. Donec gravida auctor condimentum. Suspendisse potenti. Aliquam erat volutpat. Aliquam vehicula purus nisi, at efficitur justo vestibulum ut. Praesent ornare tortor eu scelerisque pulvinar. Vivamus id scelerisque leo. Sed lacinia pellentesque est eu accumsan. Proin mauris purus, laoreet ac magna a, gravida finibus ligula. Ut viverra faucibus metus, ut varius turpis tincidunt a.
                                    <br><br>
                                    Duis fermentum erat ac nibh faucibus gravida. Curabitur molestie quam eget sem pretium, non suscipit ante porta. Mauris at turpis at sapien maximus viverra lacinia vel libero. Cras ultrices tellus tellus, nec varius massa pretium et. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut vitae diam id odio consequat ultricies. Suspendisse potenti. Suspendisse iaculis eros id auctor finibus. Etiam at elementum libero. Donec suscipit quis nulla sed sagittis. Etiam porttitor leo eu lacus commodo, ac varius ex suscipit. Aenean posuere vitae risus sit amet viverra. Proin leo metus, cursus sed sapien at, egestas tincidunt tortor. Nunc sapien urna, viverra at dapibus ut, lobortis quis libero. Aenean eget nisi non est congue posuere ut in nisl. Nunc auctor velit sit amet justo pharetra, vel mattis nisi tristique.
                                    <br><br>  
                                    Donec sagittis imperdiet neque quis pretium. Pellentesque nec pharetra enim, sit amet tempor neque. Curabitur pretium, mi in gravida pretium, diam felis mollis urna, a porta purus risus sit amet arcu. Nulla nisi ipsum, malesuada non dictum sagittis, ultricies facilisis enim. Integer pulvinar bibendum lacus, vel tincidunt velit commodo ut. Phasellus vel fringilla tellus, quis posuere quam. Quisque ultricies ex at vestibulum tincidunt. Duis vel dui nunc.
                                </p>
                            </div>
                            <div class="tab-pane fade" id="list-ccc" role="tabpanel" aria-labelledby="list-ccc-list">
                                <h2 class="lato alumni-heading"><b>Counseling and Career Center</b></h2>
                                <p class="lato">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean accumsan, justo in ultrices scelerisque, dui nisl dignissim purus, eu accumsan neque urna eget purus. Donec gravida auctor condimentum. Suspendisse potenti. Aliquam erat volutpat. Aliquam vehicula purus nisi, at efficitur justo vestibulum ut. Praesent ornare tortor eu scelerisque pulvinar. Vivamus id scelerisque leo. Sed lacinia pellentesque est eu accumsan. Proin mauris purus, laoreet ac magna a, gravida finibus ligula. Ut viverra faucibus metus, ut varius turpis tincidunt a.
                                    <br><br>
                                    Duis fermentum erat ac nibh faucibus gravida. Curabitur molestie quam eget sem pretium, non suscipit ante porta. Mauris at turpis at sapien maximus viverra lacinia vel libero. Cras ultrices tellus tellus, nec varius massa pretium et. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut vitae diam id odio consequat ultricies. Suspendisse potenti. Suspendisse iaculis eros id auctor finibus. Etiam at elementum libero. Donec suscipit quis nulla sed sagittis. Etiam porttitor leo eu lacus commodo, ac varius ex suscipit. Aenean posuere vitae risus sit amet viverra. Proin leo metus, cursus sed sapien at, egestas tincidunt tortor. Nunc sapien urna, viverra at dapibus ut, lobortis quis libero. Aenean eget nisi non est congue posuere ut in nisl. Nunc auctor velit sit amet justo pharetra, vel mattis nisi tristique.
                                    <br><br>  
                                    Donec sagittis imperdiet neque quis pretium. Pellentesque nec pharetra enim, sit amet tempor neque. Curabitur pretium, mi in gravida pretium, diam felis mollis urna, a porta purus risus sit amet arcu. Nulla nisi ipsum, malesuada non dictum sagittis, ultricies facilisis enim. Integer pulvinar bibendum lacus, vel tincidunt velit commodo ut. Phasellus vel fringilla tellus, quis posuere quam. Quisque ultricies ex at vestibulum tincidunt. Duis vel dui nunc.
                                </p>
                            </div>
                            <div class="tab-pane fade" id="list-library" role="tabpanel" aria-labelledby="list-library-list">
                                <h2 class="lato alumni-heading"><b>Central Library</b></h2>
                                <p class="lato">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean accumsan, justo in ultrices scelerisque, dui nisl dignissim purus, eu accumsan neque urna eget purus. Donec gravida auctor condimentum. Suspendisse potenti. Aliquam erat volutpat. Aliquam vehicula purus nisi, at efficitur justo vestibulum ut. Praesent ornare tortor eu scelerisque pulvinar. Vivamus id scelerisque leo. Sed lacinia pellentesque est eu accumsan. Proin mauris purus, laoreet ac magna a, gravida finibus ligula. Ut viverra faucibus metus, ut varius turpis tincidunt a.
                                    <br><br>
                                    Duis fermentum erat ac nibh faucibus gravida. Curabitur molestie quam eget sem pretium, non suscipit ante porta. Mauris at turpis at sapien maximus viverra lacinia vel libero. Cras ultrices tellus tellus, nec varius massa pretium et. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut vitae diam id odio consequat ultricies. Suspendisse potenti. Suspendisse iaculis eros id auctor finibus. Etiam at elementum libero. Donec suscipit quis nulla sed sagittis. Etiam porttitor leo eu lacus commodo, ac varius ex suscipit. Aenean posuere vitae risus sit amet viverra. Proin leo metus, cursus sed sapien at, egestas tincidunt tortor. Nunc sapien urna, viverra at dapibus ut, lobortis quis libero. Aenean eget nisi non est congue posuere ut in nisl. Nunc auctor velit sit amet justo pharetra, vel mattis nisi tristique.
                                    <br><br>  
                                    Donec sagittis imperdiet neque quis pretium. Pellentesque nec pharetra enim, sit amet tempor neque. Curabitur pretium, mi in gravida pretium, diam felis mollis urna, a porta purus risus sit amet arcu. Nulla nisi ipsum, malesuada non dictum sagittis, ultricies facilisis enim. Integer pulvinar bibendum lacus, vel tincidunt velit commodo ut. Phasellus vel fringilla tellus, quis posuere quam. Quisque ultricies ex at vestibulum tincidunt. Duis vel dui nunc.
                                </p>
                            </div>
                            <div class="tab-pane fade" id="list-health" role="tabpanel" aria-labelledby="list-health-list">
                                <h2 class="lato alumni-heading"><b>Health Services</b></h2>
                                <p class="lato">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean accumsan, justo in ultrices scelerisque, dui nisl dignissim purus, eu accumsan neque urna eget purus. Donec gravida auctor condimentum. Suspendisse potenti. Aliquam erat volutpat. Aliquam vehicula purus nisi, at efficitur justo vestibulum ut. Praesent ornare tortor eu scelerisque pulvinar. Vivamus id scelerisque leo. Sed lacinia pellentesque est eu accumsan. Proin mauris purus, laoreet ac magna a, gravida finibus ligula. Ut viverra faucibus metus, ut varius turpis tincidunt a.
                                    <br><br>
                                    Duis fermentum erat ac nibh faucibus gravida. Curabitur molestie quam eget sem pretium, non suscipit ante porta. Mauris at turpis at sapien maximus viverra lacinia vel libero. Cras ultrices tellus tellus, nec varius massa pretium et. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut vitae diam id odio consequat ultricies. Suspendisse potenti. Suspendisse iaculis eros id auctor finibus. Etiam at elementum libero. Donec suscipit quis nulla sed sagittis. Etiam porttitor leo eu lacus commodo, ac varius ex suscipit. Aenean posuere vitae risus sit amet viverra. Proin leo metus, cursus sed sapien at, egestas tincidunt tortor. Nunc sapien urna, viverra at dapibus ut, lobortis quis libero. Aenean eget nisi non est congue posuere ut in nisl. Nunc auctor velit sit amet justo pharetra, vel mattis nisi tristique.
                                    <br><br>  
                                    Donec sagittis imperdiet neque quis pretium. Pellentesque nec pharetra enim, sit amet tempor neque. Curabitur pretium, mi in gravida pretium, diam felis mollis urna, a porta purus risus sit amet arcu. Nulla nisi ipsum, malesuada non dictum sagittis, ultricies facilisis enim. Integer pulvinar bibendum lacus, vel tincidunt velit commodo ut. Phasellus vel fringilla tellus, quis posuere quam. Quisque ultricies ex at vestibulum tincidunt. Duis vel dui nunc.
                                </p>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer -->
        <footer class="container-fluid green-bg">
            <div class="row footer-text-wrap">
                <div class="col-sm-6 footer-left lato white-text">
                    <h4><b>Contact Us</b></h4>
                    <p>Telephone:<br>+63-2-406-1611 loc. 4488</p>
                </div>
                <div class="col-sm-6 footer-right lato white-text">
                    <h4><b>Address</b></h4>
                    <p>Office of the Dean<br>
                        G/F, Albertus Magnus Building<br>
                        University of Santo Tomas<br>
                        España Boulevard, Sampaloc, Manila 1008
                    </p>
                </div>
            </div><br>
        </footer>
         <!-- jQuery first, then Popper.js, then Bootstrap JS -->
         <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
         <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </body>
</html>
