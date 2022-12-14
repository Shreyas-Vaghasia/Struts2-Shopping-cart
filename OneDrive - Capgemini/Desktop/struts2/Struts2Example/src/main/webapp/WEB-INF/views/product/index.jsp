<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products</title>
</head>
<body>

</body>
</html><%@ page language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"
	isELIgnored="false"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

</head>
<body class="">
	<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
		<a class="navbar-brand" href="#">Shopping Cart</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Features</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">Pricing</a></li>
				<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a>
				</li>
			</ul>
		</div>
	</nav>

	<h3 class="text-center mt-5">Products Page</h3>
	<div class="container">
		<table class="table table-hover table-bordered mt-5 ">
			<thead class="thead-dark">
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Photo</th>
					<th>Price</th>
					<th>Buy</th>
				</tr>
			</thead>


			<c:forEach var="product" items="${products}">
				<tr>
					<td>${product.id }</td>
					<td>${product.name }</td>
					<td><img class="img-thumbnail"
						src="${pageContext.request.contextPath }/assets/images/${product.photo }"
						width="50"></td>
					<td>${product.price }</td>
					<td align="center"><s:url var="url_buy" namespace="/cart"
							action="buy">
							<s:param name="id">${product.id}</s:param>
						</s:url> <s:a href="%{url_buy}">
							<button class="btn btn-primary">Buy Now</button>
						</s:a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<footer id="sticky-footer"
		class="flex-shrink-0 py-4 bg-dark text-white-50">
		<div class="container text-center">
			<small class="text-white">Copyright &copy; Created by Shreyas
				Vaghasia</small>
		</div>
	</footer>
</body>
</html>
