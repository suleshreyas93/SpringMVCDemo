<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>WELCOME TO MY OFFERS</center>
<hr>
<br/><br/><br/>
<sql:query var="result" dataSource="jdbc/spring">
select * from offers
</sql:query>

<center><c:out value="${offer }"></c:out></center>

<center>
	<table border="2px solid black" style="border-collapse:collapse" cellpadding="5px" cellspacing="5px">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Email</th>
			<th>Offer</th>
		</tr>
		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td>${row.id}</td>
				<td>${row.name }</td>
				<td>${row.email }</td>
				<td>${row.text }</td>
			</tr>
		</c:forEach>
		
	</table>
</center>

</body>
</html>