<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<style>
		.login-card {
			box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
			padding: 30px; 
			margin-top: 60px; 
			width: 400px !important;
			height: 370px !important;
		}
		.cstm-btn {
			width:100% !important;
			padding-bottom : 30px;
		}
	</style>
		<meta charset="UTF-8">
		<title>Employee Management System - Login</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<!-- <link href="styles.css" rel="stylesheet" type="text/css"> -->
	</head>
	<body>
		<div class="container login-card">
			<h3 style="text-align: center; margin-bottom : 10px;">LogIn</h2>
			<form action="loginCheck" method="post">
				<div class="form-group" style="position: relative; top: -10px">
					<label for="userid">User ID</label>
					<input type="text" class="form-control" id="userid" name="userid" required>
				</div>
				<div class="form-group" style="position: relative; top: 0px">
					<label for="password">Password</label>
					<input name="password" type="password" class="form-control" id="password" required>
				</div>
				<div style="position: relative; top: 20px; width:100% ">
					<input type="submit" class="btn btn-primary cstm-btn" value="Sign In"/>
				</div>
			</form>
			<div style="position: relative; top: 25px; text-align:center">
				<span style="color: red">${requestScope.msg}</span>
			</div>
		</div>
	</body>
</html>