<%-- 
    Document   : profile
    Created on : Oct 6, 2018, 1:51:44 AM
    Author     : Justine Clemente
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="bean.AlumniProfile"%>
<%@page import="bean.Image"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Alumni - Log In</title>
        <!-- Font Awesome Icons -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        
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
    <body class="bigger-font">
       <!-- The social media icon bar -->
        <div class="icon-bar">
            <a href="#" class="facebook"><i class="fab fa-facebook"></i></a> 
            <a href="#" class="twitter"><i class="fab fa-twitter"></i></a> 
            <a href="#" class="google"><i class="fab fa-google"></i></a> 
            <a href="#" class="linkedin"><i class="fab fa-linkedin"></i></a>
            <a href="#" class="youtube"><i class="fab fa-youtube"></i></a> 
        </div>
        <div>
            <img class="header-img img-fluid" src="ImageServlet?imgId=${headerimage.image.imageId}" />
        </div>
        <div class="white-bg navco">
            <nav class="navbar navbar-expand-lg sticky-top lato">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#mainNavbarCollapse">
                    &#9776;
                </button>
                <div class="collapse navbar-collapse navbar-toggleable-md justify-content-center" id="mainNavbarCollapse">                    
                    <ul class="nav navbar-nav pull-lg-right">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="home">
                                Home
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="news">News</a>
                        </li>
                        <!-- <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="news" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                News
                            </a>
                            <div class="dropdown-menu" aria-labelledby="HomeLink">
                                <a class="dropdown-item" href="news.html">News and Updates</a>
                                <a class="dropdown-item" href="events.html">Events</a>
                            </div>
                        </li> -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="TourMgmtLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Tourism Management
                            </a>
                            <div class="dropdown-menu" aria-labelledby="TourMgmtLink">
                            <a class="dropdown-item" href="courses?course_id=1&major_id=1">Travel Operations and Service Management</a>
                            <a class="dropdown-item" href="courses?course_id=1&major_id=2">Recreation and Leisure Management</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="HosMgmtLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Hospitality Management
                            </a>
                            <div class="dropdown-menu" aria-labelledby="HosMgmtLink">
                                <a class="dropdown-item" href="courses?course_id=2&major_id=3">Culinary Entrepreneurship</a>
                                <a class="dropdown-item" href="courses?course_id=2&major_id=4">Hospitality Leadership</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="StakeholdersLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Stakeholders
                            </a>
                            <div class="dropdown-menu" aria-labelledby="StakeholdersLink">
                            <a class="dropdown-item" href="students">Students</a>
                            <a class="dropdown-item" href="alumni">Alumni</a>
                            <a class="dropdown-item" href="industry.jsp">Industry</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="studentservices">Support Service</a>
                        </li>
                        <c:if test="${alumni.firstName!=null}">
                        <li class="nav-item">
                            <a class="nav-link  active-tab" href="profile.jsp">Profile</a>
                        </li>
                        </c:if>
                    </ul>
                </div>
            </nav>
        </div>

        <div>
            <div class="content-wrap">
                <div class="inner-content">
                    <h2 class="merriweather">Alumni Profile</h2><hr><br>
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-12">
                                    <table class="table-sm">
                                        <tbody>
                                            <tr>
                                                <td class="info-head">&nbsp;PERSONAL INFORMATION </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div><br>
                            <div class="row">
                                <div class="col-sm-6">
                                    <table class="table-sm">
                                        <tbody>
                                            <tr>
                                                <td class="label-bg">Last Name</td>
                                                <td class="value-bg">${alumni.lastName}</td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="label-bg">First Name</td>
                                                <td class="value-bg">${alumni.firstName}</td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="label-bg">Middle Name</td>
                                                <td class="value-bg">${alumni.middleName}</td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="label-bg">Birthdate</td>
                                                <td class="value-bg">${alumni.birthdate}</td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="label-bg">Gender</td>
                                                <td class="value-bg">${alumni.gender}</td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="label-bg">Home Address</td>
                                                <td class="value-bg">${alumni.address}</td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="label-bg">Postal Code</td>
                                                <td class="value-bg">${alumni.postalCode}</td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="label-bg">Contact Number</td>
                                                <td class="value-bg">${alumni.contactNumber}</td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="label-bg">Nationality</td>
                                                <td class="value-bg">${alumni.nationality}</td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="col-sm-6">
                                    <table class="table-sm">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <img class="profile-avatar" src="ImageServlet?imgId=${alumni.image.imageId}"/>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="label-bg">Civil Status</td>
                                                <td class="value-bg">${alumni.civilStatus}</td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="label-bg">Major</td>
                                                <td class="value-bg">${alumni.major}</td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="label-bg">Email (Primary)</td>
                                                <td class="value-bg">${alumni.emailPrimary}</td>
                                            </tr>
                                            <tr><td></td><td></td></tr><tr>
                                                <td class="label-bg">Email (Secondary)</td>
                                                <td class="value-bg">${alumni.emailSecondary}</td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div><br>
                            <div class="row">
                                <div class="col-sm-12">
                                    <table class="table-sm">
                                        <tbody>
                                            <tr>
                                                <td class="info-head">&nbsp;EDUCATIONAL BACKGROUND </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div><br>
                            <div class="row">
                                <div class="col-sm-6">
                                    <table class="table-sm">
                                        <tbody>
                                            <tr>
                                                <td class="label-bg">Student Number</td>
                                                <td class="value-bg">${alumni.studentNumber}</td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="label-bg">Year Graduated</td>
                                                <td class="value-bg">${alumni.yearGraduated}</td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="col-sm-6">
                                    <table class="table-sm">
                                        <tbody>
                                            <tr>
                                                <td class="label-bg">Program</td>
                                                <td class="value-bg">${alumni.program}</td>
                                            </tr>
                                            <tr><td></td><td></td></tr><tr>
                                                <td class="label-bg">Major</td>
                                                <td class="value-bg">${alumni.major}</td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div><br>
                            <div class="row">
                                <div class="col-sm-12">
                                    <table class="table-sm">
                                        <tbody>
                                            <tr>
                                                <td class="info-head">&nbsp;WORK INFORMATION </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div><br>
                            <div class="row">
                                <div class="col-sm-6">
                                    <table class="table-sm">
                                        <tbody>
                                            <tr>
                                                <td class="label-bg">Company</td>
                                                <td class="value-bg">${alumni.company}</td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="label-bg">Company Address</td>
                                                <td class="value-bg">${alumni.workAddress}</td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="label-bg">Company Number</td>
                                                <td class="value-bg">${alumni.companyNumber}</td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="col-sm-6">
                                    <table class="table-sm">
                                        <tbody>
                                            <tr>
                                                <td class="label-bg">Date Started</td>
                                                <td class="value-bg">${alumni.yearStarted}</td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="label-bg">Position</td>
                                                <td class="value-bg">${alumni.work}</td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div><!-- card -->
                    <br>
                    <form>
                        <center>
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#editInfo" onclick="editProfile(${alumni.alumniID})">UPDATE INFORMATION</button>
                            <a href="logoutalumni"><button type="button" class="btn btn-default">LOG OUT</button></a>
                        </center>
                    </form>
                </div><!-- inner content -->
            </div><!-- content wrap -->
        </div>

              <!-- Modal -->
        <div class="modal fade bd-example-modal-lg" id="editInfo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Update Information</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="editalumninfo" method="POST"enctype = "multipart/form-data" >
                    <h6>PERSONAL INFORMATION</h6><hr>
                    <div class="form-group row">
                        <label for="lname" class="col-sm-2 col-form-label">Last Name</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="lname" name="lname" placeholder="VELASCO">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="address" class="col-sm-2 col-form-label">Address</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="address" name="address" placeholder="--">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="contactnum" class="col-sm-2 col-form-label">Contact #</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="contactnum" name="contactnum" placeholder="09xx xxxx xxx">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-2 col-form-label">Email (Primary)</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" id="inputEmail3" name="inputEmail3" placeholder="Email">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="Email2" class="col-sm-2 col-form-label">Email (Secondary)</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" id="Email2" name="Email2" placeholder="Email">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="nationality" class="col-sm-2 col-form-label">Nationality</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="nationality" name="nationality" placeholder="FILIPINO">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="civstatus" class="col-sm-2 col-form-label">Civil Status</label>
                        <div class="col-sm-10">
                            <select class="custom-select civstatus" id="civstatus" name="civstatus">
                                <option selected>---Select Civil Status---</option>
                                <option value="single">Single</option>
                                <option value="married">Married</option>
                                <option value="married">Widowed</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="pw" class="col-sm-2 col-form-label">Change Password</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="pw" name="pw">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="cpw" class="col-sm-2 col-form-label">Confirm Password</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="cpw" name="cpw" placeholder="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="avatar" class="col-sm-2 col-form-label">Profile Photo</label>
                        <div class="col-sm-10">
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="file" name="file">
                                <label class="custom-file-label" for="profile-pic">Choose file</label>
                            </div>
                        </div>
                    </div>
                    <h6>WORK INFORMATION</h6><hr>
                    <div class="form-group row">
                        <label for="company" class="col-sm-2 col-form-label">Company</label>
                        <div class="col-sm-10">
                            <input type="text" name="company" class="form-control" id="company" placeholder="--">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="companyAdd" class="col-sm-2 col-form-label">Company Address</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="companyAddress" id="companyAddress" placeholder="--">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="companyNum" class="col-sm-2 col-form-label">Company Number</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="companyNum" id="companyNum" placeholder="--">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="yrstart" class="col-sm-2 col-form-label">Year Started</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="yrstart" id="yrstart" placeholder="--">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="position" class="col-sm-2 col-form-label">Position</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="position" id="position" placeholder="--">
                        </div>
                    </div>
                    <input type="hidden" name="alumniid" id="alumniid">
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save changes</button>
            </div>
                </form>
            </div>
            </div>
        </div>
        </div>


        <!-- Footer -->
        <footer class="container-fluid blue-bg">
            <div class="row footer-text-wrap">
                <div class="col-sm-6 footer-left lato white-text">
                    <h4><b>${contact.title}</b></h4>
                    ${contact.description}
                </div>
                <div class="col-sm-6 footer-right lato white-text">
                    <h4><b>${address.title}</b></h4>
                    ${address.description}
                </div>
            </div><br>
        </footer>
         <!-- jQuery first, then Popper.js, then Bootstrap JS -->
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
         <script type="text/javascript" src="js/bootstrap.min.js"></script>
         <script type="text/javascript" src="js/script.js"></script>
    </body>
</html>
