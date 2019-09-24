<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logging Out...</title>
</head>
<body>
<%@page import="java.sql.*,java.util.*"%>
<script>
    var txt;
    if (confirm("You are Sucessfully Logged out")) {
    	window.location.href ="Login.jsp";
    
    	
    } else {
    	window.location.href = "Login.jsp";
    }
    
</script>

<%
                  
                  try{
                	  Class.forName("com.mysql.jdbc.Driver");
                	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory_data", "root", "Viraj@0808");
                	  Statement statement=con.createStatement();
                	  
                	  String sql1="truncate logs";
                		PreparedStatement executestate=(PreparedStatement) con.prepareStatement(sql1);
                		executestate.executeUpdate();
                	  
                  }
                  catch(Exception e)
                  {
                  System.out.print(e);
                  e.printStackTrace();
                  }
                 
                  %>

</body>
</html>