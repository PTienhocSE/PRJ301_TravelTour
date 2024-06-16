<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Login</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="/traveltour/assets/css/style/login.css">
    </head>

    <body>
        <img class="backgound" src="https://bvhttdl.mediacdn.vn/291773308735864832/2024/4/19/festival-hue-1713509506683977910504-1713519554928-17135195550891386255210.jpg" alt="">
        <div class="login-form">
            <form action="${pageContext.request.contextPath}/login" method="post">
                <div class="avatar">
                    <img src="https://cdn-icons-png.freepik.com/512/147/147142.png" alt="Avatar">
                </div>
                <button type="button" class="close" herf="home" data-dismiss="modal"><a href="/traveltour/index.html">&times;</a></button>
                <h2 class="text-center">Member Login</h2>
                <p class="text-danger">${mess}</p>
                <div class="form-group">
                    <input type="text" class="form-control" name="username" placeholder="Username" required="required">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="password" placeholder="Password" required="required">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-lg btn-block">Sign in</button>
                </div>
                <div class="bottom-action clearfix">
                    <p class="text-center small">Don't have an account? <a href="/traveltour/html/register.jsp">Sign up here!</a></p>
                </div>
            </form>
        </div>
    </body>

</html>
