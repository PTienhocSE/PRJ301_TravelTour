<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Update Account</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            padding: 10px;
        }

        td:first-child {
            text-align: right;
            font-weight: bold;
        }

        input[type="text"] {
            width: calc(100% - 20px);
            padding: 8px;
            margin: 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>    
    <form action="updateAccountServlet" method="post">
        <table>
            <tr>
                <td>UserID</td>
                <td>
                    <input value="${st.userID}" type="text" name="id" readonly>
                </td>
            </tr>
            <tr>
                <td>FirstName</td>
                <td>
                    <input value="${st.firstName}" type="text" name="title">
                </td>
            </tr>
            <tr>
                <td>LastName</td>
                <td>
                    <input value="${st.lastName}" type="text" name="tourCode">
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <input value="${st.email}" type="text" name="departurePlace">
                </td>
            </tr>
            <tr>
                <td>Username</td>
                <td>
                    <input value="${st.username}" type="text" name="travelTime">
                </td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <input value="${st.password}" type="text" name="duration">
                </td>
            </tr>
            <tr>
                <td>Phone</td>
                <td>
                    <input value="${st.phone}" type="text" name="price">
                </td>
            </tr>
            <tr>
                <td>IsUser</td>
                <td>
                    <input value="${st.isUser}" type="text" name="price">
                </td>
            </tr>
            <tr>
                <td>IsAdmin</td>
                <td>
                    <input value="${st.isAdmin}" type="text" name="price">
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <button type="submit">Update</button>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
