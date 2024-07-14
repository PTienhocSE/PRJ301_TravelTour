
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="/traveltour/add" method="post">
            <table>
       
            <tr>
                <td>Title</td>
                <td>
                    <input  type="text" name="title">
                </td>
            </tr>
            <tr>
                <td>TourCode</td>
                <td>
                    <input type="text" name="tourCode">
                </td>
            </tr>
            <tr>
                <td>DeparturePlace</td>
                <td>
                    <input  type="text" name="departurePlace">
                </td>
            </tr>
            <tr>
                <td>TravelTime</td>
                <td>
                    <input  type="text" name="travelTime">
                </td>
            </tr>
            <tr>
                <td>Duration</td>
                <td>
                    <input type="text" name="duration">
                </td>
            </tr>
            <tr>
                <td>Price</td>
                <td>
                    <input  type="text" name="price">
                </td>
            </tr>
            <tr>
                <td>ImagePath</td>
                <td>
                    
                    <input type="text" name="imagePath">
                </td>
            </tr>
           
                <tr>
                    <td></td>
                    <td><button type="submit">Add Tour</button></td>
                </tr>
            </table>
        </form>
    </body>
</html>
