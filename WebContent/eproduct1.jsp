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
			<h2>Edit Products</h2>
		</div>

		<form id="form1" name="form1" method="post" action="">
			<div class="form-field">
				<div align="left" class="style1">Product ID</div>
				<div align="left">
					<%@page import="dbconnection.Dbconnection"%>
					<%
						String s2 = "", s3 = "", s4 = "", s5 = "", s6 = "", s7 = "", s8 = "", s = "";
					%>
					<input type="text" name="t1" id="t1"
						value="<%try {
				String id = request.getParameter("d");
				out.println(id);

				Connection con = Dbconnection.getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs;

				String s1 = "select * from product where pid=" + "'" + id + "'";
				rs = stmt.executeQuery(s1);

				while (rs.next()) {

					s2 = rs.getString("pdesc");
					s3 = rs.getString("rate");
					s4 = rs.getString("Category");
					s5 = rs.getString("pic");
					s6 = rs.getString("gst");
					s7 = rs.getString("size");
					s8 = rs.getString("stock");
				}
			} catch (Exception e) {

				out.println(e);
			}%>" />
				</div>
			</div>

			<div class="form-field">
				<div align="left" class="style1">Description</div>
				<div align="left">
					<input name="t2" type="text" id="t2" value="<%out.println(s2);%>" />
				</div>
			</div>

			<div class="form-field">
				<div align="left" class="style1">Rate</div>
				<div align="left">
					<input name="t3" type="text" id="t3" value="<%out.println(s3);%>" />
				</div>
			</div>
		  
              	<div class="form-field"><div align="left" class="style1">Photo</div>
                                           <div align="left">
                                           <div class="form-field36">
                                                   <input name="t4" id="t4" type="file"/> </div>
                                                                  <img src='images/<% out.println(s5); %>' 
								width="150px" alt="Product Image">
                                                </div> </div>                 
			<div class="form-field">
				<div align="left" class="style1">Category</div>
				<div align="left">
				<input name="t5" type="text" id="t5" value="<%out.println(s4);%>" />
				</div>
			</div>

			<div class="form-field">
				<div align="left" class="style1">GST %</div>
				<div align="left">
					<input name="t6" type="text" id="t6" value="<%out.println(s6);%>" />
				</div>
			</div><br>

			<div class="form-field">
				<div align="left">Size</div>
				<div align="left">
					&nbsp; M<input type="checkbox" name="t7" id="t7" value="M" />
					&nbsp; L<input type="checkbox" name="t7" id="t7" value="L" />
					&nbsp; XL<input type="checkbox" name="t7" id="t7" value="XL" />
				</div>
			</div>
			<div class="form-field">
				<div align="left" class="style1">Stock</div>
				<div align="left">
					<input name="t8" id="t8" type="number"  min="0" value="<%out.println(s8);%>" required="required" />
				</div>
			</div>
			<br>
			<br>
			<div class="button-container">
				<input type="submit" class="btn karl-btn" name="Submit"
					value="Submit" />&nbsp;&nbsp; <input type="reset"
					class="btn karl-btn" name="Submit2" value="Reset" /><br>
			</div>
		</form><br><br>

	<div align="center">
		<%@page import="dbconnection.Dbconnection"%>
		<%
			try {
				if (request.getParameter("Submit") != null) {
					Connection con = Dbconnection.getConnection();
					String t1 = request.getParameter("t1").trim();
					String t2 = request.getParameter("t2").trim();
					String t3 = request.getParameter("t3").trim();
					String t4 = request.getParameter("t4").trim();
					String t5 = request.getParameter("t5").trim();
					String t6 = request.getParameter("t6").trim();
					String t7 = request.getParameter("t7").trim();
					String t8 = request.getParameter("t8").trim();
					Statement stmt = con.createStatement();

					String s1 = "Update product set pdesc=" + "'" + t2 + "'" + ",rate=" + "'" + t3 + "'" + ",gst=" + "'"
							+ t6 + "'" + ",size=" + "'" + t7 + "'" + ",stock=" + "'" + t8 + "'" + " where pid=" + "'"
							+ t1 + "'";
					stmt.executeUpdate(s1);

					con.close();
					out.println("<h1>Successfully Updated</h1>");
				}else
				{
				out.println("<h1>Something Wrong</h1>");			
				}
			} catch (Exception e) {
				out.println("Exception occured" + e);
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
</body>
</html>