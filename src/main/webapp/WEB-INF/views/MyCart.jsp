<%@page import="com.bean.EProductBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product List</title>
<style>
	*{
		border-box:box-sizing;
	}
	body{
		width:100vw;
		height:100vh;
		overflow-x:hidden;
	}
	#cartbox{
		display:flex;
		width:80%;
		margin:0 auto;
		gap:10px;
		flex-wrap:wrap;
	
	}
	
	#cart{
		display:flex;
		border:1px solid black;
		gap:5px;
		width:500px;
		height:300px;
		gap:20px
		
	}
	#details{
		display:flex;
		flex-direction:column;
		
	}
	h1{
		font-size:20px;
		font-family:sans-serif;
		color:blue;
	}
	#remove-btn{
		background:red;
		text-decoration:none;
		text-align:center;
		padding:10px;
		color:white;
		width:100px;
		font-size:17px;
		font-weight:600;
	}
	#buy-box{
		position:absolute;
		top:100px;
		right:100px;
		border:2px solid darkorange;	
		padding:20px
	}
	#checkout{
		background:green;
		text-decoration:none;
		text-align:center;
		padding:10px;
		color:white;
		width:200px;
		font-size:17px;
		font-weight:600;
	}
</style>
</head>
<body>

    <h1>Product List</h1>
    
    <a href="ehome">Home</a><br><br>
    <%
        List<EProductBean> products = (List<EProductBean>) request.getAttribute("products");
        Float total = 0.0f;
    %>
    
    <div id="cartbox">
        <% 
        if (products != null) {
            for(EProductBean p : products) {
            	out.println("<div id='cart'>");
                out.println("<img src='" + p.getProductImagePath() + "' width='200px'/>");
                // You can calculate the total price here if needed
                 total += p.getPrice(); 
                	out.println("<div id='details'>");
        			out.println("<h1> Product Name:"+p.getProductName()+"</h1>");
        			out.println("<h1> Category:"+p.getCategory()+"</h1>");
        			out.println("<h1> Qty:"+p.getQty()+"</h1>");
        			out.println("<h1> Price:"+p.getPrice()+"</h1>");
        			out.println("<a id='remove-btn' href='removefromcart?productId="+p.getProductId()+"'>Remove</a>");
        			out.println("</div>");
        			out.println("</div>");
            }
        } else {
            out.println("No products available.");
        }
        %>
    </div>    
    <div id="buy-box">
    <h1>Total = <%= total %></h1>
    <a href="checkout" id="checkout">Checkout</a>
    </div>
</body>
</html>
