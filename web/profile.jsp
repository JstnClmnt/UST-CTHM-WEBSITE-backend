<%-- 
    Document   : profile
    Created on : Oct 6, 2018, 1:51:44 AM
    Author     : Justine Clemente
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="bean.AlumniProfile"%>
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
            <img class="header-img img-fluid" src="img/cthm-header-img.png" />
        </div>
        <div class="white-bg navcol">
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
                            <a class="dropdown-item" href="alumni.html">Alumni</a>
                            <a class="dropdown-item" href="industry.html">Industry</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="studentservices">Support Service</a>
                        </li>
                        <c:if test="${alumni.firstName!=null}">
                        <li class="nav-item ">
                            <a class="nav-link active-tab" href="alumniProfile.html">Profile</a>
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
                                                <td class="label-bg">Address</td>
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
                                                <td class="label-bg">Company</td>
                                                <td class="value-bg">${alumni.company}</td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="label-bg">Work</td>
                                                <td class="value-bg">${alumni.work}</td>
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
                                                    <c:choose>
                                                        <c:when test="${alumni.image.description!=null}">
                                                            <img class="card-img-top"  src="ImageServlet?imgId=${alumni.image.imageId}"/>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <img class="card-img-top" src="img/defaultimg.jpg"/>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="label-bg">Email</td>
                                                <td class="value-bg">${alumni.email}</td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="label-bg">Nationality</td>
                                                <td class="value-bg">${alumni.nationality}</td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="label-bg">Civil Status</td>
                                                <td class="value-bg">${alumni.civilStatus}</td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="label-bg">Year Graduated</td>
                                                <td class="value-bg">${alumni.yearGraduated}</td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="label-bg">Program</td>
                                                <td class="value-bg">${alumni.program}</td>
                                            </tr>
                                            <tr><td></td><td></td></tr>
                                            <tr>
                                                <td class="label-bg">Major</td>
                                                <td class="value-bg">${alumni.major}</td>
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
                <img name="editimg" id="editimg" class="img-responsive" style="margin:0 auto;"  src="">
                <br>
                <form action="editalumninfo" method="post" enctype = "multipart/form-data">
                    <div class="form-group row">
                        <label for="lastname" class="col-sm-2 col-form-label">Last Name</label>
                        <div class="col-sm-10">
                            <input id="editlastname" name="editlastname" type="text" class="form-control" id="lastname" placeholder="VELASCO">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="firstname" class="col-sm-2 col-form-label">First Name</label>
                        <div class="col-sm-10">
                            <input id="editfirstname" name="editfirstname" type="text" class="form-control" id="firstname" placeholder="HENRY">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="midname" class="col-sm-2 col-form-label">Mid. Name</label>
                        <div class="col-sm-10">
                            <input id="editmiddlename" name="editmiddlename" type="text" class="form-control" id="midname" placeholder="MARTIN">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="bdate" class="col-sm-2 col-form-label">Birthdate</label>
                        <div class="col-sm-10">
                            <input id="editbirthdate" name="editbirthdate" type="date" class="form-control" id="bdate">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="sex" class="col-sm-2 col-form-label">Gender</label>
                        <div class="col-sm-10">
                            <select id="editgender" name="editgender" class="custom-select sex">
                                <option selected>---Select Gender---</option>
                                <option value="F">F</option>
                                <option value="M">M</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="address" class="col-sm-2 col-form-label">Address</label>
                        <div class="col-sm-10">
                            <input id="editaddress" name="editaddress" type="text" class="form-control" id="address" placeholder="--">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="postcode" class="col-sm-2 col-form-label">Postal Code</label>
                        <div class="col-sm-10">
                            <input id="editpostalcode" name="editpostalcode" type="text" class="form-control" id="postcode" placeholder="1600">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="contactnum" class="col-sm-2 col-form-label">Contact #</label>
                        <div class="col-sm-10">
                            <input id="editnumber" name="editnumber" type="text" class="form-control" id="contactnum" placeholder="09xx xxxx xxx">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="company" class="col-sm-2 col-form-label">Company</label>
                        <div class="col-sm-10">
                            <input name="editcompany" id="editcompany" type="text" class="form-control" id="company" placeholder="--">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="work" class="col-sm-2 col-form-label">Work</label>
                        <div class="col-sm-10">
                            <input id="editwork" name="editwork"type="text" class="form-control" id="work" placeholder="--">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
                        <div class="col-sm-10">
                            <input id="editemail" name="editemail" type="email" class="form-control" id="inputEmail3" placeholder="Email">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="nationality" class="col-sm-2 col-form-label">Nationality</label>
                        <div class="col-sm-10">
                            <input id="editnationality" name="editnationality" type="text" class="form-control" id="nationality" placeholder="FILIPINO">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="civstatus" class="col-sm-2 col-form-label">Civil Status</label>
                        <div class="col-sm-10">
                            <select id="editstatus" name="editstatus" class="custom-select civstatus">
                                <option selected>---Select Civil Status---</option>
                                <option value="Single">Single</option>
                                <option value="Married">Married</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="yeargraduated" class="col-sm-2 col-form-label">Year Graduated</label>
                        <div class="col-sm-10">
                            <input name="edityear" id="edityear"type="text" class="form-control" id="yeargraduated" placeholder="--">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="program" class="col-sm-2 col-form-label">Program</label>
                        <div class="col-sm-10">
                            <input id="editprogram" name="editprogram"type="text" class="form-control" id="program" placeholder="--">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="major" class="col-sm-2 col-form-label">Major</label>
                        <div class="col-sm-10">
                            <input name="editmajor" id="editmajor" type="text" class="form-control" id="major" placeholder="--">
                        </div>
                    </div>
                    <input type="hidden" id="alumniID" name="alumniID">
                    <div class="form-group row">
                        <label for="avatar" class="col-sm-2 col-form-label">Profile Photo</label>
                        <div class="col-sm-10">
                            <div class="custom-file">
                                <input name="file" id="file" type="file" class="custom-file-input" id="profile-pic">
                                <label class="custom-file-label" for="profile-pic">Choose file</label>
                            </div>
                        </div>
                    </div>
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
                    <h5><b>Contact Us</b></h5>
                    <p>Telephone:<br>+63-2-406-1611 loc. 4488</p>
                </div>
                <div class="col-sm-6 footer-right lato white-text">
                    <h5><b>Address</b></h5>
                    <p>Office of the Dean<br>
                        G/F, Albertus Magnus Building<br>
                        University of Santo Tomas<br>
                        España Boulevard, Sampaloc, Manila 1008
                    </p>
                </div>
            </div>
        </footer>
         <!-- jQuery first, then Popper.js, then Bootstrap JS -->
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
         <script type="text/javascript" src="js/bootstrap.min.js"></script>
         <script type="text/javascript" src="js/script.js"></script>
    </body>
</html>
