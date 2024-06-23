<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Register</title>
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
        <form action="${pageContext.request.contextPath}/register" method="post">
            <div class="avatar">
                <img src="https://cdn-icons-png.freepik.com/512/147/147142.png" alt="Avatar">
            </div>
            <button type="button" class="close" herf="home" data-dismiss="modal"><a href="/traveltour/index.html">&times;</a></button>
            <h2 class="text-center">Register</h2>
            <div class="form-group">
                <input type="text" class="form-control" id="firstName" name="firstName" placeholder="First Name" required>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Last Name" required>
            </div>
            <div class="form-group">
                <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" id="username" name="username" placeholder="Username" required>
            </div>
            <div class="form-group">
                <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" id="phone" name="phone" placeholder="Phone" required>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary btn-lg btn-block">Register</button>
            </div>
            <div class="bottom-action clearfix">
                <p class="text-center small">Already have an account? <a href="/traveltour/html/login.jsp">Login here!</a></p>
            </div>
        </form>
    </div>
</body>

</html>
