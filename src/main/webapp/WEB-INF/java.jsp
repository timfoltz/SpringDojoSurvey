<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Java</title>
</head>
<body>
	<h1>Submitted Info</h1>
		<h3>Name:   <c:out value="${name }"></c:out></h3>
		<h3>Dojo Location:    <c:out value="${location }"></c:out></h3>
		<h3>Favorite Language:    </h3><h1><c:out value="${language }"></c:out></h1>
		<h3>Comment:    <c:out value="${comment }"></c:out></h3>
</body>
</html>