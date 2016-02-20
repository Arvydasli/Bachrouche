<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>By ACT</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<h1>Universities</h1>
<c:import url="nav.jsp">
    <div class="container">
<table>
    <tr class="headings">
	<td>University</td>
	<td>State</td>
	<td># of alumni</td>
	<td>GPA</td>
	<td>ACT</td>
        <td>SAT</td>
        <td>Credit for</td>
    </tr>
    <c:forEach var="result" items="${resultList}" begin="0">
    <tr>
        <td><c:out value="${result.name}" /></td>
        <td><c:out value="${result.state}" /></td>
        <td><c:out value="${result.alumno}" /></td>
        <td><c:out value="${result.gpa}" /></td>
        <td><c:out value="${result.act}" /></td>
        <td><c:out value="${result.sat}" /></td>
        <td><c:out value="${result.focus}" /></td>
    </tr>
</table>
    </div>
</body>
</html>