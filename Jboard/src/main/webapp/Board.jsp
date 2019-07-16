<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Joon Simple board</title>
</head>
<body>
<sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost:3306/BoardData" user = "root" password = "0000"/>
<sql:query dataSource = "${ds}" sql = "SELECT * FROM NewTable" var = "result" />

<table>
<tr>
	<th>글제목</th>
	<th>날짜</th>
	<th>작성자ID</th>
</tr>	

<c:forEach var="row" items="${result.rows}">
<tr>
	<td><c:out value = "${row.TITLE}"/></td>
	<td><c:out value = "${row.DATE}"/></td>
	<td><c:out value = "${row.WRITERID}"/></td>
</tr>
</c:forEach>
</table>

</body>
</html>