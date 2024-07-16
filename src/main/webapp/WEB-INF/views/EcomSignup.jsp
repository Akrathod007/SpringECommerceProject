<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup | ECommerce Project</title>
</head>
<body>
	<form action="ecomsignup" method="post" enctype="multipart/form-data">
		<h1>Signup Here</h1>
		
		<label>First Name:</label>
		<input type="text" name="firstname"/>
		<br><br>
		
		<label>Email:</label>
		<input type="email" name="email"/>
		<br><br>
		
		<label>Password:</label>
		<input type="password" name="password"/>
		<br><br>
		
		<label>Profile</label>
		<input type="file" name="profilePic"/><br><br>
		<input type="submit" value="Signup"/>
	</form>
</body>
</html>