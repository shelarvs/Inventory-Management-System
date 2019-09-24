

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1"%>

<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>Inventory Management System</title>
	<meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
	<link rel="icon" href="../assets/img/icon.ico" type="image/x-icon"/>

	<!-- Fonts and icons -->
	<script src="../assets/js/plugin/webfont/webfont.min.js"></script>
	<script>
		WebFont.load({
			google: {"families":["Lato:300,400,700,900"]},
			custom: {"families":["Flaticon", "Font Awesome 5 Solid", "Font Awesome 5 Regular", "Font Awesome 5 Brands", "simple-line-icons"], urls: ['../assets/css/fonts.min.css']},
			active: function() {
				sessionStorage.fonts = true;
			}
		});
	</script>

	<!-- CSS Files -->
	<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="../assets/css/atlantis.min.css">

	<!-- CSS Just for demo purpose, don't include it in your project -->
	<link rel="stylesheet" href="../assets/css/demo.css">
</head>
<body>
	<div class="wrapper">
		<div class="main-header">
				<div class="logo-header" data-background-color="blue">
				<button class="navbar-toggler sidenav-toggler ml-auto" type="button" data-toggle="collapse" data-target="collapse" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon">
						<i class="icon-menu"></i>
					</span>
				</button>
				<button class="topbar-toggler more"><i class="icon-options-vertical"></i></button>
				<div class="nav-toggle">
					<button class="btn btn-toggle toggle-sidebar">
						<i class="icon-menu"></i>
					</button>
				</div>
				</div>

			<!-- Navbar Header -->
			<nav class="navbar navbar-header navbar-expand-lg" data-background-color="blue2">
				
				<div class="container-fluid">
					
					<ul class="navbar-nav topbar-nav ml-md-auto align-items-center">
						
						
						
						<li class="nav-item dropdown hidden-caret">
							<a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#" aria-expanded="false">
								<div class="avatar-sm">
									<img src="../assets/img/profile.jpg" alt="..." class="avatar-img rounded-circle">
								</div>
							</a>
							<ul class="dropdown-menu dropdown-user animated fadeIn">
								<div class="dropdown-user-scroll scrollbar-outer">
									<li>
										<div class="user-box">
											<div class="avatar-lg"><img src="../assets/img/profile.jpg" alt="image profile" class="avatar-img rounded"></div>
											<div class="u-text">
												<h4>Manager</h4>
												<p class="text-muted">Manager@example.com</p>
											</div>
										</div>
									</li>
									<li>
										<div class="dropdown-divider"></div>
									
										
										<a class="dropdown-item" href="logout.jsp">Logout</a>
									</li>
								</div>
							</ul>
						</li>
					</ul>
				</div>
			</nav>
			<!-- End Navbar -->
		</div>

		<!-- Sidebar -->
		<div class="sidebar sidebar-style-2">			
			<div class="sidebar-wrapper scrollbar scrollbar-inner">
				<div class="sidebar-content">
					<div class="user">
						<div class="avatar-sm float-left mr-2">
							<img src="../assets/img/profile.jpg" alt="..." class="avatar-img rounded-circle">
						</div>
						<div class="info">
							<a data-toggle="collapse" href="#collapseExample" aria-expanded="true">
								<span>
									Manager
									<span class="user-level">Inventory Data<br> Management</span>
									
								</span>
							</a>
							<div class="clearfix"></div>

						
						</div>
					</div>
					<ul class="nav nav-primary">
						<li class="nav-item">
							
								<a href="main.jsp">
								<span>Dashboard </span>
							
						</li>
						
						
						
						<li class="nav-item">
							<a href="avail_stock.jsp">
							
								<i class="fas fa-database "></i>
								<p>Available Stock</p>
							
							</a>
						
						</li>
						
						
						<li class="nav-item active">
							<a href="requirement.jsp">
							
								<i class="fas fa-plus-circle "></i>
								<p>Add To Stock</p>
							
							</a>
						
						</li>
						
						<li class="nav-item">
						<a href="purchase_tran.jsp">
							
								<i class="fas fa-credit-card"></i>
								<p>Purchase Transactions</p>
							
							</a>
						
						</li>
						
						<li class="nav-item">
							<a href="sale_tran.jsp">
							
								<i class="fas fa-balance-scale "></i>
								<p>Sales Transactions</p>
							
							</a>
						
						</li>
						
						
					
						
					</ul>
				</div>
			</div>
		</div>
		<!-- End Sidebar -->
		
		<!--Main DashBoard Panel-->
		
			<div class="main-panel">
			<div class="content">
				<div class="panel-header bg-primary-gradient">
					<div class="page-inner py-5">
						<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
							<div>
								<h2 class="text-white pb-2 fw-bold">Add Data To Warehouse</h2>
								
							</div>
						
						</div>
					</div>
					
					
					
					
				
			<div class="content">
		
				<div class="page-inner">
					
					<div class="row">
			
						<div class="col-md-12">
					
							<div class="card">
									<form action="purchase_action.jsp" method="get">
								<div class="card-body">
									<div class="row">
										<div class="col-md-6 col-lg-6">
										
											
								
										 
											
											<div class="form-group form-group-default">
												<label>Manufacturer Name :</label>
												<input id="Name" name="manu_name" type="text" class="form-control" placeholder="Company Name">
											</div>
											
										<div class="form-group form-group-default">
												<label>Model no. :</label>
												<input id="Name" name="model" type="text" class="form-control" placeholder="Model Number">
											</div>
											
										<div class="form-group form-group-default">
										<label>Manufacturing Date :</label>
											<input type="date" name="manu_date">
 											
 											 </div>
 											 
											<div class="form-group form-floating-label">
												<input id="inputFloatingLabel" name="st_quant" type="text" class="form-control input-border-bottom" required>
												<label for="inputFloatingLabel" class="placeholder">Stock Quantity</label>
											</div>
										
										<div class="form-group">
												<div class="input-group mb-3">
													<div class="input-group-prepend">
											
														<span class="input-group-text">Rs.</span>
													</div>
													<input type="text" name="price" class="form-control" aria-label="Amount (to the nearest dollar)">
													<div class="input-group-append">
														<span class="input-group-text">.00</span>
													</div>
												</div>
											</div>
											
												<div class="form-group form-group-default">
										<label>Purchase Date :</label>
											<input type="date" name="pur_date">
 											
 											 </div>
											
										</div>
									</div>
								</div>
								<div class="card-action">
									<p class="demo">
										

										<tr>
											<td style="width: 40%; vertical-align: middle;"></td>
											<td>
												<button type="submit" class="btn btn-success">Confirm</button>		
											</td>
										</tr>

									</p>
									
									
								</div>
									</form>>
									</div>
									
							</div>
			
						</div>
						
					</div>
					
			</div>
			</div>
			

				</div>
				
			</div>
			
		</div>

	</div>
	<!--End Main DashBoard Panel-->
	<script src="../assets/js/core/jquery.3.2.1.min.js"></script>

	<script src="../assets/js/core/bootstrap.min.js"></script>

<!--   Core JS Files   -->
	
	<script src="../assets/js/core/popper.min.js"></script>


	<!-- jQuery UI -->
	<script src="../assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
	<script src="../assets/js/plugin/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>


	<!-- Atlantis JS -->
	<script src="../assets/js/atlantis.min.js"></script>

	<!-- jQuery Scrollbar -->
	<script src="../assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>
	
	
	

	
	
	

	
</body>
</html>