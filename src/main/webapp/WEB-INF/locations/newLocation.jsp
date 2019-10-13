<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isErrorPage="true" %> 
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

<div class="container">

<form:form action="/locations/new" method="post" modelAttribute="locationObj">
	<p>
		<form:errors path="address"/>
		<form:input path="address" placeholder="address"/>
	</p>
	<p>
		<form:errors path="city"/>
		<form:input path="city" placeholder="city"/>
	</p>
	<p>
		<form:errors path="state"/>
		<form:input path="state" placeholder="state Here"/>
	</p>
	<p>
		<form:select path="student">
			<c:forEach var="student" items="${students}">
				<form:option value="${student.id}"> <c:out value="${student.firstName}"/><c:out value="${student.lastName}"/></form:option>
			</c:forEach>
		
		</form:select>
		
	</p>
	<input type="submit" value="Submit"/>
</form:form>
</div>

</body>
</html>