<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit University Information</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="user-form">
	<h1>Edit University Info</h1>
        <c:import url="nav.jsp">
            <div class="container">
	<form action="UpdateUniServlet" method="post">
		<p>
			<label for="name">Name</label> <br />
			<input type="text" name="name" id="name" value="${uni.getName()}" />
		</p>
		<p>
			<label for="state">State</label> <br />
			<select name="state" id="state" value="${uni.getState()}">
                            <option value="AL">AL</option>
                            <option value="AK">AK</option>
                            <option value="AZ">AZ</option>
                            <option value="AR">AR</option>
                            <option value="CA">CA</option>
                            <option value="CO">CO</option>
                            <option value="CT">CT</option>
                            <option value="DE">DE</option>
                            <option value="FL">FL</option>
<option value="GA">GA</option>
<option value="HI">HI</option>
<option value="ID">ID</option>
<option value="IL">IL</option>
<option value="IN">IN</option>
<option value="IA">IA</option>
<option value="KS">KS</option>
<option value="KY">KY</option>
<option value="LA">LA</option>
<option value="ME">ME</option>
<option value="MD">MD</option> 
<option value="MA">MA</option>
<option value="MI">MI</option>
<option value="MN">MN</option>
<option value="MS">MS</option>
<option value="MO">MO</option>
<option value="MT">MT</option>
<option value="NE">NE</option>
<option value="NV">NV</option>
<option value="NH">NH</option>
<option value="NJ">NJ</option>
<option value="NM">NM</option>
<option value="NY">NY</option>
<option value="NC">NC</option>
<option value="ND">ND</option>
<option value="OH">OH</option>
<option value="OK">OK</option>
<option value="OR">OR</option>
<option value="PA">PA</option>
<option value="RI">RI</option>
<option value="SC">SC</option>
<option value="SD">SD</option>
<option value="TN">TN</option>
<option value="TX">TX</option>
<option value="UT">UT</option>
<option value="VT">VT</option>
<option value="VA">VA</option>
<option value="WA">WA</option>
<option value="WV">WV</option>
<option value="WI">WI</option>
<option value="WY">WY</option>
</select> <br />

		</p>
                
                <label for="alumno">Number of Alumni</label> <br />
			<input type="number" name="alumno" id="alumnno" value="${uni.getAlumno()}" />
                 <label for="gpa">GPA</label> <br />
			<input type="number" name="gpa" id="gpa" value="${uni.getGpa()}" />
                <label for="act">ACT</label> <br />
			<input type="number" name="act" id="act" value="${uni.getAct()}" />
                 <label for="sat">SAT</label> <br />
			<input type="number" name="sat" id="sat" value="${uni.getSat()}" /><br />
                For which of the following does this university give credit?<br />
<input type="checkbox" name="focus" id="focus" value="CAS" /> CAS
<input type="checkbox" name="focus" id="focus" value="EE" /> EE
<input type="checkbox" name="focus" id="focus" value="TOK" /> TOK <br />
<input type="submit" value="Add" />
                
                
		<p>
			<input class="button" type="submit" value="Save Changes" />
		</p>
	</form>
</div>
</body>
</html>