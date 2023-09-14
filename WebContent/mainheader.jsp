<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Cloud Tailor</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">

<!-- Favicon  -->
<link rel="icon" type="image/x-icon" href="img/favicon.ico">

<!-- CSS -->
<link rel="stylesheet" href="css/core-style.css">
<link rel="stylesheet" href="css/stylefinal.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
</head>
<body>
	<!-- Menu Area -->
	<div class="main-menu-area">
		<nav class="navbar navbar-expand-lg align-items-start">

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#karl-navbar" aria-controls="karl-navbar"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"><i class="fa-solid fa-bars"></i></span>
			</button>

			<div class="collapse navbar-collapse align-items-start collapse"
				id="karl-navbar">
				<ul class="navbar-nav animated" id="nav">
					<li class="nav-item active"><a class="nav-link"
						href="index.jsp">Home</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="karlDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">Login</a>

						<div class="dropdown">

							<div class="dropdown-content">
								<a class="nav-link" href="gsignup.jsp">Guest Signup</a> <a
									class="nav-link" href="gsignin.jsp">Guest Signin</a> <a
									class="nav-link" href="adminsignin.jsp">Admin Login</a>
							</div>
						</div></li>
					<li class="nav-item"><a class="nav-link" href="contactus.jsp">Contact Us</a></li>
				</ul>
			</div>
		</nav>
	</div>

<!-- jQuery -->
	<script src="js/jquery/jquery-2.2.4.min.js"></script>
	<!-- js -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/active.js"></script>
</body>
</html>