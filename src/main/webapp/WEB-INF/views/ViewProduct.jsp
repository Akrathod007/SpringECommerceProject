<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Product</title>
<style type="text/css">
	*{
		box-sizing: border-box;
		margin: 0;
		padding: 0;
		font-family: sans-serif;
	}
	body{
		height:100vh;
	}
	#title{
		text-align: center;
		background:teal;
		color:white;
		padding: 20px 0;
	}
	#title:hover{
		color: orange;
		transition:0.5s;
	}
	img{
		overflow: hidden;
		padding: 20px;
		transition:0.5s;
	}
	img:hover{
		transform:scale(1.2);
	}
	#product-box{
		display: flex;
		border: 1px solid black;
		height:90%;
		justify-content: center;
		align-items: center;
	}
	#product{
		display: flex;
		border: 2px solid orange;
		padding: 25px;
		align-items:center;
		border-radius: 10px;
		gap:10px;
		
	}
	
	
	#product-name,#product-category,#product-qty,#product-price{
		display: flex;
		gap:10px;
		margin-bottom: 10px;
		margin-left: 20px;
	}
	#key{
		color: blue;
	}
	#value{
		color: orange;
	}
	
	#buy-btn{
		background: rgba(0,255,0,0.7);
		text-decoration: none;
		padding: 10px 20px;
		color: white;
		margin-top: 10px;
		margin-left: 20px;
		display: block;
		text-align: center;
	}
	#buy-btn:hover{
		background:pink;
		transition:0.5s;
	}
	#line{
		width:2px;
		height: 300px;
		background: orange;
	}
</style>
</head>
<body>
	<h1 id="title">View Product</h1>
	<div id="product-box">
	<div id="product">
		<img src =${product.productImagePath}/>
		<div id="line"></div>
	<div id="product-details">
		<div id="product-name">
			<h2 id="key">
			Product Name: 
			</h2>
			<h2 id="value">		
			${product.productName }
			</h2>
		</div> 
		
		<div id="product-category">
			<h2 id="key">
			Category: 
			</h2>
			<h2 id="value">		
			${product.category }
			</h2>
		</div> 
		
		<div id="product-qty">
			<h2 id="key">
			Quantity: 
			</h2>
			<h2 id="value">		
			${product.qty }
			</h2>
		</div> 
		
		<div id="product-price">
			<h2 id="key">
			Price: 
			</h2>
			<h2 id="value">		
			${product.price }
			</h2>
		</div> 
		
		<a href="buynow" id="buy-btn">Buy Now</a>
	</div>
	</div>
</div>
</body>
</html>