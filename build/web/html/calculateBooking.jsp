<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*" %>

<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String startDateStr = request.getParameter("startDate");
    int numPassengers = Integer.parseInt(request.getParameter("numPassengers"));

    // Retrieve tour details from request or database
    String title = (String) request.getAttribute("title");
    String tourCode = (String) request.getAttribute("tourCode");
    int duration = Integer.parseInt((String) request.getAttribute("duration")); // Assume duration is in days
    int price = Integer.parseInt((String) request.getAttribute("price"));

    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    Date startDate = null;
    Date endDate = null;

    try {
        startDate = sdf.parse(startDateStr);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(startDate);
        calendar.add(Calendar.DAY_OF_MONTH, duration);
        endDate = calendar.getTime();
    } catch (Exception e) {
        e.printStackTrace();
    }

    String endDateStr = (endDate != null) ? sdf.format(endDate) : "N/A";
    int totalPrice = price * numPassengers;

    request.setAttribute("name", name);
    request.setAttribute("email", email);
    request.setAttribute("phone", phone);
    request.setAttribute("startDate", startDateStr);
    request.setAttribute("endDate", endDateStr);
    request.setAttribute("numPassengers", numPassengers);
    request.setAttribute("totalPrice", totalPrice);
%>

<jsp:forward page="orderConfirmation.jsp" />
