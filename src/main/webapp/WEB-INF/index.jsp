<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dojo Survey</title>
</head>
<body>
	<h1>Hello World!</h1>
	<form action="/submitSurvey" method="post">
		Your Name:<input type="text" name="name" >
		<br>
		Dojo Location:<select name="location" >
			<option value="Burbank">Burbank</option>
			<option value="Sanjose">San-Jose</option>
			<option value="Seattle">Seattle</option>
		</select>
		<br>
		Favorite Language:<select name="language" >
			<option value="Python">Python</option>
			<option value="MERN">MERN</option>
			<option value="Java">Java</option>
		</select>
		<br>
		Comment (optional):<br>
		<textarea name="comment" rows="5" cols="50"></textarea>
		<br>
		<input type="submit">
	</form>
</body>
</html>