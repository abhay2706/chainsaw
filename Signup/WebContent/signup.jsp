<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body{
background-repeat:none;
background-size:100%;
}
table{
border-spacing:1em;
opacity:0.9;
}
</style>
<body onload="loaddobSelector()" style="background-image: url('C:/Users/E5/Desktop/Bgs for project/welcomepage.jpg');">
<h1 style="font-size:80px ; color:#519E09;">Sign Up Here</h1>
<form action = "SignupServlet" id = "myform" method = "post">
<table frame="box" id="mytable" >
<tr>
<td>UserName:</td>
<td><input type="text" id="firstname" name = "firstname" placeholder="Firstname"/></td>
<td><input type="text" id="middlename"name = "fathername" placeholder="Fathername"/></td>
<td><input type="text" id="surname" name = "surname" placeholder="Surname"/></td></tr>
<tr>
<td><label>Gender: </label></td>
<td><select id = "gender" name = "gender" >
<option>Male</option>
<option>Female</option>
</select></td></tr>
<tr>
<td>
<label>Email:</label>
</td>
<td>
<input type = "text" id="email" name = "email" placeholder="abc@xyz.com"/>
</td>
<td>
<label>Mobile Number :</label>
</td>
<td>
<input type = "text" id="mobile" name = "mobile" /></td>
</tr>
<tr>
<td>
<label>Aadhar Number :</label>
</td>
<td>
<input type ="text" name="aadhar" id = "aadhar"/>
</td>
</tr>
<tr>
<td>
<label>Password:</label>
</td>
<td>
<input type = "password" name="password" id="password"/>
</td>
<td>
<label>Confirm Password:</label>
</td>
<td>
<input type = "password" name="cpassword" id="cpassword"/>
</td>
</tr>
<tr>
<td>
<input type = "submit" value ="Register" id = "signup" onclick ="message();" style = "background-color:orange" />
</td>
<td>
<input type="button" value="Reset" onclick="myFunction()" style = "background-color:orange"/>
</td>
<td>
<input type="button" value="Login" onclick="login()" style = "background-color:orange"/>
</td>
</tr>
</table>
</form>
<script>
function myFunction() {
    document.getElementById("myform").reset();
}
</script>
<script>
function message(){
    var x = document.forms["myform"]["firstname"].value;
        if (x == "") {
            alert("Please Fill all the Details");
            return false;
        }
        else{
        	window.alert("Details added successfully");
        	
}
}
</script>
<script>
function login(){
	window.location='Mainpage.jsp';
}
</script>
</body>
</html>