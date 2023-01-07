<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href=url('https://fonts.googleapis.com/css2?family=Ubuntu&display=swap')>
 <link rel="stylesheet" href=url('https://fonts.googleapis.com/css2?family=Varela+Round&display=swap')>
 <link rel="stylesheet" href=url('https://fonts.googleapis.com/css2?family=Roboto:ital@1&display=swap') >
<meta charset="ISO-8859-1">
<title>SMART BILLING SYSTEM</title>
</head>
<style>

h1{
	 font-family: 'Ubuntu', sans-serif;
	text-decoration:none;
	text-shadow:3px 3px black;
}

#navbar1
{
	height:560px;
	width:300px;
	background-color:#CCE5FF;
	padding:20px;
	margin:20px;
	float:left;
}

a{
	display:block;
	padding:10px;
	margin:10px;
	border:1px solid black;
	border-style: outset;
	border-radius: 20px;
	padding-left:20px;
	font-weight:bold;
}

a:link
{
	color:white;
	
}

a:visited {
  color: white;
}

a:hover {
  color: black;
  font-weight:bold;
  

}

a:active {
  color: blue;
}


</style>
<body style="background-color:DodgerBlue;">
<h1 style="text-align:center; color:white;font-size:40px;padding:10px;margin:20px">DASH BOARD</h1>

<div id="navbar1">
<a href="product_registration.jsp" style="background-color:DodgerBlue;text-decoration:none;font-family:'Varela Round', sans-serif;box-shadow:2px 2px black;">PRODUCT</a>
<a href="customer_registration.jsp" style="background-color:DodgerBlue;text-decoration:none;font-family:'Varela Round', sans-serif;box-shadow:2px 2px black;">CUSTOMER</a>
<a href="supplier_registration.jsp" style="background-color:DodgerBlue;text-decoration:none;font-family:'Varela Round', sans-serif;box-shadow:2px 2px black;">SUPPLIER</a>
<a href="purchase_invoice.jsp" style="background-color:DodgerBlue;text-decoration:none;font-family:'Varela Round', sans-serif;box-shadow:2px 2px black;">PURCHASE INVOICE</a>
<a href="supplier_registration.jsp" style="background-color:DodgerBlue;text-decoration:none;font-family:'Varela Round', sans-serif;box-shadow:2px 2px black;">SALES INVOICE</a>
<a href="supplier_registration.jsp" style="background-color:DodgerBlue;text-decoration:none;font-family:'Varela Round', sans-serif;box-shadow:2px 2px black;">PURCHASE RETURN</a>
<a href="supplier_registration.jsp" style="background-color:DodgerBlue;text-decoration:none;font-family:'Varela Round', sans-serif;box-shadow:2px 2px black;">SALES RETURN</a>
<a href="report.jsp" style="background-color:DodgerBlue;text-decoration:none;font-family:'Varela Round', sans-serif;box-shadow:2px 2px black;">REPORTS</a>
<a href="" style="background-color:DodgerBlue;text-decoration:none;font-family:'Varela Round', sans-serif;box-shadow:2px 2px black;">LOG OUT</a>

</div>


</body>
</html>