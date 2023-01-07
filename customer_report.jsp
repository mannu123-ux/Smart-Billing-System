<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %><!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

#customer_report_div
{
	background-color:white;
	margin-left:450px;
	justify-content: center;
	margin-top:-450px;
}

a
{
	color:black;
	background-color:black;
	padding:0px;
	margin:0px;
	padding-left:0px;
	
}

</style>
</head>
<body>
<jsp:include page="report.jsp"/> 
<div id=customer_report_div style="width:700px ; height:380px;">
<%
try {
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/billsystem";
		String usr="root";
		String psw="1234";
		Connection con=DriverManager.getConnection(url,usr,psw);
		Statement st=con.createStatement();
		ResultSet rs = st.executeQuery("Select * from customer");
		out.println("<table border=1><tr><td> SrNO </td><td> Name </td><td> Address </td><td> Mobile </td><td> GST </td><td> State </td><td> Remarks </td></tr> ");
		
		while(rs.next())
		{
			out.println("<tr><td>"+rs.getString("id")+"</td>");
			out.println("<td>"+rs.getString("name")+"</td>");
			out.println("<td>"+rs.getString("address")+"</td>");
			out.println("<td>"+rs.getString("mobile")+"</td>");
			out.println("<td>"+rs.getString("gst")+"</td>");
			out.println("<td>"+rs.getString("state")+"</td>");
			out.println("<td><a href='customer_delete?val="+rs.getInt("id")+"'>Delete</a>");
			out.println("/ <a href='customer_report_edit.jsp?val="+rs.getInt("id")+"'> Edit</a></td></tr>");
		}
	}
	catch(Exception e) {}
%>
</div>
</body>
</html>