<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="${pageContext.request. contextPath}/myresources/boxicons-2.0.3/css/boxicons.min.css">
    <link rel="stylesheet" href="${pageContext.request. contextPath}/myresources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request. contextPath}/myresources/css/style.css">
<title>Insert title here</title>
</head>
<body>

<sql:query var="rs" dataSource="jdbc/inventorymgtdb">
select * from products
</sql:query>
<main class="container mt-5">
		<c:forEach var="row" items="${rs.rows}" varStatus="loop">
		        <div class="product row">
		            <div class="img bg-dark col-2 p-0">
		                <img src="C:/Users/MACmills/Documents/MyTomCat/apache-tomcat-9.0.21/tmpFiles/hero-2.jpg" height="100%">
		            </div>
		            <div class="infos bg-light col">
		                <h5 class="product-name">${row.name}</h5>
		                <p class="price">Price: <span>${row.price}</span></p>
		                <p class="quantity">Quantity: <span>${row.quantity}</span></p>
		            </div>
		        </div>
		</c:forEach>
</main>

</body>
</html>