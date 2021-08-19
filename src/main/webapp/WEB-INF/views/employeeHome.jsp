<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);
if(session.getAttribute("userid")==null || session.getAttribute("role")==null)
{
	response.sendRedirect(request.getContextPath() + "/index.jsp");
}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Employee Management System - Employee Home</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="styles.css" />
		<script>
			if(<%request.getSession().getAttribute("role");%> == null)
			{
				window.history.replaceState( null, null, "${pageContext.request.contextPath}/index.jsp" );
			}
		</script>
	</head>
	<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
		<h2 style="text-align: center; background:black; padding:20px;color:white">Employee Management System</h2>
		<div class="inline-block">
				<h2 style="display: inline-block; text-align: left; margin : 15px;">Employee Console</h2>
				<a class="btn btn-primary" href="logout" style="display: inline-block; position: relative; float:right; margin: 15px;">Logout</a>
		</div>
		
		<div class = "container">
		
		<h3 style="position: relative; text-align: center; margin-top : 25px">Regulations</h3>
		<hr>
		<ul class="nav" style="position: relative; left: 10px; top: 10px;">	
			<li style="margin:10px">
				<a href="viewAssignedCompliancesDetails">
				<button type="button" class="btn btn-outline-dark">Regulations To Accept</button>
				</a>
			</li>
		</ul>
		
		<h3 style="position: relative; text-align: center; margin-top : 25px">Compliance Tracking</h3>
		<hr>
		<ul class="nav" style="position: relative; left: 10px; top: 10px;">
			<li style="margin:10px">
				<a href="viewEmployeeStatusReportsDetails">
				<button type="button" class="btn btn-outline-dark">View or Update Compliances</button>
				</a>
			</li>
		</ul>
		<div style="position: relative; top: 25px">
			<span style="color: red">${requestScope.msg}</span>
		</div>
		</div>
	</body>
</html>