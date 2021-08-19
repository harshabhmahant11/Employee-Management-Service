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
		<title>Create Department</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link href="styles.css" rel="stylesheet" type="text/css">
		<script>
			if(<%request.getSession().getAttribute("role");%> == null)
			{
				window.history.replaceState( null, null, "${pageContext.request.contextPath}/index.jsp" );
			}
		</script>
			<style>
		.cstm-card {
			box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
			padding: 30px; 
			margin-top: 60px; 
			width: 800px !important;
			height: 180px !important;
		}

	</style>
	</head>
	<body>
		<h2 style="text-align: center; background:black; padding:20px;color:white">Employee Management System</h2>		
		
		<a class="nav-link" href="adminDashboard"> < Back </a>
		
		<h3 style="display: inline-block; text-align: left; margin : 15px;">Create Department</h2>
		

		<div class="container cstm-card">
			<form action="addDepartmentDetails" method="post">
				<div class="form-group" style="position: relative; top: -10px">
					<label for="department_nm">Department Name</label>
					<input name="department_nm" type="text" class="form-control" id="department_nm" maxlength="25" required>
				</div>
				<div style="position: relative; top: 10px">
					<input type="submit" class="btn btn-primary " value="Submit"/>
				</div>
			</form>
		</div>
	</body>
</html>