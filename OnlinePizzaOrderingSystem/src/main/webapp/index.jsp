<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		if(session.getAttribute("username")==null){
			response.sendRedirect("NewUser.jsp#login");
		}
	
	%>

	<h2>Welcome ${username} this is home screen</h2>
	
</body>
</html>