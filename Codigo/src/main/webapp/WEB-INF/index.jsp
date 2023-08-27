<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/styleIndex.css">
<meta charset="ISO-8859-1">
<title>Secret Code</title>
</head>
<body>
	<p class="error"><c:out value="${error}"></c:out></p>
	<p>What is the code?</p>
	<form method=POST action="/validate">
		<label> <input type="password" name="password"></label>
		<br><button>Try Code</button>
	</form>
</body>
</html>