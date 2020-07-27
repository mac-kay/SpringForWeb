<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<p>This is the homepage</p>
<h3>My name is <%=request.getAttribute("secondname") %></h3>
<h2>Call me ${secondname }</h2>

</body>
</html>