<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Login to Savings Account</h1>
<form action="SavingLoginServlet" method = "post">
<div align="center" >
<label style = "font-size:30px; color:red">Login to your <i><b>Savings</b></i>Account</label></div>
<table align="center">
  <tr>
  </tr>
  <tr>
  <td>Aadhar Number:</td>
  <td><input type="text" id="aadhar" name = "aadhar"/></td>
  </tr>
  <tr>
  <td>Pin/Password:</td>
  <td><input type="password" id="pin" name="pin"/>
  <input type="button" value="?" style="background:red" data-toggle = "tooltip" title ="It is 4 digit Pin Number must match with the Number
   you entered during account creation"/>
  </td>
  </tr>
  <tr>
  <td><input type="submit" value ="Login" id="login" name="login"/></td>
  </tr>
  </table>
  </form>
</body>
</html>