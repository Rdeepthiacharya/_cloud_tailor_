<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*,java.util.*" errorPage=""%>

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
		<div align="center"></div><br>
		<div class="section_heading text-center">
			<h2>ORDER SUMMARY</h2>
		</div>
		<form id="form1" name="form1" method="post" action="">
<br>		<div class="form-field">
				<strong>Invoice No.</strong>
				<%
					String bno = (String) session.getAttribute("bb");
					out.println(bno);
				%>
			</div><br><br>

			<div class="form-field">
				<strong>Invoice date:</strong>
				<%
					String a = (String) session.getAttribute("dt");
					out.println(a);
				%>
			</div><br><br>
			
			<div class="form-field36">
				<strong>Product id:</strong>
				<%
					String pod = (String) session.getAttribute("pi");
					out.println(pod);
				%>
			</div>
			
			<div class="form-field">
				<strong>Product Name:</strong>
				<div class="filename"><wbr><%
					String podn = (String) session.getAttribute("pin");
					out.println(podn);
				%></div>
			</div><br><br>
			
			<div class="form-field">
				<strong>Email id:</strong>
				<%
					String ee = (String) session.getAttribute("emailid");
					out.println(ee);
				%>
			</div><br><br>
			
			<div class="form-field">
				<strong>Full name:</strong>
				<%
					String fa = (String) session.getAttribute("fname");
					out.println(fa);
				%>
</div><br><br>
			
			<div class="form-field">
				<strong>Address:</strong>
				<%
					String add = (String) session.getAttribute("addr");
					out.println(add);
				%>
</div><br><br>
			
			<div class="form-field">
				<strong>Phone no:</strong>
				<%
					String ph = (String) session.getAttribute("mobile");
					out.println(ph);
				%>
</div><br><br>
			
			<div class="form-field">
				<strong>Date of delivery:</strong>
				<%
					String dot1 = (String) session.getAttribute("dt1");
					out.println(dot1);
				%>
</div><br><br>
			
			<div class="form-field">
				<strong>Total:</strong>
				<%
					String b = (String) session.getAttribute("ff");
					out.println(b);
				%>
</div><br><br>
			
			<div class="form-field">
				<strong>No of Items:</strong>
				<%
					String dc = (String) session.getAttribute("kk");
					out.println(dc);
				%>
</div><br><br>
			
				<div class="form-field58">
				<strong>dob:</strong>
				<%
					String o = (String) session.getAttribute("dob");
					out.println(o);
				%>
			</div>
						<button class="custom-btn btn-5" onclick="window.print()">Print</button>
		</form>

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