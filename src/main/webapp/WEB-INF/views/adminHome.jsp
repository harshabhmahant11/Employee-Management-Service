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
		<title>Employee Management System - Admin Home</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="styles.css" />
		<script>
			//if ( window.history.replaceState )
			if(<%request.getSession().getAttribute("role");%> == null)
			{
				//window.history.replaceState( null, null, window.location.href );
				window.history.replaceState( null, null, "${pageContext.request.contextPath}/index.jsp" );
			}
		</script>
	</head>
	<body>
		<h2 style="text-align: center; background:black; padding:20px;color:white">Employee Management System</h2>
		<div class="inline-block">
				<h2 style="display: inline-block; text-align: left; margin : 15px;">Admin Console</h2>
				<a class="btn btn-primary" href="logout" style="display: inline-block; position: relative; float:right; margin: 15px;">Logout</a>
		</div>
		<div class = "container">
		
		<h3 style="position: relative;text-align: center; margin-top : 25px">Departments</h3>
		<hr>
		<ul class="nav" style="position: relative; left: 10px; top: 10px;">
			<li style="margin:10px">	  
				<a href="createDepartment">
				<button type="button" class="btn btn-outline-dark">Create Department</button>
				</a>
			</li>
			<li style="margin:10px">				  
				<a href="viewDepartmentsDetails">
				<button type="button" class="btn btn-outline-dark">List Departments</button>
				</a>
			</li>
		</ul>
		
		<h3 style="position: relative; text-align: center; margin-top : 25px">Employees</h3>
		<hr>
		<ul class="nav" style="position: relative; left: 10px; top: 10px;">
			
			<li style="margin:10px">
				<a href="addEmployeeDetails">
				<button type="button" class="btn btn-outline-dark">Add Employee Information</button>
				</a>
			</li>
			<li style="margin:10px">
				<a href="viewEmployeesDetails">
				<button type="button" class="btn btn-outline-dark">List Employees</button>
				</a>
			</li>
			<li style="margin:10px">
				<a href="inputEmployeeId">
				<button type="button" class="btn btn-outline-dark">Edit Employee Details</button>
				</a>
			</li>
			<li style="margin:10px">
				<a href="deleteEmployeeDetails">
				<button type="button" class="btn btn-outline-dark">Delete Employee Details</button>
				</a>
			</li>
		</ul>
		<h3 style="position: relative; text-align: center; margin-top : 25px">Regulations</h3>
		<hr>
		<ul class="nav" style="position: relative; left: 10px; top: 10px;">	
			<li style="margin:10px">
				<a href="createCompliance">
				<button type="button" class="btn btn-outline-dark">Create Regulation</button>
				</a>
			</li>
			
			<li style="margin:10px">
				<a href="viewCompliancesDetails">
				<button type="button" class="btn btn-outline-dark">List Regulations</button>
				</a>
			</li>
		</ul>
		<h3 style="position: relative; text-align: center; margin-top : 25px">Compliance Tracking</h3>
		<hr>
		<ul class="nav" style="position: relative; left: 10px; top: 10px;">
			<li style="margin:10px">
				<a href="viewStatusReportsDetails">
				<button type="button" class="btn btn-outline-dark">View Status Reports</button>
				</a>
			</li>
		</ul>
		
		<div style="position: relative; top: 25px">
			<span style="color: red">${requestScope.msg}</span>
		</div>
		
		</div>
	</body>
</html>