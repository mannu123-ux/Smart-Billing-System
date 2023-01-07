<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href=url('https://fonts.googleapis.com/css2?family=Ubuntu&display=swap')>
<meta charset="ISO-8859-1">
<title>SMART BILLING SYSTEM</title>

<style>
div
{
	height:600px;
	width:1000px;
	background-color:#CCE5FF;
	margin-left:400px;
	justify-content: center;
	margin-top:40px;
	font-size:14px;
}

h1{
	 font-family: 'Ubuntu', sans-serif;
	text-decoration:none;
	text-shadow:3px 3px white;
	padding-top:20px;
	
	
}

.button1{
	display:inline-block;
	float:left;
	padding:10px;
	margin:10px;
	border:1px solid black;
	border-style: outset;
	border-radius: 20px;
	padding-left:20px;
	font-weight:bold;
}

.button1:link
{
	color:white;
	
}

.button1:visited {
  color: white;
}

.button1:hover {
  color: black;
  font-weight:bold;
  

}

.button1:active {
  color: blue;
}



</style>
</head>
<body style="background-color:DodgerBlue;">
<jsp:include page="dash_bord.jsp"/> 
<div>

	<h1 style="margin-left:430px;color:black; text-shadow:3px 3px white;">REPORTS</h1>
	

<a class="button1" href="customer_report.jsp" style="background-color:DodgerBlue;text-decoration:none;font-family:'Varela Round', sans-serif;box-shadow:2px 2px black;">CUSTOMER</a>
<a class="button1" href="customer_registration.jsp" style="background-color:DodgerBlue;text-decoration:none;font-family:'Varela Round', sans-serif;box-shadow:2px 2px black;">SUPPLIER</a>



</div>
</body>
</html>