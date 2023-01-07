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

table
{
	 font-family: 'Ubuntu', sans-serif;
	 font-weight:bold;
	margin-left:30px;
	color:#800080;
}

td {
  padding-top: 10px;
  padding-bottom: 20px;
  padding-left: 20px;
  padding-right: 10px;
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
<form action="product_Reg">
	<h1 style="margin-left:370px;color:black; text-shadow:3px 3px white;">PURCHASE INVOICE</h1>
	
	<table>
	<tr>
	<td><label for="bayers_name">BAYER'S NAME :</label></td>
	<td> <input type="text" id="bayers_name" name="bayers_name" placeholder="bayers_name"></td>
	
	<td><label for="date1"> &nbsp &nbsp  DATE :</label></td>
	<td> <input type="date" id="date1" name="date1" placeholder="date"></td>
	
	<td><label for="invoice_type">INVOICE TYPE :</label></td>
	<td><input type="radio" name="type" value="type">
	<label style="color:black">CASH</label>
	<input type="radio" name="type" value="type">
	<label style="color:black">CREDIT</label>
	</td>
	
	</tr>
	
	
	
	<tr>
		
	</tr>
	
	<tr>
	<td><label for="product_id">PRODUCT ID :</label></td>
	<td> <input type="number" id="product_id" name="product_id" placeholder="Product id"></td>
	
	<td><label for="quantity">QUANTITY :</label></td>
	<td> <input type="text" id="quantity" name="quantity" placeholder="quantity" size="10"></td>
	<td><button type="submit">ADD</button></label></td>
	</tr>
	
	
	
	<tr>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td colspan="2"><label for="quantity"> &nbsp &nbsp &nbsp TOTAL : </label>
	<input type="text" id="total" name="total" name="total">
	</td>
	</tr>
	
	
	<tr>
	<td></td>
	<td colspan="2"><button type="submit" style="width:220px">GENRATE INVOICE</button></label></td>
	</tr>
	
	</table>
</form>
</div>
</body>
</html>