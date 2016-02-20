<html>
<head>
<title>Add University</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<h1>Add University</h1>
<c:import url="nav.jsp">
<div class="container">
<form action="AddUniServlet" method="post">
<label for="name">University Name</label>
<input type="text" name="name" id="name" /> State 
<select name="state" id="state">
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
<label for="alumno">Number of former IB students in attendance </label>
<input type="number" name="alumno" id="alumno" /> <br />
<label>Average Grade Point Average</label>
<input type="number" name="gpa" id="gpa" /> <br />
<label for="act">Average ACT score</label>
<input type="number" name="act" id="act" /> <br />
<label for="sat">Average SAT score</label>
<input type="number" name="sat" id="sat" /> <br />
For which of the following does this university give credit?<br />
<input type="checkbox" name="focus" id="focus" value="CAS" /> CAS
<input type="checkbox" name="focus" id="focus" value="EE" /> EE
<input type="checkbox" name="focus" id="focus" value="TOK" /> TOK <br />
In which category is the university strongest?
<select name="" id="">
    <option value="1">GPA</option>
    <option value="2">ACT</option>
    <option value="3">SAT</option>
    <option value="4">CAS</option>
    <option value="5">EE</option>
    <option value="6">TOK</option>
</select><br />
<input type="submit" value="Add" />
</form>
</div>
</body>
</html>