<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Wait a while.....</title>
</head>
<body>

 
<script>
    var txt;
    if (confirm("Purchase Successful")) {
    	window.location.href = "main.jsp";
    } else {
    	window.location.href = "main.jsp";
    } 
</script>
  


<%@page import="java.sql.*,java.util.*"%>
           

<%
String manu_name=request.getParameter("manu_name");
String model=request.getParameter("model");
String manu_date=request.getParameter("manu_date");
String st_quant=request.getParameter("st_quant");
String price=request.getParameter("price");
String pur_date=request.getParameter("pur_date");


try
{
	Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory_data", "root", "Viraj@0808");
Statement statement=con.createStatement();

String sql="insert into purchase values(?,?,?,?,?,?)";
PreparedStatement executestate=(PreparedStatement) con.prepareStatement(sql);

executestate.setString(1,manu_name);
executestate.setString(2,manu_date);
executestate.setString(3,model);
executestate.setString(4,st_quant);
executestate.setString(5,price);
executestate.setString(6,pur_date);



executestate.executeUpdate();


String sql1="insert into stock values(?,?,?,?,?,?)";
PreparedStatement executestate1=(PreparedStatement) con.prepareStatement(sql1);

executestate1.setString(1,manu_name);
executestate1.setString(2,manu_date);
executestate1.setString(3,model);
executestate1.setString(4,st_quant);
executestate1.setString(5,price);
executestate1.setString(6,pur_date);



executestate1.executeUpdate();


System.out.println("Data Inserted");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>



</body>
</html>