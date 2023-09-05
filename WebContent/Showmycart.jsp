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

		<div class="section_heading text-center">
			<h2>My Cart</h2>
		</div>
<div align="center">
		<table class="tablecontent">
			<tr>
				<td scope="col">
					<div align="center">		
						<%
							try {
								String email = (String) session.getAttribute("emailid");

								Connection con = Dbconnection.getConnection();

								Statement stmt = con.createStatement();
								ResultSet rs;
								ResultSetMetaData rmd;

								String s1 = "select pid as ProductId,pdesc as ProductDescription,rate as Rate,GST, (rate*gst)/100 as GSTValue,  rate+(rate*gst)/100 as TotalAmount,  pic as Photo from carttemp where emailid="
										+ "'" + email + "'";

								rs = stmt.executeQuery(s1);

								out.println("<table border=1 align=center width=80% ><tr>");

								rmd = rs.getMetaData();
								int n = rmd.getColumnCount();
								for (int i = 1; i <= n; i++) {

									out.println("<td><b><font size=5>" + rmd.getColumnName(i) + "</font></b></td>");

								}
								out.println("<td><b><font size=5>Delete</font></b></td>");
								String s = "", s5 = "", s6 = "", s111 = "";
								int count = 0;
								double sum = 0;
								double temp = 0;
								double mgst = 0, mgsttemp = 0, gsttotal=0, famt=0;
								String pid = "";
								String pud = "";
								String pudn = "";
								String pdesc = "";
								while (rs.next()) {
									out.println("<tr>");
									count++;

									for (int x = 1; x <= n; x++) {

										if (x == 1) {
											s1 = rs.getString(x);
											pid = s1;
											out.println("<td><b>" + s1 + "</b></td>");
										} else if (x == 2) {
											s = rs.getString(x);
											pdesc = s;
											out.println("<td><b>" + s + "</b></td>");
										}else if (x == 4) {
											s = rs.getString(x);											
											out.println("<td><b>" + s + "%</b></td>");		
									} else if (x == 5) {
										s = rs.getString(x);										
										out.println("<td><b>" + s + "</b></td>");
									} 		
										else if (x == 7) {
											s = rs.getString(x);
											out.println("<td><b><img src='images/" + s + "' width=100% ></img></b></td>");
										} else if (x == 3) {
											s111 = rs.getString(x);
											String gst = rs.getString("GSTValue");
											temp = temp + Float.parseFloat(s111);
											gsttotal +=  Float.parseFloat(gst);
											famt = famt + Float.parseFloat(s111)+ Float.parseFloat(gst);
											String pd = rs.getString("ProductId");
											pud.concat(pd);
											pud=pud.concat(pd);
											String pdn = rs.getString("ProductDescription");
											pudn.concat(pdn);
											pudn=pudn.concat(pdn);
											out.println("<td><b>₹" + s111 + "</b></td>");
										} else {
											s = rs.getString(x);
											out.println("<td><b>" + s + "</b></td>");
										}

									}

									out.println("<td><a href=deletecart.jsp?d=" + pid + ">Delete<a/></td>");

									out.println("</tr>");
								}
								session.setAttribute("gst", mgsttemp);
								session.setAttribute("gsttotal", gsttotal);
								out.println("</table><br>");

								if (temp > 0) {
									out.println("<a  href=payments.jsp?total=" + temp + "&no=" + count + "&gst=" +  Math.round(gsttotal) +"&finalamt=" +  Math.round(famt) + "&pid="
											+ pud + "&pname=" + pudn +"><p style='color:#ff084e'>Proceed to Payment</p></a>");
									out.println("<a href=deleteall.jsp><p style='color:#ff084e'>Delete all from cart</p<a>");
									out.println("<h3  align=center ><h1 style='color:#FF4500'> Total items=" + count + " Total Cart Value= ₹"
											+  Math.round(famt) +"</h1></h3>");
								}
								out.println("</table><br></body></html>");
								rs.close();
								stmt.close();
								con.close();

							} catch (Exception e) {
								out.println(e);
							}
						%>
					</div>
				</td>
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