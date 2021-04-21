<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>

<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/modal?useSSL=false","root","");
	Statement st=con.createStatement();
	
	String filterName = request.getParameter("filterName");
	String field1 = request.getParameter("field1");
	String field2 = request.getParameter("field2");
	String textValue = request.getParameter("textValue");
	if(textValue == ""){
		field1 = "";
		field2 = "";
	}
	String field3 = request.getParameter("field3");
	String field4 = request.getParameter("field4");			
	String numValue = request.getParameter("numValue");		
	if(numValue == ""){
		field3 = "";
		field4 = "";
	}
	String field5 = request.getParameter("field5");
	String field6 = request.getParameter("field6");
	String dateValue = request.getParameter("dateValue");
	if(dateValue == ""){
		field5 = "";
		field6 = "";
	}
	String selection = request.getParameter("selection");

try
{	
	String qry="INSERT INTO filters VALUES(0,'"+filterName+"','"+field1+"','"+field2+"','"+textValue+"','"+field3+"','"+field4+"','"+numValue+"','"+field5+"','"+field6+"','"+dateValue+"','"+selection+"')";
	st.executeUpdate(qry);
	out.println("Data Inserted Successfully...");
}
catch(Exception e)
{
	out.println("Error: "+e);
}
%>
</body>
</html>