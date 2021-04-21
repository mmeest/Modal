<%@ page import = "java.sql.*;"%>
<%
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

try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/modal","root","");
    PreparedStatement ps = conn.prepareStatement("insert into filters(filterName, field1, field2, textValue, field3, field4, numValue, field5, field6, dateValue, selection) values(?,?,?,?,?,?,?,?,?,?,?);");
    ps.setString(1,filterName);
    ps.setString(2,field1);
    ps.setString(3,field2);
    ps.setString(4,textValue);
    ps.setString(5,field3);
    ps.setString(6,field4);
    ps.setString(7,numValue);
    ps.setString(8,field5);
    ps.setString(9,field6);
    ps.setString(10,dateValue);
    ps.setString(11,selection);
    int x = ps.executeUpdate();
    if(x > 0){
        out.println("Filter saved successfully...");
    }else{
        out.println("Saving filter failed...");
    }

}catch(Exception e){
    out.println(e);
}
%>