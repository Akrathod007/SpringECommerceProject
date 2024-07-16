<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login | ECommerce Project</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

	
	<div class="container-fluid">
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6">
				<h2>Ecom Login</h2>
				<form action="elogin" method="post">
					<div class="form-group">
						Email : <input type="text" name="email" class="form-control"/><br><br>
					</div>
					
					<div class="form-group">
					Password : <input type="password" name="password" class="form-control"/><br><br>
					</div>
					
					<input type="submit" value="Login" class="brn btn-success"/>
				</form>
				<br>
				<span class="text-danger">${error}</span>
			</div>
		</div>
	</div>
</body>
</html>