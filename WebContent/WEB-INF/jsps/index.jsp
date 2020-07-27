<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<link rel="stylesheet" href="${pageContext.request. contextPath}/myresources/css/bootstrap.min.css"/>
</head>
<body class="container">

<h1>I am Working</h1>

<h2>My name is <%=session.getAttribute("name") %></h2>

					<table class="table">
					  <thead class="thead-dark">
					    <tr>
					      <th scope="col">S/N</th>
					      <th scope="col">Product</th>
					      <th scope="col">Price</th>
					      <th scope="col">Quantity</th>
					    </tr>
					  </thead>
					  <tbody>
		<c:forEach var="product" items="${myproducts}" varStatus="loop">
					    <tr>
					      <th scope="row">${loop.index+1}</th>
					      <td>${ product.name}</td>
					      <td>${ product.price}</td>
					      <td>${ product.quantity}</td>
					    </tr>
		</c:forEach>
					  </tbody>
					</table>

</body>
</html>