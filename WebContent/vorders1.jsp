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
			<h2>Dispatch Order PAGE</h2>
		</div>
<div align="center">
				<table>
					<tr>
						<td colspan="3" scope="col"> <span class="style5"><a
								href="signup.jsp"> </a></span> <span class="style5"><a
										href="signup.jsp"></a></span>
											<div align="center">
												<%
													try {
														Connection con = Dbconnection.getConnection();

														String bno = request.getParameter("id");
														PreparedStatement pstmt = con.prepareStatement("Update custom set status='Completed' where Id=?");
														pstmt.setString(1, bno);

														pstmt.executeUpdate();

														pstmt.close();

														out.println("<h1 align=center> Completed Successfully....");

													} catch (Exception e) {
														out.println(e);
													}
												%>
											</div></td>
					</tr></table>
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
</body>
</html>