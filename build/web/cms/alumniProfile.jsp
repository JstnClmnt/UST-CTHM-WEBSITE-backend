<%-- 
    Document   : alumniProfile
    Created on : Oct 6, 2018, 4:14:48 AM
    Author     : Justine Clemente
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="bean.Image"%>
<%@page import="bean.AlumniProfile"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Alumni Database</title>
        <!--CSS--><!-- Latest compiled and minified CSS -->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all">
        <link rel="stylesheet" href="css/font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <nav class="navbar navbar-default bar-nav">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">
                        <img class="cthm-logo" alt="Brand" src="img\ust-cthm-logo.PNG" height="45px">
                    </a>
                </div>
            </div>
        </nav>
        <div id="throbber" style="display:none; min-height:120px;"></div>
        <div id="noty-holder"></div>
        <div id="wrapper">
    <!-- Navigation -->
    <nav class="navbar" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->

        <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
        <div class="collapse navbar-collapse navbar-ex1-collapse navbar-inverse">
        <ul class="nav navbar-nav side-nav">
                <li>
                    <a href="#" data-toggle="collapse" data-target="#submenu-0"><i class="fa fa-home"></i> HOME<i class="fa fa-fw fa-angle-down pull-right"></i></a>
                    <ul id="submenu-0" class="collapse">
                        <li><a href="newscms"><i class="fa fa-angle-double-right"></i> News and Updates</a></li>
                        <li><a href="eventscms"><i class="fa fa-angle-double-right"></i> Calendar of Events</a></li>
                        <li><a href="announcementscms"><i class="fa fa-angle-double-right"></i> Announcements</a></li>
                        <li><a href="headerfooter.jsp"><i class="fa fa-angle-double-right"></i> Header & Footer</a></li>
                    </ul>
                </li>     
                <li>
                    <a href="#" data-toggle="collapse" data-target="#submenu-1"><i class="fa fa-fw fa-info-circle"></i>  ABOUT US<i class="fa fa-fw fa-angle-down pull-right"></i></a>
                    <ul id="submenu-1" class="collapse">
                        <li><a href="aboutcms?aboutId=1"><i class="fa fa-angle-double-right"></i> Mission and Vision</a></li>
                        <li><a href="aboutcms?aboutId=3"><i class="fa fa-angle-double-right"></i> History</a></li>
                        <li><a href="aboutcms?aboutId=4"><i class="fa fa-angle-double-right"></i> Program</a></li>
                        <li><a href="aboutcms?aboutId=5"><i class="fa fa-angle-double-right"></i> Organizational Chart</a></li>
                        <li><a href="aboutcms?aboutId=6"><i class="fa fa-angle-double-right"></i> Awards</a></li>
                        <li><a href="aboutcms?aboutId=7"><i class="fa fa-angle-double-right"></i> CTHM Team</a></li>
                        <li><a href="aboutcms?aboutId=8"><i class="fa fa-angle-double-right"></i> Facilities</a></li>
                        <li><a href="aboutcms?aboutId=9"><i class="fa fa-angle-double-right"></i> Linkages</a></li>
                        <li><a href="aboutcms?aboutId=10"><i class="fa fa-angle-double-right"></i> Location</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#" data-toggle="collapse" data-target="#submenu-A"><i class="fa fa-fw fa-plane"></i>  TOURISM MGMT <i class="fa fa-fw fa-angle-down pull-right"></i></a>
                    <ul id="submenu-A" class="collapse">
                        <li><a href="coursescms?course_id=1&major_id=1"><i class="fa fa-angle-double-right"></i> Travel Operations</a></li>
                        <li><a href="coursescms?course_id=1&major_id=2"><i class="fa fa-angle-double-right"></i> Recreation and Leisure</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#" data-toggle="collapse" data-target="#submenu-B"><i class="fa fa-fw fa-building-o"></i>  HOSPITALITY MGMT <i class="fa fa-fw fa-angle-down pull-right"></i></a>
                    <ul id="submenu-B" class="collapse">
                        <li><a href="coursescms?course_id=2&major_id=3"><i class="fa fa-angle-double-right"></i> Culinary Entrep</a></li>
                        <li><a href="coursescms?course_id=2&major_id=4"><i class="fa fa-angle-double-right"></i> Hospitality Leadership</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#" data-toggle="collapse" data-target="#submenu-2"><i class="fa fa-fw fa-support"></i>  SUPPORT SERVICES <i class="fa fa-fw fa-angle-down pull-right"></i></a>
                    <ul id="submenu-2" class="collapse">
                        <li><a href="supportcms?serviceId=1"><i class="fa fa-angle-double-right"></i> Admission</a></li>
                        <li><a href="supportcms?serviceId=2"><i class="fa fa-angle-double-right"></i> Student Welfare</a></li>
                        <li><a href="supportcms?serviceId=3"><i class="fa fa-angle-double-right"></i> Internationalization</a></li>
                        <li><a href="supportcms?serviceId=4"><i class="fa fa-angle-double-right"></i> Community</a></li>
                        <li><a href="supportcms?serviceId=5"><i class="fa fa-angle-double-right"></i> Counseling</a></li>
                        <li><a href="supportcms?serviceId=6"><i class="fa fa-angle-double-right"></i> Central Library</a></li>
                        <li><a href="supportcms?serviceId=7"><i class="fa fa-angle-double-right"></i> Health Service</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#" data-toggle="collapse" data-target="#submenu-3"><i class="fa fa-fw fa-users"></i>  STAKEHOLDERS <i class="fa fa-fw fa-angle-down pull-right"></i></a>
                    <ul id="submenu-3" class="collapse">
                        <li><a href="studentcms"><i class="fa fa-angle-double-right"></i> Students</a></li>
                        <li><a href="alumnicms"><i class="fa fa-angle-double-right"></i> Alumni</a></li>
                        <li><a href="industry.html"><i class="fa fa-angle-double-right"></i> Industry</a></li>
                    </ul>
                </li>  
                <li>
                    <a href="alumniprofilecms"><i class="fa fa-graduation-cap"></i>  ALUMNI DATABASE</a>
                </li>  
                <li>
                    <a href="#" data-toggle="collapse" data-target="#submenu-0A"><i class="fa fa-user-circle"></i> ACCOUNT<i class="fa fa-fw fa-angle-down pull-right"></i></a>
                    <ul id="submenu-0A" class="collapse">
                        <li><a href="changepassword.jsp"><i class="fa fa-angle-double-right"></i> Change Password</a></li>
                        <li><a href="logout"><i class="fa fa-angle-double-right"></i> Log Out</a></li>
                    </ul>
                </li>
                
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </nav>

    <div id="page-wrapper">
        <div class="container-fluid">
            <!-- Page Heading -->
            <div class="row" id="main" >
                
            </div>
            <!-- /.row -->
            <div class="content-wrap">
                <div class="col-sm-12" id="content">
                    <div class="title">
                        <h2 class="heading">Alumni Database</h2>
                        &emsp;<a href="#">View Page</a>
                    </div>
                    <hr>
                    <div>
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addAlumniModal"><i class="fa fa-plus"></i> &nbsp;Add New Record</button>
                        <a href="downloadcsvAlumni"><button type="submit" class="btn btn-primary"><i class="fa fa-plus"></i> &nbsp;Download Record CSV</button></a>
                        <br>
                        <br>
                        <form action="importcsv" method="post" enctype = "multipart/form-data">
                            <input name="file" id="file" type="file" class="custom-file-input" id="profile-pic">
                            <label class="custom-file-label" for="profile-pic">Choose CSV file</label><br>
                            <button type="submit" class="btn btn-primary"><i class="fa fa-plus"></i> &nbsp;Import CSV</button>
                        </form>    
                    </div>
                    <div class="scroll-table">
                        <div>
                            <table class="table table-hover table-responsive">
                                <thead>
                                <tr>
                                    <th>Last Name</th>
                                    <th>First Name</th>
                                    <th>Middle Name</th>
                                    <th>Birthdate</th>
                                    <th>Gender</th>
                                    <th>Address</th>
                                    <th>Postal Code</th>
                                    <th>Contact #</th>
                                    <th>Company</th>
                                    <th>Work</th>
                                    <th>Email</th>
                                    <th>Nationality</th>
                                    <th>Civil Status</th>
                                    <th>Year Graduated</th>
                                    <th>Program</th>
                                    <th>Major</th>
                                </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${alumnae}" var="alumni">
                                    <tr>
                                        <td>${alumni.lastName}</td>
                                        <td>${alumni.firstName}</td>
                                        <td>${alumni.middleName}</td>
                                        <td>${alumni.birthdate}</td>
                                        <td>${alumni.gender}</td>
                                        <td>${alumni.address}</td>
                                        <td>${alumni.postalCode}</td>
                                        <td>${alumni.contactNumber}</td>
                                        <td>${alumni.company}</td>
                                        <td>${alumni.work}</td>
                                        <td>${alumni.email}</td>
                                        <td>${alumni.nationality}</td>
                                        <td>${alumni.civilStatus}</td>
                                        <td>${alumni.yearGraduated}</td>
                                        <td>${alumni.program}</td>
                                        <td>${alumni.major}</td>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->
    <!-- Add Alumni Modal -->
        <div class="modal fade" id="addAlumniModal" tabindex="-1" role="dialog" aria-labelledby="addAlumniModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myAddAlumniModalLabel">Add New Record</h4>
                    </div>
                    <div class="modal-body">
                        <form action="addalumni" method="post" enctype = "multipart/form-data">
                            <div class="form-group row">
                                <label for="lastname" class="col-sm-2 col-form-label">Last Name</label>
                                <div class="col-sm-10">
                                    <input id="lastname" name="lastname" type="text" class="form-control" id="lastname" placeholder="VELASCO">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="firstname" class="col-sm-2 col-form-label">First Name</label>
                                <div class="col-sm-10">
                                    <input id="firstname" name="firstname" type="text" class="form-control" id="firstname" placeholder="HENRY">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="midname" class="col-sm-2 col-form-label">Mid. Name</label>
                                <div class="col-sm-10">
                                    <input id="middlename" name="middlename" type="text" class="form-control" id="midname" placeholder="MARTIN">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="bdate" class="col-sm-2 col-form-label">Birthdate</label>
                                <div class="col-sm-10">
                                    <input id="birthdate" name="birthdate" type="date" class="form-control" id="bdate">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="sex" class="col-sm-2 col-form-label">Gender</label>
                                <div class="col-sm-10">
                                    <select id="gender" name="gender" class="custom-select sex">
                                        <option selected>---Select Gender---</option>
                                        <option value="F">F</option>
                                        <option value="M">M</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="address" class="col-sm-2 col-form-label">Address</label>
                                <div class="col-sm-10">
                                    <input id="address" name="address" type="text" class="form-control" id="address" placeholder="--">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="postcode" class="col-sm-2 col-form-label">Postal Code</label>
                                <div class="col-sm-10">
                                    <input id="postalcode" name="postalcode" type="text" class="form-control" id="postcode" placeholder="1600">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="contactnum" class="col-sm-2 col-form-label">Contact #</label>
                                <div class="col-sm-10">
                                    <input id="number" name="number" type="text" class="form-control" id="contactnum" placeholder="09xx xxxx xxx">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="company" class="col-sm-2 col-form-label">Company</label>
                                <div class="col-sm-10">
                                    <input name="company" id="company" type="text" class="form-control" id="company" placeholder="--">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="work" class="col-sm-2 col-form-label">Work</label>
                                <div class="col-sm-10">
                                    <input id="work" name="work"type="text" class="form-control" id="work" placeholder="--">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
                                <div class="col-sm-10">
                                    <input id="email" name="email" type="email" class="form-control" id="inputEmail3" placeholder="Email">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="nationality" class="col-sm-2 col-form-label">Nationality</label>
                                <div class="col-sm-10">
                                    <input id="nationality" name="nationality" type="text" class="form-control" id="nationality" placeholder="FILIPINO">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="civstatus" class="col-sm-2 col-form-label">Civil Status</label>
                                <div class="col-sm-10">
                                    <select id="status" name="status" class="custom-select civstatus">
                                        <option selected>---Select Civil Status---</option>
                                        <option value="Single">Single</option>
                                        <option value="Married">Married</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="yeargraduated" class="col-sm-2 col-form-label">Year Graduated</label>
                                <div class="col-sm-10">
                                    <input name="year" id="year" type="text" class="form-control" id="yeargraduated" placeholder="--">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="program" class="col-sm-2 col-form-label">Program</label>
                                <div class="col-sm-10">
                                    <input id="program" name="program"type="text" class="form-control" id="program" placeholder="--">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="major" class="col-sm-2 col-form-label">Major</label>
                                <div class="col-sm-10">
                                    <input name="major" id="major" type="text" class="form-control" id="major" placeholder="--">
                                </div>
                            </div>
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
        </div><!-- ./Add Alumni Modal -->
</div><!-- /#wrapper -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script type="text/javascript" src="js/script.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>

    </body>
</html>