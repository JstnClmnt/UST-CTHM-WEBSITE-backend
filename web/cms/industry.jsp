<%-- 
    Document   : industry
    Created on : Oct 26, 2018, 1:34:49 AM
    Author     : Christian Justine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="bean.Industry"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Stakeholders</title>
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
                        <li><a href="headerfootercms"><i class="fa fa-angle-double-right"></i> Header & Footer</a></li>
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
                        <li><a href="cmsindustry"><i class="fa fa-angle-double-right"></i> Industry</a></li>
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
                        <h2 class="heading">Industry</h2>
                        &emsp;<a href="#">View Page</a>
                    </div>
                    <hr>
                    <div>
                        <form>
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addCompanyModal"><i class="fa fa-plus"></i> &nbsp;Add Company</button>
                        </form>
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Company Name</th>
                                    <th>Category</th>
                                    <th>Website Link</th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${industry}" var="ind">
                                <tr>
                                    <td>${ind.companyName}</td>
                                    <td>${ind.category}</td>
                                    <td>${ind.websiteLink}</td>
                                    <td><button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#editCompanyModal" onclick="editIndustry(${ind.companyID})">Edit</button></td>
                                    <td><button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteCompanyModal"  onclick="deleteIndustry(${ind.companyID})">Delete</button></td>
                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->
    <!-- Add Company Modal -->
    <div class="modal fade" id="addCompanyModal" tabindex="-1" role="dialog" aria-labelledby="addCompanyModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myAddCompanyModalLabel">Add Company</h4>
                    </div>
                    <form action="addindustry" method="POST">
                    <div class="modal-body">
                            <div class="form-group">
                                <input type="text" name="industryname" id="industryname" class="form-control" placeholder="Company Name"/>
                            </div>
                            <div class="form-group">
                                <select class="form-control" name="category" id="category">
                                    <option>Hotels</option>
                                    <option>Airlines</option>
                                    <option>Restaurants</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <input type="text" name="link" id="link" class="form-control" placeholder="www.okadamanila.con"/>
                            </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                    </form>
                </div>
            </div>
        </div><!-- ./Add Company Modal -->
        <!-- Edit Company Modal -->
        <div class="modal fade" id="editCompanyModal" tabindex="-1" role="dialog" aria-labelledby="editCompanyModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myEditCompanyModalLabel">Edit Company</h4>
                    </div>
                    <form action="editindustryinfo" method="POST">
                    <div class="modal-body">
                            <div class="form-group">
                                <input name="editcompanyname" id="editcompanyname"  type="text" class="form-control" placeholder="Company Name"/>
                            </div>
                            <div class="form-group">
                                <select class="form-control"  name="editcategory" id="editcategory" >
                                    <option>Hotels</option>
                                    <option>Airlines</option>
                                    <option>Restaurants</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <input type="text" name="editlink" id="editlink" class="form-control" placeholder="www.okadamanila.con"/>
                            </div>
                            <input type="hidden" name="industryid" id="industryid">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save Changes</button>
                    </div>
                    </form>
                </div>
            </div>
        </div><!-- ./Edit Company Modal -->
        <!-- Delete Company Modal -->
        <div class="modal fade" id="deleteCompanyModal" tabindex="-1" role="dialog" aria-labelledby="deleteCompanyModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myAddNewsModalLabel">Delete Company</h4>
                    </div>
                    <form action="deleteindustry" method="POST">
                    <div class="modal-body">
                        Are you sure you want to delete this company?
                    </div>
                    <div class="modal-footer">
                        <button type="submit" id="deleteindustryid" name="deleteindustryid" class="btn btn-danger">Yes</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
                    </div>
                    </form>
                </div>
            </div>
        </div><!-- ./Delete Org Modal -->
</div><!-- /#wrapper -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script type="text/javascript" src="js/script.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>

    </body>
</html>