<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <link rel="stylesheet" href="${pageContext.request. contextPath}/myresources/boxicons-2.0.3/css/boxicons.min.css">
    <link rel="stylesheet" href="${pageContext.request. contextPath}/myresources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request. contextPath}/myresources/css/style.css">
    <script src="${pageContext.request. contextPath}/myresources/js/jquery.js"></script>
</head>
<body>
	<h1>THIS IS A TEST PAGE</h1>
	<textarea class="form-control" id="textarea" rows="10" cols="60"></textarea>
	
	<button id="showbtn">Display Product</button>
	<p></p>
	<script>
		$(function(){
			
			$.ajax({
				url: "http://localhost:8080/inventorymgt/showsomething",
				type: "GET",
				success: function(data){
					document.querySelector('textarea').value = data;
				},
				error: function(){
					alert("Error: Could not make Ajax call")
				}
			})
			
		});
	</script>
</body>
</html>