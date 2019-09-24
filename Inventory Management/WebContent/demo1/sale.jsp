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
    if (confirm("Transaction Successful")) {
    	window.location.href = "main.jsp";
    } else {
    	window.location.href = "main.jsp";
    } 
</script>
  


<%@page import="java.sql.*,java.util.*"%>
           

<%
String cust_name=request.getParameter("cust_name");
String mobile=request.getParameter("mobile");
String address=request.getParameter("address");
String manufact=request.getParameter("manufact");
String model=request.getParameter("model");
String pur_date=request.getParameter("pur_date");
String st_quantity=request.getParameter("st_quantity");
String amount=request.getParameter("amount");


try
{
	Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory_data", "root", "Viraj@0808");
Statement statement=con.createStatement();


//Data Insertion for Transactions History
String sql="insert into sales values(?,?,?,?,?,?,?,?)";
PreparedStatement executestate=(PreparedStatement) con.prepareStatement(sql);

executestate.setString(1,cust_name);
executestate.setString(2,mobile);
executestate.setString(3,address);
executestate.setString(4,manufact);
executestate.setString(5,model);
executestate.setString(6,pur_date);
executestate.setString(7,st_quantity);
executestate.setString(8,amount);


executestate.executeUpdate();

System.out.println("Data Inserted");


//Selecting Table Data for Updation into Stock
String sql1="select Model_no,Stock,price from stock where Model_no='"+model+"' AND price='"+amount+"'";
ResultSet resultSet = statement.executeQuery(sql1);
String model_no,stock_avail,price;
resultSet.next();
	model_no=resultSet.getString("Model_no");
	
	stock_avail=resultSet.getString("Stock");
	
	price=resultSet.getString("price");

System.out.println("Data Selected");					
					    

String sql2="insert into TEMP_STOCK values(?,?)";
PreparedStatement executestate1=(PreparedStatement) con.prepareStatement(sql2);

executestate1.setString(1,st_quantity);
executestate1.setString(2,stock_avail);
executestate1.executeUpdate();
System.out.println("Inserted into TEMP_STOCK");


//Substraction Operation
String main_SQL="select stock_avail - sub_stock from TEMP_STOCK";
ResultSet resultSet1 = statement.executeQuery(main_SQL);
resultSet1.next();
String Final_val=resultSet1.getString("stock_avail - sub_stock");



String sql3="Update stock set Stock=? where Model_no='"+model_no+"' AND price='"+price+"'";
PreparedStatement executestate2=(PreparedStatement) con.prepareStatement(sql3);

executestate2.setString(1,Final_val);

executestate2.executeUpdate();

System.out.println("Success");

String sql_trunc="truncate TEMP_STOCK";
PreparedStatement executestate4=(PreparedStatement) con.prepareStatement(sql_trunc);
executestate4.executeUpdate();
System.out.println("Truncate Success");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>


</body>
</html>