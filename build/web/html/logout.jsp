<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.sql.*,java.util.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>

<%
    // Hủy bỏ session để đăng xuất
    session.invalidate();
    // Chuyển hướng người dùng về trang chủ sau khi đăng xuất
    response.sendRedirect(request.getContextPath() + "/index.html");
%>
