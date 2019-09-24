

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1"%>

<html>
    <head>
        <meta charset="utf-8">
        <title>Inventory Data : Login</title>
        <link rel="stylesheet" href="css/style.css">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="favicon.ico">

        <!--Google Font link-->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    </head>

    <body id="home" data-spy="scroll" data-target=".navbar-collapse">
        <div class="culmn">
       
        <div class="login-page">
       
  <div class="form">
  <br><br><br><br><br>
    <form action="login_action.jsp" class="login-form">
	
<h1>SYSTEM LOGIN</h1>
<br>
<br>
      <input name="mail" type="email" placeholder="Enter Email id"
          pattern=".+.com" size="30" required
           title="Please Enter Valid email address"/>
      <input name="pass" type="password" placeholder="Enter password"/>
      <button>LOGIN</button>
      
    </form>
  </div>
</div>
          

        </div>
    </body>
</html>
