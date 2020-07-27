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
</head>
<body>

	<form action="${pageContext.request. contextPath}/sendmail" method="post">
	<div class="form-group">
	<label>Recipient: </label>
		<input class="form-control" type="text" name="recipient">
	</div>
	
	<div class="form-group">
	<label>Subject: </label>
		<input class="form-control" type="text" name="subject">
	</div>
	
	<div class="form-group">
	<label>Message: </label>
		<textarea class="form-control" rows="" cols="" name="message"></textarea>
	</div>
		<button class="btn btn-primary" type="submit">Send</button>
	</form>

</body>
</html>