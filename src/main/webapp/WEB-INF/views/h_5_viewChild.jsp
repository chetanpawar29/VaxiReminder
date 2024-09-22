<%@page import="com.chetan.model.Child"%>
<%@page import="com.chetan.model.Vaccine"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<!-- Basic Page Info -->
	<meta charset="utf-8">
	<link rel="shortcut icon" href="images/logo1.png">
    <title>VaxiReminder</title>


	<!-- Site favicon -->
	<link rel="apple-touch-icon" sizes="180x180" href="./resources/vendors/images/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="./resources/vendors/images/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="./resources/vendors/images/favicon-16x16.png">

	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="./resources/vendors/styles/core.css">
	<link rel="stylesheet" type="text/css" href="./resources/vendors/styles/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="./resources/src/plugins/datatables/css/dataTables.bootstrap4.min.css">
	<link rel="stylesheet" type="text/css" href="./resources/src/plugins/datatables/css/responsive.bootstrap4.min.css">
	<link rel="stylesheet" type="text/css" href="./resources/vendors/styles/style.css">

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-119386393-1');
	</script>
	
</head>
<body>
	

	<div class="header">
		<div class="user-info-dropdown">
				<div class="dropdown" style="padding-left: 57rem">
					<a class="dropdown-toggle" href="#" role="button" data-toggle="dropdown">
					
							<img src="./resources/vendors/images/admin.jpg" alt="" style="height: 45px; width: 45px;border-radius:50%">
						
						
					</a>
					<div class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
						<a class="dropdown-item" href="#"><i class="dw dw-user1"></i> Profile</a>
						<a class="dropdown-item" href="#"><i class="dw dw-settings2"></i> Setting</a>
						<a class="dropdown-item" href="#"><i class="dw dw-help"></i> Help</a>
						<a class="dropdown-item" href="logout"><i class="dw dw-logout"></i> Log Out</a>
					</div>
				</div>
			</div>
	</div>

	

	<div class="left-side-bar" style="width: 22rem;background: #536493">
		<div class="login-header box-shadow">
		<div class="container-fluid d-flex justify-content-between align-items-center" style="">
			<div class="brand-logo">
				<h2><i class="fa-solid fa-syringe" style="color:#FF8A8A;transform: rotate(90deg);"></i> VaxiReminder</h2>
			</div>
			
		</div>
	</div>
		<div class="menu-block customscroll">
			<div class="sidebar-menu">
				<ul id="accordion-menu">
					<li class="dropdown">
						<a href="openHospitalHomePage" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-house-1"></span><span class="mtext">Home</span>
						</a>
						
					</li>
					<li class="dropdown">
						<a href="openAddVaccine" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-add"></span><span class="mtext">Add Vaccine</span>
						</a>
						
					</li>
					<li class="dropdown">
						<a href="ViewVaccine" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-library"></span><span class="mtext">View Vaccine</span>
						</a>
						
					</li>
					<li>
						<a href="openAddChildPage" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-add"></span><span class="mtext">Add Child</span>
						</a>
					</li>
					<li>
						<a href="viewChild" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-view"></span><span class="mtext">View Child</span>
						</a>
					</li>
					<li class="dropdown">
						<a href="openAddChildVaccinesLogPage" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-calendar1"></span><span class="mtext">Add Child Vaccine Log</span>
						</a>
						
					</li>
					
					<li class="dropdown">
						<a href="viewUpcomingAllChildVaccines" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-analytics-22"></span><span class="mtext">View Upcoming All Child <br>Vaccines(Next 30 Days)</span>
						</a>
						
					</li>
					<li class="dropdown">
						<a href="openChangePassPage" class="dropdown-toggle no-arrow">
							<span class="micon dw dw-password"></span><span class="mtext">Change Password</span>
						</a>
						
					</li>
					
			</div>
		</div>
	</div>
	
	<%
	List<Child> childList = (List<Child>)request.getAttribute("childList");
	%>

	<div class="main-container">
	

			<div class="pd-20 card-box mb-30" style="margin-left: 6rem;background: #fff;">
					<h3>View All Childs</h3>
					<br>
					<div class="table-responsive">
						<table class="table" border="2" style="text-align: center;font-size: 5rem;">
							<thead>
								<tr>
									<th scope="col">Id</th>
									<th scope="col">Child Name</th>
									<th scope="col">Parent Name</th>
									<th scope="col">DOB</th>
									<th scope="col">Parent Contact No</th>
									<th scope="col">Address</th>
									<th scope="col">Delete Child</th>

								</tr>
							</thead>
							<tbody>
							<% 
		for(Child c : childList)
		{
		%>
		
		<tr>
			<td><%=c.getcId()%></td>
			<td><%=c.getChildName() %></td>
			<td><%=c.getParentName()%></td>
			<td><%=c.getDob()%></td>
			<td><%=c.getParentContact()%></td>
			<td><%=c.getAddress() %></td>
			<td><a href="deleteChild?cId=<%=c.getcId()%>"><span class="badge badge-danger">Delete</span></a></td>
		</tr>
		<%} %>
	
								
							</tbody>
						</table>
					</div>
					<div class="collapse collapse-box" id="contextual-table">
						<div class="code-box">
							<div class="clearfix">
								<a href="javascript:;" class="btn btn-primary btn-sm code-copy pull-left"  data-clipboard-target="#contextual-table-code"><i class="fa fa-clipboard"></i> Copy Code</a>
								<a href="#contextual-table" class="btn btn-primary btn-sm pull-right" rel="content-y"  data-toggle="collapse" role="button"><i class="fa fa-eye-slash"></i> Hide Code</a>
							</div>
							<pre><code class="xml copy-pre" id="contextual-table-code">
										<div class="table-responsive">
											<table class="table table-striped">
											  <tbody>
											    <tr class="table-active"><td></td></tr>
												<tr class="table-primary"><td></td></tr>
												<tr class="table-secondary"><td></td></tr>
												<tr class="table-success"><td></td></tr>
												<tr class="table-danger"><td></td></tr>
												<tr class="table-warning"><td></td></tr>
												<tr class="table-info"><td></td></tr>
												<tr class="table-light"><td></td></tr>
												<tr class="table-dark"><td></td></tr>
											  </tbody>
											</table>
										</div>
		
							</code></pre>
						</div>
					</div>
			</div>
			
		
	</div>
	<!-- js -->
	<script src="./resources/vendors/scripts/core.js"></script>
	<script src="./resources/vendors/scripts/script.min.js"></script>
	<script src="./resources/vendors/scripts/process.js"></script>
	<script src="./resources/vendors/scripts/layout-settings.js"></script>
	<script src="./resources/src/plugins/apexcharts/apexcharts.min.js"></script>
	<script src="./resources/src/plugins/datatables/js/jquery.dataTables.min.js"></script>
	<script src="./resources/src/plugins/datatables/js/dataTables.bootstrap4.min.js"></script>
	<script src="./resources/src/plugins/datatables/js/dataTables.responsive.min.js"></script>
	<script src="./resources/src/plugins/datatables/js/responsive.bootstrap4.min.js"></script>
	<script src="./resources/vendors/scripts/dashboard.js"></script>
</body>
</html>