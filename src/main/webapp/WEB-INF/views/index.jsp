<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
if(session.getAttribute("role")==null)
{}
else if(session.getAttribute("role").equals("admin"))
{
	String destination = "/WEB-INF/adminHome.jsp";
	RequestDispatcher rd = getServletContext().getRequestDispatcher(destination);
	rd.forward(request, response);
}
else if(session.getAttribute("role").equals("user"))
{
	String destination = "/WEB-INF/employeeHome.jsp";
	RequestDispatcher rd = getServletContext().getRequestDispatcher(destination);
	rd.forward(request, response);
}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Employee Management System</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link rel="stylesheet" href="/resources/static/styles.css">
	</head>
	<body >
		
		<h2 style="text-align: center; background:black; padding:20px;color:white">Employee Management System</h2>		
		<div class="container">
			<%@include file="login.jsp" %>
		</div>
	</body>
</html>