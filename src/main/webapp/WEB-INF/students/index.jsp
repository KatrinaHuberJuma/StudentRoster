<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

<div class="container">
<!-- <a href="/Students/topsongs">top songs</a> -->
<h1>All Students</h1>
<table>
    <thead>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Age</th>
            <th>Address</th>
            <th>City</th>
            <th>State</th>
        </tr>
    </thead>
    <tbody>
    
        <c:forEach items="${students}" var="student">
        <tr>
        
            <td><c:out value="${student.firstName}"/></td>
            <td><c:out value="${student.lastName}"/></td>
            <td><c:out value="${student.age}"/></td>
            <td><c:out value="${student.location.address}"/></td>
            <td><c:out value="${student.location.city}"/></td>
            <td><c:out value="${student.location.state}"/></td>
           
        </tr>
        </c:forEach>
    </tbody>
</table>
<a href="/students/new">New Student</a>


</div>


</body>
</html>