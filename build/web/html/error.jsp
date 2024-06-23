<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Error Page</title>
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
        .error-container {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h1 {
            color: #e74c3c;
        }
        p {
            color: #333;
        }
        .error-details {
            margin-top: 20px;
            padding: 10px;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 5px;
            text-align: left;
            max-width: 600px;
            margin: 20px auto;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <h1>Error</h1>
        <p>An error occurred during the registration process. Please try again later.</p>
        <div class="error-details">
            <strong>Error Details:</strong>
            <p><%= request.getAttribute("errorMessage") %></p>
        </div>
    </div>
</body>
</html>
