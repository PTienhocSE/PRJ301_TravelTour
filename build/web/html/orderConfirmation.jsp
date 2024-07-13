<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Order Confirmation</title>
        <link rel="stylesheet" href="/traveltour/assets/css/style/style.css">
    </head>
    <body>
        <div id="confirmation">
            <h2>Booking Confirmation</h2>
            <p>Thank you, <%= request.getAttribute("name") %>!</p>
            <p>Your booking details are as follows:</p>
            <p>Email: <%= request.getAttribute("email") %></p>
            <p>Phone: <%= request.getAttribute("phone") %></p>
            <p>Start Date: <%= request.getAttribute("startDate") %></p>
            <p>End Date: <%= request.getAttribute("endDate") %></p>
            <p>Number of Passengers: <%= request.getAttribute("numPassengers") %></p>
            <p>Total Price: <%= request.getAttribute("totalPrice") %>₫</p>
        </div>
    </body>
</html>
