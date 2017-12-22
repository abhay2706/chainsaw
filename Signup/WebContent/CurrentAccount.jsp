<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accounts</title>
</head>
<body style="background-image: url('C:/Users/E5/Desktop/Bgs for project/welcomepage.jpg');">

<div id="acclogin">
<form action="CurrentLoginServlet" method = "post">
<div align="center" >
<label style = "font-size:30px; color:red">Login to your <i><b>Currents </b></i>Account</label></div>
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
</div>
<div id ="welcome" style = "display:none" >
<label style ="font-size:50px; color:red;">Welcome Vamshi Nagula</label><br><br>
<label style ="font-size:50px; color:green;">You have <b>10000</b> INR in your account</label><br><br>
<label style ="font-size:25px;">Please check the Operation and Enter the amount below:</label><br>
<table><tr>
<td><input type="checkbox" name ="oprs" id="check1" onclick ="selectOnlyThis(this)"/>Withdraw
</td>
<td align ="center"><input type="checkbox" name ="oprs" id="check2" onclick="selectOnlyThis(this)" />Deposit
</td>
<td><input type="checkbox" name ="oprs" id="check3" onclick="selectOnlyThis(this)" />Transfer
</td>
</tr></table>
<table>
<tr>
<td>Enter Amount:</td>
<td><input type ="text" id="amount" name = "amount"></td>
<td><input type ="button" onclick="operations()" value ="Confirm"></td>
</tr>
</table>
</div>
<div style ="display:none" id ="transfer">
<label>Enter the recipient account Number below :</label><br>
<input type ="text" id ="recnum" name="recnum" />
<input type ="button" id="transferamt" name="transferamt" onclick="transferamt()" value ="Transfer"/></div>

<script type="text/javascript">
function selectOnlyThis(id){
	  var myCheckbox = document.getElementsByName("oprs");
	  Array.prototype.forEach.call(myCheckbox,function(el){
	    el.checked = false;
	  });
	  id.checked = true;
	}
</script>
<script type="text/javascript">

function operations(){
	var x = Number(document.getElementById("amount").value);
	var y = 10000;
	var z;
	if(document.getElementById("check1").checked){
	z = y-x;
	alert("Amount withdraw Successful"+"\n"+"Your Balance amount is: " + z);
	}
	else if(document.getElementById("check2").checked){
		z = y+x;
	alert("Amount Deposit Successful"+"\n"+"Your Balance amount is: " + z);
	}
	else if(document.getElementById("check3").checked){
		document.getElementById("transfer").style.display="block";
	}
}
function transferamt(){
	var a = document.getElementById("recnum").value;
	var b = Number(document.getElementById("amount").value);
	var c = 10000;
	var z;
	z = c-b;
	alert("amount successfully transferred to "+ a +"\n"+"Your Balance amount is: "+ z);
}
</script>
<script type="text/javascript">
function log(){
	
}
</script>
</body>
</html>