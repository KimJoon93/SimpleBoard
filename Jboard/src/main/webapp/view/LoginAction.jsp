<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginAction</title>
</head>
<body>
<%
	String userID = request.getParameter("email");
	String userPw = request.getParameter("password");
	System.out.println(userID);
	
	if(userID!= null){
		session.setAttribute("UserID", userID);
		
	}
	response.sendRedirect("Home.jsp");
%>

<c:out value="${userId}"></c:out>

</body>
</html>