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

<!-- CSS -->
<link rel="stylesheet" href="css/core-style.css">
<link rel="stylesheet" href="css/stylefinal.css">
<link rel="stylesheet" href="css/responsive.css">
<!-- Responsive CSS -->
<link href="css/responsive.css" rel="stylesheet">
<link href="css/stylefinal.css" rel="stylesheet" />
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
		</section><br> <br> 
		
		<div align="center">
			<div class="section_heading text-center">
				<h2>Signup Form</h2>
			</div>
			<form id="form1" name="form1" method="post" action="">

				<div class="form-field">
					<span><i class="fa-regular fa-at fa-xl"></i></span>&nbsp;&nbsp; <input
						name="t1" type="email" placeholder="Email" id="t1"
						required="required" />
				</div>
				<br>
				<div class="form-field">
					<span><i class="fa-solid fa-user fa-xl"></i></span>&nbsp;&nbsp; <input
						name="t2" type="text" placeholder="Full Name" id="t2"
						title="letters only" pattern="[A-Za-z]{ }+" required="required" />
				</div>
				<br>
				<div class="form-field">
					<span><i class="fa-solid fa-lock fa-xl"></i></span>&nbsp;&nbsp; <input
						type="password" placeholder="Password" name="t3" id="myInput"
						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
						title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
						required="required" /> <span class="eye" onclick="myFunction()">
						<i id="hide1" class="fa fa-eye-slash"></i> <i id="hide2"
						class="fas fa-eye"></i>
					</span>
				</div>
				<br>
				<div class="form-field">
					<span><i class="fa-solid fa-address-card fa-xl"></i></span> <textarea
						 title="Address" name="t4" id="t4">
					</textarea>
				</div>
				<br>
				<div class="form-field">
					<span><i class="fa-solid fa-phone fa-xl"></i></span>&nbsp;&nbsp; <input
						type="text" placeholder="Mobile No" name="t5" id="t5"
						title="only nos should be 10 digits" maxlength="10"
						pattern="^\d{10}$" required="required">
				</div>
				<br>
				<div class="form-field">
					<span><i class="fa-solid fa-calendar-days fa-xl"></i></span>
					<div>
						<input name="t6" id="born_date"
							 required="required" />
					</div>
				</div><br><br>				
       
				<div class="button-container">
					<input type="submit" class="btn karl-btn" name="Submit"
						value="Submit" />&nbsp;&nbsp; <input type="reset"
						class="btn karl-btn" name="Submit2" value="Reset" /><br>
				</div>
			<br>
				<a href="gsignin.jsp" class="style2">Already have an account?</a>

			</form>
		</div><br><br><br>
		<div align="center">

			<%
				if (request.getParameter("Submit") != null) {
					try {
						Connection con = Dbconnection.getConnection();
						String t1 = request.getParameter("t1").trim();
						String t2 = request.getParameter("t2").trim();
						String t3 = request.getParameter("t3").trim();
						String t4 = request.getParameter("t4").trim();
						String t5 = request.getParameter("t5").trim();
						String t6 = request.getParameter("t6").trim();

						Statement stmt = con.createStatement();
						int count = 0;
						ResultSet rs;
						rs = stmt.executeQuery("select * from signup where emailid=" + "'" + t1 + "'");

						while (rs.next()) {
							count++;
						}

						if (count == 0) {
							PreparedStatement pstmt = con.prepareStatement("insert into signup values(?,?,?,?,?,?)");
							pstmt.setString(1, t1);
							pstmt.setString(2, t2);
							pstmt.setString(3, t3);
							pstmt.setString(4, t4);
							pstmt.setString(5, t5);
							pstmt.setString(6, t6);

							pstmt.executeUpdate();

							pstmt.close();
							con.close();
							out.println("<h1>SUCCESFULLY REGISTERED</h1>");
						} else {
							out.println("<h1>User already Registered with us ....</h1>");
						}
					} catch (Exception e) {
						out.println("Exception occured" + e);
					}
				}
			%>
		</div>
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
	<script type="text/javascript">
	$("#born_date").datepicker({
	    changeYear: true,
	    changeMonth: true,
	    maxDate: '+0d', 
	    yearRange: '-90:+0',
	    numberOfMonths: 1
	});
	</script>
	<script type="text/javascript">
		function myFunction() {
			var x = document.getElementById("myInput");
			var y = document.getElementById("hide1");
			var z = document.getElementById("hide2");

			if (x.type === 'password') {
				x.type = "text";
				y.style.display = "block";
				z.style.display = "none";
			} else {
				x.type = "password";
				y.style.display = "none";
				z.style.display = "block";
			}
		}
	</script>
</body>
</html>