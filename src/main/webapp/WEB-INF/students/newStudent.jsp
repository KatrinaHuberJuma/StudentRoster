<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isErrorPage="true" %> 
    
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

<form:form action="/students/new" method="post" modelAttribute="studentObj">
	<p>
		<form:errors path="firstName"/>
		<form:input path="firstName" placeholder="First Name Here"/>
	</p>
	<p>
		<form:errors path="lastName"/>
		<form:input path="lastName" placeholder="Last Name Here"/>
	</p>
	<p>
		<form:errors path="age"/>
		<form:input path="age" placeholder="age Here"/>
	</p>
	<input type="submit" value="Submit"/>
</form:form>
</div>

</body>
</html>