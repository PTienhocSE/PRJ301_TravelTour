<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add Account</title>
</head>
<body>    
    <form action="/traveltour/addAccountServlet" method="post">
        <table>
            <tr>
                <td>First Name</td>
                <td>
                    <input type="text" name="firstName">
                </td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td>
                    <input type="text" name="lastName">
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <input type="text" name="email">
                </td>
            </tr>
            <tr>
                <td>Username</td>
                <td>
                    <input type="text" name="username">
                </td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <input type="text" name="password">
                </td>
            </tr>
            <tr>
                <td>Phone</td>
                <td>
                    <input type="text" name="phone">
                </td>
            </tr>
            <tr>
                <td>Is User</td>
                <td>
                    <input type="text" name="isUser">
                </td>
            </tr>
            <tr>
                <td>Is Admin</td>
                <td>
                    <input type="text" name="isAdmin">
                </td>
            </tr>
            <tr>
                <td></td>
                <td><button type="submit">Add Account</button></td>
            </tr>
        </table>
    </form>
</body>
</html>
