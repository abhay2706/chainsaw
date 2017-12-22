<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
<style>
body {

background-size:cover;
font-family:tahoma;

}

/* Style the tab */
div.tab {
    overflow: hidden;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
div.tab button {
    background-color: inherit;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    transition: 0.3s;
    font-size: 17px;
}

/* Change background color of buttons on hover */
div.tab button:hover {
    background-color: #ddd;
}

/* Create an active/current tablink class */
div.tab button.active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
    display: none;
    padding: 6px 12px;
    border: 1px solid #ccc;
    border-top: none;
}
</style>
</head>
<body style="background-image: url('C:/Users/E5/Desktop/Bgs for project/welcomepage.jpg');" onload="loaddobSelector(); dob(); zero();">
<div class="tab">
  <button class="tablinks" onclick="create()">Create Account</button>
  <button class="tablinks" onclick="acopen()">Manage Account</button>
  <button class="tablinks" onclick="about()">About</button>
</div>

<div id="create" class="tabcontent" style="display:none">
<input type = "checkbox" name="openac" id="check1" value="Value1" onclick="selectOnlyThis(this)"/>Savings  
<input type = "checkbox" name="openac" id="check2" value="Value1" onclick="selectOnlyThis(this)"/>Currents  
<input type = "checkbox" name="openac" id="check3" value="Value1" onclick="selectOnlyThis(this)"/>Fix Deposit 
<input type = "button" value = "Go" name = "go" id = "go" onclick="chec()"/>


<div id="savings" name = "savings" style="display:none">
<form action ="SavingServlet" method = "post" id = "savin">
<label style="font-size:41px ; color:#519E09;">Please fill the details to Register</label><br>
<label style="font-size:30px; color:#519E09;"><u>Savings Account</u> </label>
<table><tr><td>
<label>FullName:</label></td>
<td><input type="text" id="firstname" name="firstname" placeholder="Firstname" /></td>
<td><input type="text" id="fathername" name="fathername" placeholder="Fathername" /></td>
<td><input type="text" id="lastname" name="lastname" placeholder="Surname" /></td><tr>
<tr>
<td><label>Date of Birth:</label></td>
<td><select id="dateselect" name = "date" >
</select>
<select id="monthselect" name = "month">
</select>
<select id="yearselect" name = "year"  >
</select></td>
<td align = "right"><label>Age: </label>
<input type = "text" size = "5" name = "age" id = "age" onfocus="autoage()" readonly/></td>
</tr>
<tr>
<td>
<label>Address :</label>
</td>
<td><textarea rows="2" cols="15" id="address" name = "address"></textarea></td>
</tr>
<tr>
<td><label>Aadhar Number :</label></td>
<td><input type = "text" name = "aadhar" id = "aadhar"/></td>
</tr>
<tr>
<td>Create 4 digit pin:</td>
<td><input type = "password" id="pin" name="pin" />
</td></tr>
<tr>
<td><input type = "submit" value = "Create" name="savedata" id="savedata"/></td>
</tr>
</table>
</form>
</div>


<div id="currents" name = "currents" style="display:none">
<form action ="CurrentServlet" method = "post" id = "currents">
<label style="font-size:41px ; color:#519E09;">Please fill the details to Register</label>
<br><label style="font-size:30px; color:#519E09;"><u>Currents Account</u> </label>
<table><tr><td>
<label>Owner Name:</label></td>
<td><input type="text" id="firstname" name="firstname" placeholder="Firstname" /></td>
<td><input type="text" id="fathername" name="fathername" placeholder="Fathername" /></td>
<td><input type="text" id="lastname" name="lastname" placeholder="Surname" /></td><tr>
<tr>
<td>
<label>Business Name:</label>
</td>
<td><input type="text" name="business" id="business"/></td>
</tr>
<tr>
<td><label>Date of Birth:</label></td>
<td><select id="dateselects" name = "date" >
</select>
<select id="monthselects" name = "month">
</select>
<select id="yearselects" name = "year"  >
</select></td>
<td align = "right"><label>Age: </label>
<input type = "text" size = "5" name = "age" id = "age1" onfocus="autoage1()" readonly/></td>
</tr>
<tr>
<td>
<label>Address :</label>
</td>
<td><textarea rows="2" cols="15" id="address" name = "address"></textarea></td>
</tr>
<tr>
<td><label>Aadhar Number :</label></td>
<td><input type = "text" name = "aadhar" id = "aadhar"/></td>
</tr>
<tr>
<td>Create 4 digit pin:</td>
<td><input type = "password" id="pin" name="pin" />
</td>
</tr>
<tr>
<td><input type = "submit" value = "Create"  id="savedata"/></td>
</tr>
</table>
</form>
</div>
</div>


<div id ="fixdeposit" style="display:none">
<h4>This Feature is not updated yet.<br>
This feature will be updated soon and will notify.
 </h4>
</div>
<div id="acopen" class="tabcontent" style="display:none">
  <p style ="color:red"><b>If you are already have an account click below to manage transactions and view account data</b></p><br>
  <input type="button" value="Savings" id="Savings" name="Savings" onclick="Savings()"/>
  <input type="button" value="Savings" id="Currents" name="Currents" onclick="Currents()"/>
</div>
<script>
function Savings(){
	window.location('SavingAccount.jsp');
}
</script>
<script>
function Currents(){
	window.location('CurrentAccount.jsp');
}
</script>
<div id="about" class="tabcontent" style="display:none">
  <h3>This is Online banking Web application</h3>
  <p>You can perform various operations.You can securely Register in this application. You can create any type of <br>
  Accounts like Savings, Currents, Fix Deposit. You can Securely Log in into this application.
  </p>
</div>
<script type="text/javascript">
function create(){
	var x = document.getElementById('create');
	var y = document.getElementById('acopen');
	var z = document.getElementById('about');
	if(y.style.display==='none' && z.style.display==="none"){
		x.style.display="block";
	}
	else if(y.style.display==='block' && z.style.display==="none"){
		y.style.display="none";
		x.style.display="block";
	}
	else if(y.style.display==='none' && z.style.display==="block"){
		z.style.display="none";
		x.style.display="block";
	}
	else{
		y.style.display="none";
		x.style.display="none";
	}
}
</script>
<script type="text/javascript">
    function selectOnlyThis(id){
  var myCheckbox = document.getElementsByName("openac");
  Array.prototype.forEach.call(myCheckbox,function(el){
    el.checked = false;
  });
  id.checked = true;
}
</script>
<script type="text/javascript">
function acopen(){
	var x = document.getElementById('create');
	var y = document.getElementById('acopen');
	var z = document.getElementById('about');
	if(x.style.display==='none' && z.style.display==="none"){
		y.style.display="block";
	}
	else if(x.style.display==='block' && z.style.display==="none"){
		x.style.display="none";
		y.style.display="block";
	}
	else if(x.style.display==='none' && z.style.display==="block"){
		z.style.display="none";
		y.style.display="block";
	}else{
		z.style.display="none";
		x.style.display="none";
	}
	
}
</script>
<script type="text/javascript">
function about(){
	var x = document.getElementById('create');
	var y = document.getElementById('acopen');
	var z = document.getElementById('about');
	if(x.style.display==='none' && y.style.display==="none"){
		z.style.display="block";
	}
	else if(x.style.display==='block' && y.style.display==="none"){
		x.style.display="none";
		z.style.display="block";
	}
	else if(x.style.display==='none' && y.style.display==="block"){
		y.style.display="none";
		z.style.display="block";
	}
	else{
		y.style.display="none";
		x.style.display="none";
	}
}
</script>
<script>
function loaddobSelector()
{
var startDate = 01 ;
var endDate = 31;
for (var i = startDate;i<=endDate;i++){
    node=document.createElement("Option");
    textnode=document.createTextNode(i);
    node.appendChild(textnode);
    document.getElementById("dateselect").appendChild(node);
}
var startMonth = 01 ;
var endMonth = 12;
for (var i = startMonth;i<=endMonth;i++){
    node=document.createElement("Option");
    textnode=document.createTextNode(i);
    node.appendChild(textnode);
    document.getElementById("monthselect").appendChild(node);
}
var startYear = 2017 ;
var endYear = 1960;
for (var i = startYear;i>endYear;--i){
    node=document.createElement("Option");
    textnode=document.createTextNode(i);
    node.appendChild(textnode);
    document.getElementById("yearselect").appendChild(node);
}
}
</script>
<script>
function dob()
{
var startDate = 01 ;
var endDate = 31;
for (var i = startDate;i<=endDate;i++){
    node=document.createElement("Option");
    textnode=document.createTextNode(i);
    node.appendChild(textnode);
    document.getElementById("dateselects").appendChild(node);
}
var startMonth = 01 ;
var endMonth = 12;
for (var i = startMonth;i<=endMonth;i++){
    node=document.createElement("Option");
    textnode=document.createTextNode(i);
    node.appendChild(textnode);
    document.getElementById("monthselects").appendChild(node);
}
var startYear = 2017 ;
var endYear = 1960;
for (var i = startYear;i>endYear;--i){
    node=document.createElement("Option");
    textnode=document.createTextNode(i);
    node.appendChild(textnode);
    document.getElementById("yearselects").appendChild(node);
}
}
</script>
<script type="text/javascript">
	var today = new Date();
	var date1 = today.getDate();
	var month1 = today.getMonth()+1; //January is 0!
	var year1 = today.getFullYear();
	if(date1<10) {
	    date1 = '0'+date1;
	} 
	if(month1<10) {
	    month1 = '0'+month1 
	}
	today = month1 + '/' + date1 + '/' + year1;
	function autoage(){
	var date2 = Number(document.getElementById("dateselect").value);
	var month2 = Number(document.getElementById("monthselect").value);
	var year2 = Number(document.getElementById("yearselect").value);

	var year = year1-year2;
	var age = year;
	document.getElementById("age").value = year;
	} 
</script>
<script type="text/javascript">
	var today = new Date();
	var date1 = today.getDate();
	var month1 = today.getMonth()+1; //January is 0!
	var year1 = today.getFullYear();
	if(date1<10) {
	    date1 = '0'+date1;
	} 
	if(month1<10) {
	    month1 = '0'+month1 
	}
	today = month1 + '/' + date1 + '/' + year1;
	function autoage1(){
	var date2 = Number(document.getElementById("dateselects").value);
	var month2 = Number(document.getElementById("monthselects").value);
	var year2 = Number(document.getElementById("yearselects").value);

	var year = year1-year2;
	var age = year;
	document.getElementById("age1").value = year;
	} 
</script>
<script type="text/javascript">
function chec(){
	if(document.getElementById('check1').checked){
		document.getElementById("savings").style.display="block";
		document.getElementById("currents").style.display="none";
		document.getElementById("fixdeposit").style.display="none";
	}
	else if(document.getElementById('check2').checked){
		document.getElementById("currents").style.display="block";
		document.getElementById("savings").style.display="none";
		document.getElementById("fixdeposit").style.display="none";
	}
	else if(document.getElementById('check3').checked){
		document.getElementById("fixdeposit").style.display="block";
		document.getElementById("currents").style.display="none";
		document.getElementById("savings").style.display="none";
	}
}
</script>
<script type="text/javascript">
function zero(){
document.getElementById('age').value = "0";
document.getElementById('age1').value = "0";
}
</script>
</body>
</html>