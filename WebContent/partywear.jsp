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
		</section>
	
		<section class="new_arrivals_area section_padding_100_0 clearfix">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="section_heading text-center">
							<h2>Party Wear</h2>
						</div>
					</div>

					<%
						try {

							Connection con = Dbconnection.getConnection();
							Statement stmt = con.createStatement();
							ResultSet rs;
							ResultSetMetaData rmd;
					%>

					<%
						stmt = con.createStatement();
							rs = stmt.executeQuery("SELECT * FROM product where category='partywear' and stock>0");
							String id = "";
							while (rs.next()) {
								// id=rs.getString(0);
					%>

					<!-- gallery Item Start -->
					<div
						class="col-12 col-sm-6 col-md-4 single_gallery_item women wow fadeInUpBig"
						data-wow-delay="0.2s">
						<div class="product-img">
							<img src='images/<%=rs.getString(4)%>' alt="Product Image">
						</div>
						<div class="product-description">
							<br> <h5><b class="filename"><wbr><%=rs.getString(2)%></b></h5>
							<h5 class="product-price">
								Available Size :
								<%=rs.getString("size")%></h5>
							<h5 class="product-price">
								Available Stock :
								<%=rs.getString("stock")%></h5>
							<h5 class="product-price">
								Price :
								₹<%=rs.getString("rate")%></h5>
							<div class="frame">
								<button class="custom-btn btn-5">
									<a href='addcart.jsp?id= <%=rs.getString(1)%>'>ADD TO CART</a>
								</button>
							</div>
						</div>
					</div>

					<%
						}
							rs.close();
							stmt.close();
							con.close();
						} catch (Exception e) {
							out.println(e);
						}
					%>
				</div></div>
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
	<script >
	var arr = document.getElementsByClassName('filename');
	for(var i = 0; i < arr.length; i++) {
	  arr[i].innerHTML = arr[i].innerHTML.replace(/_/g, '_<wbr/>');
	}
	</script>
</body>
</html>