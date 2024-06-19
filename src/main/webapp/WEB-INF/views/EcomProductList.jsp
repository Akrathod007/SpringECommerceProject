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
	<%
		List<EProductBean> products = (List<EProductBean>) request.getAttribute("products");
	%>
	
	<table border="1">
		<tr>
			<th>Product Id</th>
			<th>Product Name</th>
			<th>Qty</th>
			<th>Price</th>
		</tr>
		
		<%
			for(EProductBean p : products){
				out.print("<tr>");
				out.print("<td>" + p.getProductId() + "</td><td>" + p.getProductName() + "</td><td>"
							+ p.getQty() + "</td><td>" + p.getPrice() + "</td>"
						);
				out.print("<tr>");
			}
		%>
		
		
	</table>
</body>
</html>