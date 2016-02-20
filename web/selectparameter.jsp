<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Select a Parameter</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<c:import url="nav.jsp" />
<div class="user-form">
	<h1><a href="viewResults.jsp">Select a Parameter to View</a></h1>
	<form action="ViewResultsServlet" method="post"> 
		<p>
			<select id="parameter" name="parameter">
                                <option value="1">GPA</option>
				<option value="2">ACT</option>
				<option value="3">SAT</option>
                                <option value="4">CAS</option>
				<option value="5">EE</option>
				<option value="6">TOK</option>
			</select>
		</p>
		<p>
			<input type="submit" class="button" value="View Routes" />
		</p>
	</form>
</div>
</body>
</html>