<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
div
{
	height:600px;
	width:700px;
	background-color:#CCE5FF;
	margin-left:400px;
	justify-content: center;
	margin-top:40px;
}

h1{
	 font-family: 'Ubuntu', sans-serif;
	text-decoration:none;
	text-shadow:3px 3px black;
	padding-top:20px;
	
}

table
{
	 font-family: 'Ubuntu', sans-serif;
	 font-weight:bold;
	margin-left:130px;
	color:#800080;
}

td {
  padding-top: 10px;
  padding-bottom: 20px;
  padding-left: 30px;
  padding-right: 40px;
}

button
{
	height:30px;
	width:110px;
	border:2px solid black;
	background-color:DodgerBlue;
	color:white;
	border-style: outset;
	border-radius: 20px;
	font-weight:bold;
}

button:hover
{
	background-color:white;
	color:DodgerBlue;
	cursor: pointer;
}

</style>
</head>
<body style="background-color:DodgerBlue;">
<jsp:include page="dash_bord.jsp"/>  

<div>
	<form action="Cust_Reg">
	<h1 style="margin-left:150px;color:black; text-shadow:3px 3px white;">CUSTOMER REGISTRATION</h1>
	
	<table>
	<tr>
	<td><label for="id">CUSTOMER ID :</label></td>
	<td> <input type="number" id="id" name="id" placeholder="customer id"></td>
	</tr>
	
	<tr>
	<td><label for="customer_name">CUSTOMER NAME :</label></td>
	<td><input type="text" id="name" name="name" placeholder="supplier name"></td>
	</tr>
	
	
	
	<tr>
	<td><label for="add">CUSTOMER ADD. :</label></td>
	<td> <input type="textarea" id="add" name="add" placeholder="customer add"></td>
	</tr>
	
	<tr>
	<td><label for="mob">MOBILE NO. :</label></td>
	<td> <input type="tel" id="mob" name="mob" placeholder="mob"></td>
	</tr>
	
	<tr>
	<td><label for="gst">GST :</label></td>
	<td> <input type="text" id="gst" name="gst" placeholder="gst"></td>
	</tr>
	
	<tr>
	<td><label for="state">STATE :</label></td>
	<td> <input type="text" id="state" name="state" placeholder="state"></td>
	</tr>
	
	<tr>
	<td><button type="submit">ADD</button></label></td>
	<td><button type="reset">RESET</button></td>
	</tr>
	
	</table>
	</form>
</div>
</body>
</html>