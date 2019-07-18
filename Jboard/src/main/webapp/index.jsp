<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<link href="css/bootstrap.css" rel="stylesheet">
<!DOCTYPE html>
<meta charset="UTF-8">

<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost/BoardData" user = "root"  password = "0000"/>

<sql:query dataSource = "${snapshot}" var = "result">SELECT * FROM NewTable;</sql:query>

<c:set var="name" value="name_Value"></c:set>
Name : <c:out value="${name}" escapeXml="false"/>

<table class="table table-striped table-bordered table-hover">

<tr>
	<th>글제목</th>
	<th>날짜</th>
	<th>작성자ID</th>
</tr>

<c:forEach var="row" items="${result.rows}">
<tr>

	<td>${row.TITLE}</td>
	<td>${row.DATE}</td>
	<td>${row.WRITERID}</td>

</tr>

</c:forEach>
</table>