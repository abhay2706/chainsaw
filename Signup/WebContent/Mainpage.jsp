<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MainPage</title>
<style type="text/css">
h1{
color:maroon;
}

h2{
color:maroon;
}
body{
background-repeat: no-repeat;
background-size:100%; 
font-family:tahoma;
}
table{
opacity:1;
}
</style>
</head>
<body style="background-image: url('C:/Users/E5/Desktop/Bgs for project/welcomepage.jpg');"  >
<table align="center"><tr><td>
<h1 align="left" style="font-size:80px" ><b>Welcome to Online Banking</b></h1>
</td>
<td><div id = "banklogo" name = "banklogo">
<img src = "C:/Users/E5/Desktop/Bgs for project/icon.png" height=200 width=200 alt="This is image"/>
</div></td></tr></table>
<div>
<table border="none" cellspacing="20px" align = "center">
<tr>
<td>For Secure <i><b>Login</b></i> Click
<button  style = "background-color:#2C7EEE" onclick="division()">
<img src ="C:/Users/E5/Desktop/Bgs for project/lock1.png" width=40 height=40 />
</button></td>
<td>For <i><b>Register</b></i> Click
<button style = "background-color:#2C7EEE" onclick="signup()">
<img src ="C:/Users/E5/Desktop/Bgs for project/register.png" width=40 height=40/>
</button>
</td>
</tr>
</table>
</div>
<br><br>
<div id = "login" name = "login" style = "display:none">
<form action = "login" method="post">
<table align="center" frame = "box">
<tr>
<td><img src="C:/Users/E5/Desktop/Bgs for project/login2.png" height=50 width=50></td>
</tr>
<tr>
<td>UserName:</td>
<td><input type="text" name="uname" Placeholder = "abc@xyz.com"/><br></td>
</tr>
<tr><td>Password:</td>
<td><input type="password" name="password" Placeholder = "password"/><br><td>
</tr>
<tr>
<td><input type="submit" value="Login" id = "Login" /></td>
<td>New user? <a href = "signup.jsp"><b><i>Sign Up</i></b></a></td>
</tr>
</table>
</form>
</div>
<script type="text/javascript">
function division(){
	var x = document.getElementById("login");
	if(x.style.display=="none")
	{
		x.style.display="block";
	}
	else{
		x.style.display="none";
	}
}
</script>
<script type="text/javascript" language="JavaScript">
function signup()
{
window.location = 'signup.jsp'
}
</script>
</body>
</html>