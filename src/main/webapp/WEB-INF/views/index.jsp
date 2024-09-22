<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	<link rel="stylesheet" type="text/css" href="./resources/vendors/styles/style.css">

	 <style>
        /* Custom styles for checked state */
        .custom-checkbox .custom-control-input:checked ~ .custom-control-label::before {
            background-color: #FF8A8A; /* Color when checked */
            border-color: #FF8A8A; /* Border color when checked */
        }

        .custom-checkbox .custom-control-input:checked ~ .custom-control-label {
            color: #FF8A8A; /* Text color when checked */
        }

        /* Additional style for custom checkbox */
        .custom-checkbox .custom-control-label::before {
            border-radius: 0.25rem; /* Adjust as needed */
        }
      
      .login-header
      {
          background-color: #345;
      }
      
      
        
    </style>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-119386393-1');
	</script>
</head>
<body class="login-page">
	<div class="login-header box-shadow">
		<div class="container-fluid d-flex justify-content-between align-items-center">
			<div class="brand-logo">
				<h2><i class="fa-solid fa-syringe" style="color:#FF8A8A;transform: rotate(90deg);"></i> VaxiReminder</h2>
			</div>
			
		</div>
	</div>
	<div class="login-wrap d-flex align-items-center flex-wrap justify-content-center">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-6 col-lg-7">
					<img src="./resources/vendors/images/bg10.png" alt="" style="width: 49rem; margin-left: 10px">
				</div>
				<div class="col-md-6 col-lg-5">
					<div class="login-box  box-shadow border-radius-10" style="background-color: #EEEEEE;box-shadow: rgba(0, 0, 0, 0.25) 0px 14px 28px, rgba(0, 0, 0, 0.22) 0px 10px 10px;">
						<div class="login-title">
							<h2 class="text-center text-primary" style="margin-bottom: 0px;">Welcome to <i class="fas fa-syringe" style="font-size:24px; color:#FF8A8A;transform: rotate(90deg);"></i>VaxiReminder</h2>
							
						</div>
						<h3 style="background: #FFD7C4; color: #4F4F4F; font-size: 17px; border-radius:20px;border:2px solid #F05A7E; box-shadow: rgba(50, 50, 93, 0.25) 0px 6px 12px -2px, rgba(0, 0, 0, 0.3) 0px 3px 7px -3px; margin-bottom: 30px;">VaxiReminder helps you stay on top of your child's vaccination schedule with automatic notifications, health tips, and easy-to-access records.</h3>
						<form >
							<div class="select-role" >
								<div class="btn-group btn-group-toggle" data-toggle="buttons">
									<label class="btn active" style="box-shadow: rgba(255, 105, 180, 0.5) 0px 3px 8px;">
										<input type="radio" name="options" id="admin">
										<div class="icon" ><i class="fa-solid fa-hospital-user "style="color:#028391; font-size:2rem"></i></div>
										<a href="HospitalAdminLogin">Hospital Admin</a>
									</label>
								
									<label class="btn" style="text-align: center;padding-top:15px;box-shadow: rgba(255, 105, 180, 0.5) 0px 3px 8px;">
										<input type="radio" name="options" id="user">
										<div class="icon"><i class="fa-solid fa-child-reaching"style="color:#028391; font-size:2rem"></i></div>
										<a href="OpenChildLogin">Child Login</a>
									</label>
								</div>
							</div>
							
							
						</form>
					</div>
				</div>
			</div>
			</div>
		</div>
		<div class="footer-wrap pd-20 mb-20 card-box" style="background: #fff;">
				<i class="fas fa-syringe" style="font-size:20px; color:#FF8A8A;transform: rotate(90deg);"></i> VaxiReminder by <a href="https://www.linkedin.com/in/chetan-pawar-a023a2240?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BNiToC5JORW63AKuigKF3Aw%3D%3D" target="_blank">Chetan Pawar</a>
			</div>
			
			
		
	<!-- js -->
	<script src="./resources/vendors/scripts/core.js"></script>
	<script src="./resources/vendors/scripts/script.min.js"></script>
	<script src="./resources/vendors/scripts/process.js"></script>
	<script src="./resources/vendors/scripts/layout-settings.js"></script>
</body>
</html>