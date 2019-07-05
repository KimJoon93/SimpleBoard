<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Joon Simple board</title>
</head>
<body>

<sql: var = "snapshot" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost/SimpleBoard" user = "root"  password = "0000"/>
<sql:query datasource = "${snapshot}" var = "Result">SELECT * FROM NewTable</sql:query>



<c:out value="${ddd}"></c:out>

<table>
<tr>
	<th>글제목</th>
	<th>날짜</th>
	<th>작성자ID</th>
</tr>

<c:forEach var="row" items="${Result.row}">
<tr>
	<td>${row.TITLE}</td>
	<td>${row.date}</td>
	<td>${row.writerID}</td>
</tr>
</c:forEach>
</table>

</body>
</html>