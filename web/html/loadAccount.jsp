
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <style>
        .image-container {
            width: 200px; /* Đặt chiều rộng tối đa cho khung ảnh */
            height: 200px; /* Đặt chiều cao tối đa cho khung ảnh */
            overflow: hidden; /* Ẩn bất kỳ phần nào của ảnh vượt quá khung */
        }

        .image-container img {
            width: 100%; /* Làm cho ảnh phù hợp với chiều rộng của phần tử chứa */
            height: auto; /* Cho phép chiều cao tự động tính toán để giữ tỷ lệ khung hình ảnh */
            display: block; /* Loại bỏ khoảng trống dưới ảnh */
        }
    </style>
</head>
<body>    
    <h2>WELCOME ADMIN</h2>
    <table border="1">
        <thead>
            <tr>
                <th>UserID</th>
                <th>FirstName</th>
                <th>LastName</th>
                <th>Email</th>
                <th>Username</th>
                <th>Password</th>
                <th>Phone</th>
                <th>IsUser</th>
                <th>IsAdmin</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${listS}" var="x">
                <tr>
                    <td>${x.userID}</td>
                    <td>${x.firstName}</td>
                    <td>${x.lastName}</td>
                    <td>${x.email}</td>
                    <td>${x.username}</td>
                    <td>${x.password}</td>
                    <td>${x.phone}</td>
                    <td>${x.isUser}</td>
                    <td>${x.isAdmin}</td>
                    
                    
                    <td>
                        <a href="UpdateAccountControl?sid=${x.userID}">update</a>
                        <a href="DeleteAccountControl?sid=${x.userID}">delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="./html/addAccount.jsp">Create Account</a>    
</body>
</html>
