<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Welcome EcomHome</h1>
	
	Welcome, ${user.firstname}<br>
	
	<img src="${user.profilePicPath}" height="100px" width="100px"/>
	<br>
	
	<a href="userproducts">Products</a>
</body>
</html>