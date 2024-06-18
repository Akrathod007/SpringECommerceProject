<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

</head>
<body>
	<h1>Product Deatails</h1>
	
	<form action="saveproduct" method="post">
		Product Name:<input type="text" name="productName"/> <br><br>
		Category : <input type="text" name="Category"/> <br><br>
		qty : <input type="text" name="qty"/> <br><br>
		price <input type="text" name="price"/> <br><br>
		
		<input type="submit" value="Add Product"/>
	</form>
</body>
</html>