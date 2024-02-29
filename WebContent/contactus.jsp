<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<%@page import="dbconnection.Dbconnection"%>
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
	<div id="wrapper">
		<header class="header_area">
			<div class="main_header_area ">
				<div class="row h-100">
					<div class="col-12 d-md-flex justify-content-between">
						<div class="header-social-area">
							<!-- Logo Area -->
							<div class="top_logo">
								<a href="index.jsp"><img src="img/logot.png" alt=""></a>
							</div>
						</div>
						<!-- Menu Area -->
						<div class="main-menu-area">
							<nav class="navbar navbar-expand-lg align-items-start">
								<jsp:include page="mainheader.jsp"></jsp:include>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</header>

		<section class="top-discount-area d-md-flex align-items-center">
			<div class="single-discount-area">
				<h5>Quality Product</h5>
			</div>
			<div class="single-discount-area">
				<h5>FREE SHIPPING &amp; RETURNS</h5>
			</div>
			<div class="single-discount-area">
				<h5>24/7 LIVE SUPPORT</h5>
			</div>
		</section>

		<section class="google_map">
			<iframe width="100%" height="400" 
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d243.04255654431537!2d77.58405839828394!3d12.92821887369552!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae159eeb3a5753%3A0xbe47e1b47ffa7c46!2s4th%20Block%2C%20Jayanagar%2C%20Bengaluru%2C%20Karnataka%20560041!5e0!3m2!1sen!2sin!4v1685117862361!5m2!1sen!2sin"
				width="600" height="450" style="border: 0;"></iframe>
		</section>
		<br> <br> <br>
		<div align="center">
			<div class="section_heading text-center">
				<h2>Get In Touch</h2>
			</div>
			<form id="form1" name="form1" method="post" action="https://formspree.io/f/xdoraoye">

				<div class="form-field">
					<span class="style1"><i class="fa-solid fa-user fa-xl"></i>&nbsp;Name</span>
					<input type="text" name="c1" id="c1" required="required" />
				</div>
				<div class="form-field">
					<span><i class="fa-regular fa-at fa-xl"></i>&nbsp;Emailid</span> <input
						type="email" name="c2" id="c2" required="required" />
				</div>
				<div class="form-field">
					<span><i class="fa-solid fa-phone fa-xl"></i>&nbsp;Phone</span> <input
						type="text" name="c3" id="c3" title="only nos should be 10 digits"
						maxlength="10" pattern="^\d{10}$" required="required" />
				</div>
				<div class="form-field">
					<span><i class="fa-solid fa-pen-to-square fa-xl"></i>&nbsp;What
						can we help you with?</span>
					<textarea name="c4" id="c4" required="required"></textarea>
				</div><br>
				<div class="button-container">
					<input type="submit"  onclick="sendmail()" class="btn karl-btn" name="submit"
						value="submit" />
				</div>
			</form>
		</div><br><br>

		<footer class="footer_area">
			<jsp:include page="footer.jsp"></jsp:include>
		</footer>
	</div>

<!-- jQuery -->
	<script src="js/jquery/jquery-2.2.4.min.js"></script>
	<!-- js -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/active.js"></script>
</body>
</html>
