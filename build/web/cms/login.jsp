<%-- 
    Document   : login
    Created on : Sep 8, 2018, 4:21:48 PM
    Author     : Justine Clemente
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>UST-CTHM CMS | Login</title>
        <link rel="stylesheet" href="css/font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body style="background-color: #fff">
        <div class="login-form">
            <div class="login-label">
                <h3>SYSTEM LOGIN</h3>
            </div>
            <form class="form" action="../login" method="POST">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-addon"><i class="fa fa-fw fa-user-circle"></i></div>
                                <input type="text" class="form-control" id="username" placeholder="Username" name="uname">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-addon"><i class="fa fa-fw fa-lock"></i></div>
                                <input type="password" class="form-control" id="password" placeholder="Password" name="pw">
                            </div>
                        </div>
                    </div>
                </div>
                ${error}
                <div class="row">
                    <div class="col-sm-12">
                        <input type="submit" class="btn btn-block btn-success" value="Login">
                    </div>
                </div>
            </form>
        <div>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>