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

		<br> <br> <br>
		<div align="center">
			<div class="section_heading text-center">
				<h2>Admin Login</h2>
			</div>
			<form id="form1" name="form1" method="post" action="">

				<div class="form-field">
					<span><i class="fa-regular fa-at fa-xl"></i></span>&nbsp;&nbsp; <input
						type="email" placeholder="Email Id" name="textfield"
						required="required" />
				</div>

				<div class="form-field">
					<span><i class="fa-solid fa-lock fa-xl"></i></span>&nbsp;&nbsp; <input
						type="password" placeholder="Password" name="textfield2"
						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" id="myInput"
						title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
						required="required" /> <span class="eye" onclick="myFunction()">
						<i id="hide1" class="fa fa-eye-slash"></i> <i id="hide2"
						class="fas fa-eye"></i>
					</span>
				</div>
				<br>

				<div class="button-container">
					<input class="btn karl-btn" type="submit" name="Submit"
						value="Submit" />
				</div><br><br>
			</form>

			<div align="center">
				<%
					if (request.getParameter("Submit") != null) {
						try {
							Connection con = Dbconnection.getConnection();
							Statement stmt = con.createStatement();
							ResultSet rs, rs1;

							String u = request.getParameter("textfield").trim();
							String p = request.getParameter("textfield2").trim();

							rs = stmt.executeQuery(
									"select * from adminlogin where u=" + "'" + u + "'" + " and p=" + "'" + p + "'");

							int found = 0;
							while (rs.next()) {
								found++;
							}
							if (found == 1) {
								session.setAttribute("user", u);
								response.sendRedirect("adminpage.jsp");
							} else {
								out.println("<h1 align=center >Invalid Login... </h1>");
							}
							rs.close();

							stmt.close();
							con.close();

						} catch (Exception e) {

							out.println("Exception occured" + e);
						}
					}
				%>
			</div>
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