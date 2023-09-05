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
<style type="text/css">
form .stars span {
	background: url("/img/stars.png") repeat-x 0 -60px;
}
</style>
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
			<h2>Feedback view</h2>
		</div>		<div align="center">
		<table class="tablecontent">
			<tr>
			<td scope="col">
						<div align="center">
							<%
								try {
									Connection con = Dbconnection.getConnection();
									Statement stmt = con.createStatement();
									ResultSet rs;
									ResultSetMetaData rmd;

									String s1 = "select fname as Name,feedback as Feedback,ph as Mobileno,email as Emailid,rating as Rating from feedback";

									rs = stmt.executeQuery(s1);

									out.println("<table border=1 align=center width=100% id=customers ><tr>");

									rmd = rs.getMetaData();
									int n = rmd.getColumnCount();
									for (int i = 1; i <= n + 1; i++) {
										if (i <= n) {
											out.println("<td><b><font size=5 color=black>" + rmd.getColumnName(i) + "</font></b></td>");
										}

									}
									String s = "", s5 = "";
									while (rs.next()) {
										out.println("<tr>");

										for (int x = 1; x <= n; x++) {
											s = rs.getString(x);
											if (x == 5) {
												s5 = s;
												int t = Integer.parseInt(s5);
												out.println("<td>");
												for (int k = 1; k <= t; k++) {
													out.println("<b><img src=img/stars1.png width=15 height=15></img></b>");
												}
											} else {

												out.println("<td><b>" + s + "</b></td>");
											}
										}
										out.println("</tr>");
									}
									out.println("</table><br></body></html>");
									rs.close();
									stmt.close();
									con.close();

								} catch (Exception e) {

									out.println(e);
								}
							%>
						</div></td>
			</tr>
		</table></div>

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