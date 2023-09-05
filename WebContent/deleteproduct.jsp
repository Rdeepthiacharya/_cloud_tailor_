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
								<jsp:include page="adminheader.jsp"></jsp:include>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</header>
		<div class="section_heading text-center">
			<h2>Delete product</h2>
		</div>

		<section class="main-content">
			<form id="form1" name="form1" method="post" action="">
				<table>
					<tr>
						<td scope="col">
							<div align="center">
								<%
									try {
										String s = request.getParameter("d").trim();

										Connection con = Dbconnection.getConnection();
										Statement stmt = con.createStatement();
										String s1 = "delete from product where pid=" + "'" + s + "'";
										stmt.executeUpdate(s1);
										stmt.close();

										con.close();
										out.println("<script> alert('deleted successfully');window.location='eproduct.jsp'; </script>");
										out.println("<br><br><br><h1><a href=eproduct.jsp>Return to Product</a></h1>");

									} catch (Exception e) {
										out.println(e);
									}
								%>
							</div></td>
					</tr></table>
			</form>
			<div align="center"></div>
		</section>

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