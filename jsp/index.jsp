<!DOCTYPE html>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

body {
    background-color: teal;
}
input[type=text], select{
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}
input[type=email]{
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
input[type=submit]:hover {
    background-color: #45a049;
}
input[type=reset] {
	background-color: #f44336;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}
input[type=reset]:hover {
    background-color: #f03535;
}

input[type=button] {
	background-color: #e7e7e7;
	color: black;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}
input[type=button]:hover {
    background-color: #ddd;
}
.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}

form { 
margin: 0 auto; 
width:500px;
}
.message {
	font-family: Courier;
	color: red;
	font-size: 5;
}
</style>
<script>
var request; 
function sendInfo(){
var email=document.getElementById("mail_Id").value;  
var url="emailfinder.jsp?email="+email;  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
try{  
request.onreadystatechange=getInfo;  
request.open("GET",url,true);  
request.send();  
}catch(e){alert("Unable to connect to server");}  
}  
  
function getInfo(){  
if(request.readyState==4){  
var val=request.responseText;  
document.getElementById('hello').innerHTML=val;  
}  
}  
</script>




</head>


<body >

<h3 title="Please Fill The Form" style="font-family:JavaneseText; text-align:center">
Employee Details Form</h3>
<hr>
<form action="Product.action" name="drop_list" method="POST" onsubmit="return validatepassword(password);">
<div class="container">
<h4>NAME<br>
<input type="text" name="name" id="name" placeholder="Your name.." required>
</h4>
<h4>CONTACT NO<br>
<input type="text" name="phone" id="phone" placeholder="Your contact number.." required>
</h4>

<h4>EMAIL ID<br>
<input type="email" name="mail_Id" id="mail_Id"  onblur="sendInfo()" placeholder="Enter a valid Email ID.." required>
</h4><div class="message" id="hello"></div>
<h4>Organisation<br>
<input type="text" name="organisation" id="organisation" placeholder="Your Organisation Name..">
</h4>
<h4>City<br>
<input type="text" name="city" id="city" placeholder="Your City.." required>
</h4>
<div style="text-align: center;">
<input type="submit" value="Submit">
<input type="reset" value="Cancel">
</div>
</div>
</form>
<br>
<div style="text-align: center;">
<form action="FetchData.action">
<input type="submit" name="fetchdata" value='View Database'>
</form>
<br>
<form action="ExportData.action">
<input type="submit" name="Export" value='Export'>
</form>
</div>


</body>
</html>