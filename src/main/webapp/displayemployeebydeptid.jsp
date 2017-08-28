<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Getting Employee Info By ID</title>
</head>
<body>
	<c:choose>
		<c:when test="${not empty requestScope.empObject}">
			<table>
				<tr>
					<td>Employee No.</td>
					<td>Department No.</td>
					<td>DoJ</td>
					<td>DoB</td>
					<td>salary</td>
					<td>Salary Grade</td>
				</tr>

				<c:forEach items="${requestScope.empObject}" var="emp">
					<tr>
						<td>${emp.number}</td>
						<td>${emp.deptNumber}</td>
						<td>${emp.doJ}</td>
						<td>${emp.doB}</td>
						<td>${emp.salary}</td>
						<td>${emp.salGrade}</td>
					</tr>
				</c:forEach>




			</table>
		</c:when>
		<c:otherwise>
   No Department Number Exists with that ID
  </c:otherwise>
	</c:choose>
</body>
</html>