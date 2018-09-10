<%-- 
    Document   : newsupdates
    Created on : Sep 9, 2018, 4:30:27 PM
    Author     : Justine Clemente
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home - News and Updates</title>
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
                        <img class="shs-logo" alt="Brand" src="img\ust-cthm-logo.PNG" height="45px">
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
                            <li><a href="carousel.html"><i class="fa fa-angle-double-right"></i> Banner</a></li>
                            <li><a href="newsUpdates.html"><i class="fa fa-angle-double-right"></i> News and Updates</a></li>
                            <li><a href="calendar.html"><i class="fa fa-angle-double-right"></i> Calendar of Events</a></li>
                            <li><a href="announcements.html"><i class="fa fa-angle-double-right"></i> Announcements</a></li>
                        </ul>
                    </li>     
                    <li>
                        <a href="#" data-toggle="collapse" data-target="#submenu-1"><i class="fa fa-fw fa-info-circle"></i>  ABOUT US<i class="fa fa-fw fa-angle-down pull-right"></i></a>
                        <ul id="submenu-1" class="collapse">
                            <li><a href="misionVision.html"><i class="fa fa-angle-double-right"></i> Mission and Vision</a></li>
                            <li><a href="history.html"><i class="fa fa-angle-double-right"></i> History</a></li>
                            <li><a href="program.html"><i class="fa fa-angle-double-right"></i> Program</a></li>
                            <li><a href="orgChart.html"><i class="fa fa-angle-double-right"></i> Organizational Chart</a></li>
                            <li><a href="awards.html"><i class="fa fa-angle-double-right"></i> Awards</a></li>
                            <li><a href="cthmTeam.html"><i class="fa fa-angle-double-right"></i> CTHM Team</a></li>
                            <li><a href="facilities.html"><i class="fa fa-angle-double-right"></i> Facilities</a></li>
                            <li><a href="linkages.html"><i class="fa fa-angle-double-right"></i> Linkages</a></li>
                            <li><a href="location.html"><i class="fa fa-angle-double-right"></i> Location</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" data-toggle="collapse" data-target="#submenu-A"><i class="fa fa-fw fa-plane"></i>  TOURISM MGMT <i class="fa fa-fw fa-angle-down pull-right"></i></a>
                        <ul id="submenu-A" class="collapse">
                            <li><a href="travelOps.html"><i class="fa fa-angle-double-right"></i> Travel Operations</a></li>
                            <li><a href="recLeisure.html"><i class="fa fa-angle-double-right"></i> Recreation and Leisure</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" data-toggle="collapse" data-target="#submenu-B"><i class="fa fa-fw fa-building-o"></i>  HOSPITALITY MGMT <i class="fa fa-fw fa-angle-down pull-right"></i></a>
                        <ul id="submenu-B" class="collapse">
                            <li><a href="culinaryEntrep.html"><i class="fa fa-angle-double-right"></i> Culinary Entrep</a></li>
                            <li><a href="hospitalityLead.html"><i class="fa fa-angle-double-right"></i> Hospitality Leadership</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" data-toggle="collapse" data-target="#submenu-2"><i class="fa fa-fw fa-support"></i>  SUPPORT SERVICES <i class="fa fa-fw fa-angle-down pull-right"></i></a>
                        <ul id="submenu-2" class="collapse">
                            <li><a href="admission.html"><i class="fa fa-angle-double-right"></i> Admission</a></li>
                            <li><a href="studentWelfare.html"><i class="fa fa-angle-double-right"></i> Student Welfare</a></li>
                            <li><a href="internationalization.html"><i class="fa fa-angle-double-right"></i> Internationalization</a></li>
                            <li><a href="community.html"><i class="fa fa-angle-double-right"></i> Community</a></li>
                            <li><a href="counseling.html"><i class="fa fa-angle-double-right"></i> Counseling</a></li>
                            <li><a href="centralLib.html"><i class="fa fa-angle-double-right"></i> Central Library</a></li>
                            <li><a href="healthService.html"><i class="fa fa-angle-double-right"></i> Health Service</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" data-toggle="collapse" data-target="#submenu-3"><i class="fa fa-fw fa-users"></i>  STAKEHOLDERS <i class="fa fa-fw fa-angle-down pull-right"></i></a>
                        <ul id="submenu-3" class="collapse">
                            <li><a href="students.html"><i class="fa fa-angle-double-right"></i> Students</a></li>
                            <li><a href="alumni.html"><i class="fa fa-angle-double-right"></i> Alumni</a></li>
                            <li><a href="industry.html"><i class="fa fa-angle-double-right"></i> Industry</a></li>
                        </ul>
                    </li>  
                    <li>
                        <a href="#" data-toggle="collapse" data-target="#submenu-0A"><i class="fa fa-user-circle"></i> ACCOUNT<i class="fa fa-fw fa-angle-down pull-right"></i></a>
                        <ul id="submenu-0A" class="collapse">
                            <li><a href="changePassword.html"><i class="fa fa-angle-double-right"></i> Change Password</a></li>
                            <li><a href="index.html"><i class="fa fa-angle-double-right"></i> Log Out</a></li>
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
                            <h2 class="heading"> News and Updates</h2>
                            &emsp;<a href="#">View Page</a>
                        </div>
                        <hr>
                        <div>
                            <form>
                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addNewsModal"><i class="fa fa-plus"></i> &nbsp;Add News</button>
                            </form>
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>Title</th>
                                    <th>Date</th>
                                    <th>Content</th>
                                    <th></th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>Title #1</td>
                                    <td>June 8, 2018</td>
                                    <td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut risus vehicula, viverra libero a, volutpat lacus. Donec malesuada elementum metus, vitae accumsan tortor tristique ac. </td>
                                    <td><button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#editNewsModal">Edit</button></td>
                                    <td><button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteNewsModal">Delete</button></td>
                                </tr>
                                <tr>
                                    <td>Title #2</td>
                                    <td>June 12, 2018</td>
                                    <td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut risus vehicula, viverra libero a, volutpat lacus. Donec malesuada elementum metus, vitae accumsan tortor tristique ac. </td>
                                    <td><button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#editNewsModal">Edit</button></td>
                                    <td><button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteNewsModal">Delete</button></td>
                                </tr>
                                <tr>
                                    <td>Title #3</td>
                                    <td>July 2, 2018</td>
                                    <td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut risus vehicula, viverra libero a, volutpat lacus. Donec malesuada elementum metus, vitae accumsan tortor tristique ac. </td>
                                    <td><button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#editNewsModal">Edit</button></td>
                                    <td><button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteNewsModal">Delete</button></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->
        </div><!-- /#page-wrapper -->
        
        <!-- Add News Modal -->
        <div class="modal fade" id="addNewsModal" tabindex="-1" role="dialog" aria-labelledby="addNewsModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myAddNewsModalLabel">Add News</h4>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Title"/>
                            </div>
                            <div class="form-group">
                                <input type="date" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" rows="6" placeholder="Write news here..."></textarea>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Submit</button>
                    </div>
                </div>
            </div>
        </div><!-- ./Add News Modal -->
        <!-- Edit News Modal -->
        <div class="modal fade" id="editNewsModal" tabindex="-1" role="dialog" aria-labelledby="editNewsModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myAddNewsModalLabel">Edit News</h4>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Title"/>
                            </div>
                            <div class="form-group">
                                <input type="date" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" rows="6" placeholder="Write news here..."></textarea>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save Changes</button>
                    </div>
                </div>
            </div>
        </div><!-- ./Edit News Modal -->
        <!-- Delete News Modal -->
        <div class="modal fade" id="deleteNewsModal" tabindex="-1" role="dialog" aria-labelledby="deleteNewsModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myAddNewsModalLabel">Delete News</h4>
                    </div>
                    <div class="modal-body">
                        Are you sure you want to delete this?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger">Yes</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
                    </div>
                </div>
            </div>
        </div><!-- ./Delete News Modal -->
    </div><!-- /#wrapper -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script type="text/javascript" src="js/script.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </body>
</html>
