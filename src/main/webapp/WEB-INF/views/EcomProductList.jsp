<%@page import="com.bean.EProductBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

</head>
<body>

	<h1>Product List</h1>
	<a href="eproductitem">Add Product</a><br><br>
	<a href="/serachproductbyname">Delete Product By Name</a><br><br>
	<a href="ehome">Home</a><br><br>
	<%
		List<EProductBean> products = (List<EProductBean>) request.getAttribute("products");
	%>
	
	<table border="1">
		<tr>
			<th>Product Id</th>
			<th>Product Name</th>
			<th>Category</th>
			<th>Qty</th>
			<th>Price</th>
			<th>Action</th>
		</tr>
		
		<%
			for(EProductBean p : products){
				out.print("<tr>");
				out.print("<td>" + p.getProductId() + "</td><td>" + p.getProductName() + "</td><td>" +p.getCategory() +"</td><td>"
							+ p.getQty() + "</td><td>" + p.getPrice() + "</td><td><a href='deleteproduct?productId="+p.getProductId()+"'>Delete</a> | <a href='viewproduct?productId="+p.getProductId()+"'>View</a></td>"
						);
				out.print("<tr>");
			}
		%>
		
		
	</table>
</body>
</html>