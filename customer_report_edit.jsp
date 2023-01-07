<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

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
<%
try{  
	Class.forName("com.mysql.cj.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/billsystem","root","1234");  
	Statement st=con.createStatement();
	int id1=Integer.parseInt(request.getParameter("val"));
	ResultSet rs=st.executeQuery("select * from patient where patient_id="+id1);
	if(rs.next())
	{
%>
<jsp:include page="dash_bord.jsp"/>  

<div>
	<form action="Cust_Reg">
	<h1 style="margin-left:150px;color:black; text-shadow:3px 3px white;">EDIT CUSTOMER RECORD</h1>
	
	<table>
	<tr>
	<td><label for="id">CUSTOMER ID :</label></td>
	<td> <input type="number" id="id" name="id" placeholder="customer id" value="<%=rs.getString("id")%>"></td>
	</tr>
	
	<tr>
	<td><label for="customer_name">CUSTOMER NAME :</label></td>
	<td><input type="text" id="name" name="name" placeholder="supplier name" value="<%=rs.getString("name")%>"></td>
	</tr>
	
	
	
	<tr>
	<td><label for="add">CUSTOMER ADD. :</label></td>
	<td> <input type="textarea" id="add" name="add" placeholder="customer add" value="<%=rs.getString("address")%>"></td>
	</tr>
	
	<tr>
	<td><label for="mob">MOBILE NO. :</label></td>
	<td> <input type="tel" id="mob" name="mob" placeholder="mob" value="<%=rs.getString("contact")%>"></td>
	</tr>
	
	<tr>
	<td><label for="gst">GST :</label></td>
	<td> <input type="text" id="gst" name="gst" placeholder="gst"  value="<%=rs.getString("gst")%>"></td>
	</tr>
	
	<tr>
	<td><label for="state">STATE :</label></td>
	<td> <input type="text" id="state" name="state" placeholder="state"  value="<%=rs.getString("state")%>"></td>
	</tr>
	
	<tr>
	<td><button type="submit">EDIT</button></label></td>
	<td><button type="reset">RESET</button></td>
	</tr>
	
<%
	}
}
catch(Exception e){}
	
%>
	
</table>
</form>
</div>
</body>
</html>