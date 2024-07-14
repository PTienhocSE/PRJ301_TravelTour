<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .booking-info {
            background-color: #fff;
            border: 1px solid #ccc;
            padding: 20px;
            max-width: 600px;
            width: 100%;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            border-radius: 5px;
            text-align: center;
        }
        .booking-info h2 {
            color: #333;
            margin-bottom: 20px;
        }
        .booking-info p {
            margin: 10px 0;
        }
        .close-btn {
            background-color: #ccc;
            color: #333;
            border: none;
            padding: 10px 20px;
            text-decoration: none;
            cursor: pointer;
            display: inline-block;
            margin-top: 20px;
            border-radius: 5px;
        }
        .close-btn:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>
    <div class="booking-info">
        <h2>Booking Confirmation</h2>
        <p><strong>Name:</strong> ${fullName}</p>
        <p><strong>Email:</strong> ${email}</p>
        <p><strong>Phone:</strong> ${phone}</p>
        <p><strong>Start Date:</strong> ${startDate}</p>
        <p><strong>Number of Passengers:</strong> ${numPassengers}</p>
        <p><strong>Total Money:</strong> ${totalMoney}</p>
        <p><strong>Tour Code:</strong> ${tourCode}</p>
        <a href="./html/booking.jsp" class="close-btn">Close</a>
    </div>
</body>
</html>
