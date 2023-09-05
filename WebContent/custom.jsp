<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*,java.util.*" errorPage=""%>
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
    .form1 {
    align:left;  
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
						<nav class="navbar navbar-expand-lg align-items-start"> <jsp:include
							page="userheader.jsp"></jsp:include> </nav>
					</div>
				</div>
			</div>
		</div>
		</header>
		<br> <br>					
						<div class="section_heading text-center">
							<h2>Customized Stitching</h2>
						</div>

						<div>
						<form action="" method="post" name="form1" id="form1">
							<div class="form-field">
								<div align="right" class="style1">ID</div>&nbsp;
								<input type="text" id="cs" name="cs"
									value="<%@page import="dbconnection.Dbconnection"%><%try {
				Connection con = Dbconnection.getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs;

				rs = stmt.executeQuery("select * from custom ");
				int count = 1;
				while (rs.next()) {
					count++;
				}

				String s = "";
				s = "CS-" + s.valueOf(count);
				out.println(s.trim());
			} catch (Exception e) {
				out.println("Exception occured" + e);
			}%>" />
							</div>

							<div class="form-field">
								<div align="right" class="style1">Name</div>&nbsp;
									<input type="text" name="cs2" id="cs2"
										value="<%String name = (String) session.getAttribute("fname");
			out.println(name);%>" />
							</div>
			<br>
				<div class="form-field">
					<div align="right" class="style1">Emailid</div>&nbsp;
					<input type="email" name="cs3" id="cs3"
						value="<%String em = (String) session.getAttribute("emailid");
			out.println(em);%>" />
				</div><br>

			<div class="form-field">
				<div align="right" class="style1">Address</div>&nbsp;	
				<input type="text" name="cs4" id="cs4"
					value="<%String ad = (String) session.getAttribute("addr");
			out.println(ad);%>" />
			</div><br>

		<div class="form-field">
			<div align="right" class="style1">Mobile no</div>&nbsp;
				<input type="text" name="cs5" id="cs5"
					value="<%String mb = (String) session.getAttribute("mobile");
			out.println(mb);%>" />
			</div><br>

		<div class="form-field">
			<div align="right">Image Upload</div>
			&nbsp;&nbsp;<img src="" id="img_url" alt="your image"> <input
				type="file" name="cs6" id="img_file" onChange="img_pathUrl(this);" />
		</div>
		<br>

		<div class="form-field">
			<div align="right" class="style1">Materials</div>
			<select name="cs7" id="cs7" required="required">
				<option value="new">New</option>
				<option value="upcycling">Upcycling</option>
			</select>
		</div>
		<br>

		<div class="form-field">
			<div align="right" class="style1">Accessories</div>
			<select name="cs8" id="cs8">
				<option value="none">None</option>
				<option value="headband">Headband</option>
				<option value="scrunchy">Scrunchie</option>
				<option value="hair clip">Hair clip</option>
				<option value="cloth belt">Cloth belt</option>
			</select>
		</div>
		<br>

		<div class="form-field">
			<div align="right" class="style1">Requirements</div>
			<textarea name="cs9" id="cs9" required="required"></textarea>
		</div>
		<br>
		<div class="form-field">
			<div align="right" class="style1">Date</div>
			<input type="text" name="cs10" id="textfield10"
				value="<%Calendar calendar = null;
			calendar = Calendar.getInstance();
			java.util.Date trialTime = new java.util.Date();
			calendar.setTime(trialTime);

			int year = calendar.get(Calendar.YEAR);
			int month = 1 + calendar.get(Calendar.MONTH);

			int dayofmonth = calendar.get(Calendar.DAY_OF_MONTH);

			String date = month + "/" + dayofmonth + "/" + year;

			String dot = "";

			int hour = calendar.get(Calendar.HOUR_OF_DAY);
			int min = calendar.get(Calendar.MINUTE);
			int sec = calendar.get(Calendar.SECOND);
			dot = dot + " " + hour + ":" + min;

			date = month + "/" + dayofmonth + "/" + year + "  " + dot;
			out.println(date);%>"
				readonly="readonly" />
		</div><br><br>
		<div class="button-container">
			<input type="submit" class="btn karl-btn" name="Submit" id="Login"
				value="Submit" />
		</div>
		</form></div>
		<div>
			<p>

				<%
					if (request.getParameter("Submit") != null) {
						try {

							Connection con = Dbconnection.getConnection();
							String t1 = request.getParameter("cs").trim();
							String t2 = request.getParameter("cs2").trim();
							String t3 = request.getParameter("cs3").trim();
							String t4 = request.getParameter("cs4").trim();
							String t5 = request.getParameter("cs5").trim();
							String t6 = request.getParameter("cs6").trim();
							String t7 = request.getParameter("cs7").trim();
							String t8 = request.getParameter("cs8").trim();
							String t9 = request.getParameter("cs9").trim();
							String t10 = request.getParameter("cs10").trim();

							PreparedStatement pstmt = con.prepareStatement("insert into custom values(?,?,?,?,?,?,?,?,?,?,?)");
							pstmt.setString(1, t1);
							pstmt.setString(2, t2);
							pstmt.setString(3, t3);
							pstmt.setString(4, t4);
							pstmt.setString(5, t5);
							pstmt.setString(6, t6);
							pstmt.setString(7, t7);
							pstmt.setString(8, t8);
							pstmt.setString(9, t9);
							pstmt.setString(10, t10);
							pstmt.setString(11, "ORDERED");
							pstmt.executeUpdate();
							out.println("<h1 style='color:red'>SUCCESFULLY ORDERED</h1>");

						} catch (Exception e) {
							out.println("Exception occured" + e);
						}
					}
				%>
			</p>
		</div>
		<br></br>
		<footer class="footer_area"> <jsp:include page="footer.jsp"></jsp:include>
		</footer>
	</div>
<!-- jQuery -->
	<script src="js/jquery/jquery-2.2.4.min.js"></script>
	<!-- js -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/active.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		function img_pathUrl(input) {
			$('#img_url')[0].src = (window.URL ? URL : webkitURL)
					.createObjectURL(input.files[0]);
		}
	</script>
</body>
</html>