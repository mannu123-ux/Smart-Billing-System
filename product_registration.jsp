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
	width:700px;
	background-color:#CCE5FF;
	margin-left:400px;
	justify-content: center;
	margin-top:40px;
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
	margin-left:150px;
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
<form action="product_Reg">
	<h1 style="margin-left:170px;color:black; text-shadow:3px 3px white;">PRODUCT REGISTER</h1>
	
	<table>
	<tr>
	<td><label for="product_id">PRODUCT ID :</label></td>
	<td> <input type="number" id="product_id" name="product_id" placeholder="Product id"></td>
	</tr>
	
	<tr>
	<td><label for="product_name">PRODUCT NAME :</label></td>
	<td> <input type="text" id="product_name" name="product_name" placeholder="product_name"></td>
	
	</tr>
	
	<tr>
	<td><label for="product_group">PRODUCT GROUP :</label></td>
	<td><select name="product_group">
    <option value="0">select product group :</option>
    <option value="1">cloth</option>
    <option value="2">grocery</option>
    <option value="3">electronics</option>
    <option value="4">general</option>
    <option value="5">study</option>
    
  </select></td>
	
	</tr>
	
	<tr>
	<td><label for="product_mrp">PRODUCT MRP :</label></td>
	<td> <input type="text" id="product_mrp" name="product_mrp" placeholder="Product mrp"></td>
	</tr>
	
	<tr>
	<td><label for="gst">GST :</label></td>
	<td> <input type="text" id="gst" name="gst" placeholder="gst"></td>
	</tr>
	
	<tr>
	<td><label for="initial_quantity">INITIAL QTY. :</label></td>
	<td> <input type="number" id="initial_quantity" name="initial_quantity" placeholder="initial quantity"></td>
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