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

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-119386393-1');
	</script>
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
        
        .alert-container {
		    display: flex;  /* Center the alert container */
		    justify-content: center;  /* Center horizontally */
		    align-items: center;  /* Center vertically */
		    margin: 20px 0;  /* Space around the container */
		}
		
		.alert-box {
		    background-color: #FFCDD2;  /* Bright red background */
		    color: #B71C1C;  /* Dark red text */
		    padding: 10px;  /* Padding for spacing */
		    border-radius: 10px;  /* Rounded corners */
		    border: 2px solid #F44336;  /* Strong border */
		    font-size: 17px;  /* Font size */
		    font-weight: bold;  /* Bold text */
		    max-width: 450px;  /* Limit width */
		    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);  /* Shadow for depth */
		    display: flex;  /* Flexbox for alignment */
		    align-items: center;  /* Center icon and text */
		    gap: 10px;  /* Space between icon and text */
		    animation: shake 0.5s ease;  /* Animation effect */
		}
		
		.alert-box i {
		    font-size: 24px;  /* Icon size */
		}
		
		@keyframes shake {
		    0% { transform: translateX(0); }
		    25% { transform: translateX(-5px); }
		    50% { transform: translateX(5px); }
		    75% { transform: translateX(-5px); }
		    100% { transform: translateX(0); }
		}
		
		.login-header
      {
          background-color: #345;
      }
    </style>
</head>
<body class="login-page" >
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
					<img src="./resources/vendors/images/bg2.avif" alt="" style="height: 27rem; width: 37rem">
				</div>
				<div class="col-md-6 col-lg-5" >
					<div class="login-box bg-white box-shadow border-radius-10" style="background-color: #f00;box-shadow: rgba(0, 0, 0, 0.25) 0px 14px 28px, rgba(0, 0, 0, 0.22) 0px 10px 10px;">
						<div class="login-title">
							<h2 class="text-center text-primary" style="color:#028391">Child Login</h2>
						</div>
						<form action="ChildLogin" method="post">
							
							<div class="input-group custom">
								<input type="text" name="cId" class="form-control form-control-lg" placeholder="Child Id">
								<div class="input-group-append custom">
									<span class="input-group-text"><i class="fa-solid fa-key"></i></span>
								</div>
							</div>
							<div class="input-group custom">
								<input type="text" name="childName" class="form-control form-control-lg" placeholder="Child Name">
								<div class="input-group-append custom">
									<span class="input-group-text"><i class="fa-regular fa-id-badge"></i></span>
								</div>
							</div>
							<div class="row pb-30">
								<div class="col-6">
									<div class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input" id="customCheck1">
										<label class="custom-control-label" for="customCheck1">Remember</label>
									</div>
								</div>
								
							</div>
							<div class="row">
						    <div class="col-sm-6">
								    <div class="input-group mb-0">
								        <input class="btn btn-outline-primary btn-lg btn-block" type="button" value="Back" 
								               style="background-color: transparent; color: #EF5A6F; border: 2px solid #EF5A6F; padding: 10px 20px; cursor: pointer;"
								               onmouseover="this.style.backgroundColor='#EF5A6F'; this.style.color='white';"
								               onmouseout="this.style.backgroundColor='transparent'; this.style.color='#EF5A6F';"
								               onclick="history.back();">
								    </div>
								</div>
						    <div class="col-sm-6">
						        <div class="input-group mb-0">
						            <input class="btn btn-primary btn-lg btn-block" type="submit" value="Login" 
						                   style="background-color: #EF5A6F; color: white; border: none; padding: 10px 20px; cursor: pointer;"
						                   onmouseover="this.style.backgroundColor='#FF8A8A';"
						                   onmouseout="this.style.backgroundColor='#EF5A6F';">
						        </div>
						    </div>
						</div>
						
						<% 
							String msg = (String)request.getAttribute("msg");
							if(msg != null)
							{%>
							<div class="alert-container">
									  <div class="alert-box">
									    <i class="fas fa-exclamation-triangle"></i> 
									    <%=msg %>
									  </div>
									</div>
							<% }%>
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