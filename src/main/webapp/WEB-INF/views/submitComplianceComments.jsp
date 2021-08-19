<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
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
		<title>Add Compliance Comments</title>
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
			margin-top: 30px; 
			width: 1000px !important;
			height: 320px !important;
			}
			
			table
			{
				width:100%;
			}
			table, th, td
			{
				border: 1px solid black;
				border-collapse: collapse;
			}
			th, td
			{
				padding: 15px;
				text-align: left;
			}
			#t01 tr:nth-child(even)
			{
				background-color: #eee;
			}
			#t01 tr:nth-child(odd)
			{
				background-color: #fff;
			}
			#t01 th
			{
				background-color: black;
				color: white;
			}
		</style>
	</head>
	<body>
		<!-- <h2>Add Employee Details<h2> -->
		<h2 style="text-align: center; background:black; padding:20px;color:white">Employee Management System</h2>
				
		<a class="nav-link" href="viewEmployeeStatusReportsDetails"> < Back </a>
		
		<h3 style="display: inline-block; text-align: left; margin : 15px;">Add Compliance Comments</h2>
		
		<div class="container cstm-card">
			<form action="submitComplianceComments" method="post">
				<table id="t01">
					<tr>
						<th>Compliance ID</th>
						<th>RL Type</th>
						<th>Details</th>
						<th>Date Created</th>
						<!-- <th>Department</th> -->
						<!-- <th>Comments</th> -->
					</tr>
					<tr>
						<td>${sessionScope.currentCompliance.complianceid}</td>
						<td>${sessionScope.currentCompliance.rltype}</td>
						<td>${sessionScope.currentCompliance.details}</td>
						<td>${sessionScope.currentCompliance.createdate}</td>
						<!-- <td>${sessionScope.allDepartmentsDetails.get(compliance.department_id)}</td> -->
					</tr>
				</table>
				<div class="form-group" style="margin: 10px;">
					<label for="comments">Comments</label>
					<input name="comments" type="text" class="form-control" id="comments" maxlength="15" required>
				</div>
				<div style="position: relative; top: 10px; margin: 10px;">
					<input type="hidden" name="complianceid" value="${sessionScope.currentCompliance.complianceid}"/>
					<input type="hidden" name="department_id" value="${sessionScope.currentCompliance.department_id}"/>
					<input type="submit" class="btn btn-primary " value="Submit"/>
				</div>
			</form>
		</div>
	</body>
</html>