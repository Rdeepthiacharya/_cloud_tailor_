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
								<jsp:include page="userheader.jsp"></jsp:include>
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
		</section><br><br>
		
		<div class="section_heading text-center">
			<h2>Feedback Form</h2>
		</div>

		<form id="form1" name="form1" method="post" action="">
			<div align="center">
				<%
					String e = (String) session.getAttribute("emailid");
					String n = (String) session.getAttribute("fname");
					String a = (String) session.getAttribute("addr");
					String m = (String) session.getAttribute("mobile");
				%>
				<div class="form-field">
					<div align="left" class="style1">Full Name</div>
					<div align="left">
						<input type="text" name="name" value="<%out.println(n);%>" />
					</div>
				</div>
				<div class="form-field">
					<div align="left" class="style1">Phone No</div>
					<div align="left">
						<input name="phoneno" type="text" maxlength="10"
							value="<%out.println(m);%>" />
					</div>
				</div>
				<div class="form-field">
					<div align="left" class="style1">E-Mail</div>
					<div align="left">
						<input type="email" name="emailid" value="<%out.println(e);%>" />
					</div>
				</div>
				<div class="form-field">
					<div align="left" class="style1">Feedback</div>
					<div align="left">
						<input type="text" name="feedback"
							placeholder="What can we do to improve?" required="required" />
					</div>
				</div><br>
				<div class="form-field">
					<div align="left" class="style1">Rate us</div>
					<div align="left">
					  <div class="star-rating">	
						<div class="stars">					     
				<input type="radio" name="star" id="star-5" value="5">
                <label for="star-5" class="fas fa-star"></label>
                <input type="radio" name="star" id="star-4" value="4">
                <label for="star-4" class="fas fa-star"></label>
                <input type="radio" name="star" id="star-3" value="3">
                <label for="star-3" class="fas fa-star"></label>
                <input type="radio" name="star" id="star-2" value="2">
                <label for="star-2" class="fas fa-star"></label>
                <input type="radio" name="star" id="star-1" value="1">
                <label for="star-1" class="fas fa-star"></label>					
						</div>
						</div>
					</div>
				</div><br>
				
				<div class="button-container">
					<input type="submit" class="btn karl-btn" name="Submit"
						value="Submit" />&nbsp;&nbsp; <input type="reset"
						class="btn karl-btn" name="Submit2" value="Reset" /><br>
				</div>
			</div>
		</form>
		<div align="center">

			<%
				if (request.getParameter("Submit") != null) {

					try {
						String fname = request.getParameter("name");
						String feedback = request.getParameter("feedback");
						String email = request.getParameter("phoneno");
						String phno = request.getParameter("emailid");
						String rating = request.getParameter("star");

						Connection cn = Dbconnection.getConnection();

						PreparedStatement pstmt;

						pstmt = cn.prepareStatement("insert into feedback values(?,?,?,?,?)");

						pstmt.setString(1, fname);
						pstmt.setString(2, feedback);
						pstmt.setString(3, email);
						pstmt.setString(4, phno);
						pstmt.setString(5, rating);
						pstmt.executeUpdate();

						out.println("<script>alert('Submitted Successfully');window.location='guestpage.jsp';</script>");
					} catch (Exception ex) {
						out.print(ex);
					}
				}
			%>		</div><br><br>

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
