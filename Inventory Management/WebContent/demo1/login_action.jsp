<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Please Wait...</title>
</head>
<body>




<%@page import="java.sql.*,java.util.*"%>
<% 
String mail=request.getParameter("mail");
String pass=request.getParameter("pass");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory_data", "root", "Viraj@0808");
Statement statement=con.createStatement();



String sql ="select * from login where Email='"+mail+"' AND Password='"+pass+"'";
ResultSet resultSet = statement.executeQuery(sql);

if(!resultSet.next()) {
	%> <script>
    var txt;
    if (confirm("Please Try Again")) {
    	window.location.href ="Login.jsp";
    
    	
    } else {
    	window.location.href = "Login.jsp";
    }
    
</script><%




} else {
	String sql1="insert into logs values(?)";
	PreparedStatement executestate=(PreparedStatement) con.prepareStatement(sql1);

	executestate.setString(1,mail);
	executestate.executeUpdate();
	%> <script>
	
	

    var txt;
    if (confirm("Login Successful")) {  	
    	window.location.href ="main.jsp";
    } else {
    	window.location.href = "main.jsp";
    }
    
</script><%
}


}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

</body>
</html>