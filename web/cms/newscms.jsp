<%-- 
    Document   : newscms
    Created on : Sep 25, 2018, 3:38:32 AM
    Author     : Justine Clemente
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page import="bean.News"%>
<%@page import="bean.Image"%>
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
                                    <th>Author</th>
                                    <th>Date</th>
                                    <th>Content</th>
                                    <th>Image</th>
                                    <th></th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${news}" var="newses">
                                <tr>
                                    <td>${newses.newsTitle}</td>
                                    <td>${newses.newsAuthor}</td>
                                    <td>${newses.publishedDate}</td>
                                    <td>${newses.newsDescription}</td>
                                    <td>${newses.image.description}</td>
                                    <td><button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#editNewsModal" onclick="editNews(${newses.newsID})">Edit</button></td>
                                    <td><button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteNewsModal" onclick="deleteNews(${newses.newsID})">Delete</button></td>
                                </tr>
                                </c:forEach>
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
                        <form action="addnews" method="post" enctype = "multipart/form-data">
                           <div class="form-group">
                                <input name="title" type="text" class="form-control" placeholder="Title"/>
                            </div>
                            <div class="form-group">
                                <input name="author" type="text" class="form-control" placeholder="Author"/>
                            </div>
                            <div class="form-group">
                                <input name="date" type="date" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <textarea name="description" class="form-control" rows="6" placeholder="Write news here..."></textarea>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputFile">Image</label>
                                <input name="file" type="file" id="exampleInputFile">
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </form>
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
                        <img name="editimg" id="editimg" class="img-responsive" style="margin:0 auto;"  src="">
                        <form action="editnewsinfo" method="post" enctype = "multipart/form-data">
                            <div class="form-group">
                                <input name="edittitle" id="edittitle" type="text" class="form-control" placeholder="Title"/>
                            </div>
                            <div class="form-group">
                                <input name="editauthor" id="editauthor" type="text" class="form-control" placeholder="Author"/>
                            </div>
                            <div class="form-group">
                                <input name="editdate" id="editdate" type="date" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <textarea name="editcontent" id="editcontent" class="form-control" rows="6" placeholder="Write news here..."></textarea>
                            </div>
                            <input type="hidden" id="newsid" name="newsid" value="">
                            <div class="form-group">
                                <label for="exampleInputFile">Image</label>
                                <input name="file" type="file" id="exampleInputFile">
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary">Save Changes</button>
                             </div>
                        </form>
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
                        <form action="deletenews" method="post">
                        <button id="deletenews" name="deletenews" type="submit" class="btn btn-danger">Yes</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
                        </form>
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
