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
	<style>
	.main-container
        {
		    width: 62.5rem;
		    background: url(./resources/vendors/images/bg7.jpg);
		    background-position: center;
		    background-size: cover ;
		    object-fit:cover;
		    height:40rem;
		    margin-left:22rem;
		    vertical-align:baseline;
		}
		
	</style>
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
	<div class="main-container">
	
	</div>
	<div class="footer-wrap pd-20 mb-20 card-box" style="margin-left: 10rem;background: #fff;">
				<i class="fas fa-syringe" style="font-size:20px; color:#FF8A8A;transform: rotate(90deg);"></i> VaxiReminder by <a href="https://www.linkedin.com/in/chetan-pawar-a023a2240?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BNiToC5JORW63AKuigKF3Aw%3D%3D" target="_blank">Chetan Pawar</a>
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
