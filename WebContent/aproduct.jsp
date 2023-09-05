<%@page import="java.io.File"%>
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
		<div align="center">
			<div class="section_heading text-center">
				<h2>Add New Product</h2>
			</div>
			<form id="form1" name="form1" method="post" action="">

				<div class="form-field">
					<div align="left" class="style1">Product ID</div>
					<div align="left">
						<input type="text" name="t1" id="t1"
							value="<%Connection cn = Dbconnection.getConnection();
			Statement stmt = cn.createStatement();
			ResultSet rs;
			String s5 = "";
			int cnt = 1;
			rs = stmt.executeQuery("select * from  product");

			while (rs.next()) {
				cnt++;
			}
			rs.close();
			String s = "";
			s = s.valueOf(cnt);
			s = "BP-" + s;
			Cookie cook1 = new Cookie("id", s);
			cook1.setMaxAge(1200);
			response.addCookie(cook1);
			out.println(s);%>" />
					</div></div>
					
				<div class="form-field">
					<div align="left" class="style1">Description</div>
					<div align="left">
						<textarea name="t2" id="t2" required="required">                
                                        </textarea>
					</div></div>

				<div class="form-field">
					<div align="left" class="style1">Rate</div>
					<div align="left">
						<input name="t3" type="number" min="0" id="t3" required="required" />
					</div></div>

				<div class="form-field">
					<div align="left" class="style1">Photo</div>
					&nbsp;&nbsp;<img src="" id="img_url" alt="your image">
					<div align="left">
						<input name="t4" type="file" id="img_file"
							onChange="img_pathUrl(this);" required="required" />
					</div></div>
					
				<div class="form-field">
					<div align="left" class="style1">Category</div>
					<div align="left">
						<select name="t5" id="t5">
							<option value="ethnicwear">Ethnic wear</option>
							<option value="partywear">Party wear</option>
							<option value="casualwear">Casual wear</option>
							<option value="rentaldress">Rental dress</option>
						</select>
					</div></div><br>
				
				<div class="form-field">
					<div align="left" class="style1">GST %</div>
					<div align="left">
						<input name="t6" type="text" id="t6" required="required" />
					</div></div><br>

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
						<input name="t8" id="t8" type="number" min="0" required="required" />
					</div>
				</div>
				<br>
				<br>
				<div class="button-container">
					<input type="submit" class="btn karl-btn" name="Submit"
						value="Submit" />&nbsp;&nbsp; <input type="reset"
						class="btn karl-btn" name="Submit2" value="Reset" /><br>
				</div>
			</form>
		</div><br><br>

		<div align="center">
			<%
				if (request.getParameter("Submit") != null) {
					try {
						Class.forName("com.mysql.jdbc.Driver");
						Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CloudTailor",
								"root", "mysql");
						String t1 = request.getParameter("t1").trim();
						String t2 = request.getParameter("t2").trim();
						String t3 = request.getParameter("t3").trim();
						String t4 = request.getParameter("t4").trim();
						String t5 = request.getParameter("t5").trim();
						String t6 = request.getParameter("t6").trim();
						String t7 = request.getParameter("t7").trim();
						String t8 = request.getParameter("t8").trim();

						String sql = "INSERT INTO product(pid,pdesc,rate,pic,Category,gst,size,stock) VALUES ('" + t1
								+ "','" + t2 + "','" + t3 + "','" + t4 + "','" + t5 + "','" + t6 + "','" + t7 + "','" + t8
								+ "')";
						PreparedStatement pstmt = con.prepareStatement(sql);
						pstmt.executeUpdate();

						Dbconnection obj = new Dbconnection();
						String src = obj.GetSourcePath() + t4;
						String dest = obj.GetProjectPath() + t4;

						obj.copy(new File(src), new File(dest));

						out.println("<h1 style='color:red'>SUCCESFULLY Added</h1>");

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