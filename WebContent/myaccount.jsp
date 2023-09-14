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

		<div align="center">
			<div class="page-content page-container" id="page-content">
				<div class="padding">
					<div class="row container d-flex justify-content-center">
						<div class="col-xl-8 col-md-12">
							<div class="card user-card-full">
								<div class="row m-l-0 m-r-0">
									<div class="col-sm-4 bg-c-lite-green user-profile">
										<div class="card-block text-center text-white">
											<div class="m-b-25">
												<img src="img/ppic.png" class="img-radius"
													alt="User-Profile-Image">
											</div>
											<h6 class="f-w-600">
												<%
													String name = (String) session.getAttribute("fname");
													out.println(name);
												%>
											</h6>
										</div>
									</div>
									<div class="col-sm-8">
										<div class="card-block">
											<h6 class="m-b-20 p-b-5 b-b-default f-w-600">Personal
												Details</h6>
											<div class="row">
												<div class="col-sm-6">
													<p class="m-b-10 font-weight-bold f-w-600">Email</p>
													<h6 class="text-muted f-w-400">
														<%
															String em = (String) session.getAttribute("emailid");
															out.println(em);
														%>
													</h6>
												</div>
												<div class="col-sm-6">
													<p class="m-b-10 font-weight-bold f-w-600">Phone</p>
													<h6 class="text-muted f-w-400">
														<%
															String mb = (String) session.getAttribute("mobile");
															out.println(mb);
														%>
													</h6>
												</div>

												<div class="col-sm-6">
													<p class="m-b-10 font-weight-bold f-w-600">Address</p>
													<h6 class="text-muted f-w-400">
														<%
															String ad = (String) session.getAttribute("addr");
															out.println(ad);
														%>
													</h6>
												</div>
												<div class="col-sm-6">
													<p class="m-b-10 font-weight-bold f-w-600">DOB</p>
													<h6 class="text-muted f-w-400">
														<%
															String o = (String) session.getAttribute("dob");
															out.println(o);
														%>
													</h6>
												</div>
											</div><br><br>
											
											<h6 class="m-b-20 p-b-5 b-b-default f-w-600">Change
												Password</h6>
											<div class="row">
												<div class="col-sm-6">
													<form id="form1" name="form1" method="post" action="">
														<div class="myDiv">
															<div class="form-field">
																<div align="left">
																	<div>
																		<span class="style1">Old Password </span>
																	</div>
																	<input type="text" name="textfield" id="textfield"
																		required="required" />
																</div>
															</div>
															<div class="form-field">
																<div align="left">
																	<div>
																		<span class="style1">New Password </span>
																	</div>
																	<input type="password" name="textfield2" id='password'
																		required="required" />
																</div>
																<span toggle="#password"
																	class="field-icon toggle-password"><span
																	class="material-icons"><i class="fas fa-eye"></i></span></span>
															</div>
															<div class="form-field">
																<div align="left">
																	<div>
																		<span class="style1">Confirm Password </span>
																	</div>
																	<input type="password" name="textfield3"
																		id='confirm-password' required="required" />
																</div>
																<span toggle="#confirm-password"
																	class="field-icon toggle-password"><span
																	class="material-icons"><i class="fas fa-eye"></i></span></span>
															</div>
															<br> <input type="submit" class="btn karl-btn"
																name="Login" value="Reset Password" />&nbsp;&nbsp;<input
																type="reset" class="btn karl-btn" name="Login2"
																value="Clear" /><br>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<p>

			<%
				if (request.getParameter("Login") != null) {
					try {

						Connection con = Dbconnection.getConnection();
						Statement stmt = con.createStatement();
						ResultSet rs, rs1, rs2;

						String s = request.getParameter("textfield").trim();//old
						String s1 = request.getParameter("textfield2").trim();//new
						String s3 = request.getParameter("textfield3").trim();//confirm

						String email = (String) session.getAttribute("emailid");

						if (s1.equals(s3)) {
							rs = stmt.executeQuery("select * from signup where emailid=" + "'" + email + "'");
							int found = 0;
							while (rs.next()) {

								found = 1;
								break;
							}

							if (found == 1) {

								String str = "Update signup set pwd=? where emailid=?";
								///out.println(str);
								PreparedStatement psmt = con.prepareStatement(str);
								psmt.setString(1, s1);
								psmt.setString(2, email);
								psmt.executeUpdate();
								//out.println(s1+","+s3);
								psmt.close();
								rs.close();
								con.close();
								out.println("<h1 align=center ><b>Updated successfully</b></h1>");
							} else {

								out.println("<h1 align=center >Some thing has gone wrong ...Pls chk</h1>");
							}
						} else {

							out.println("<h1 align=center >Match with the Credentials </h1>");
						}

					} catch (Exception e) {
						out.println("Exception occured" + e);
					}
				}
			%>
		</p>

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
		var clicked = 0;
		$(".toggle-password")
				.click(
						function(e) {
							e.preventDefault();

							$(this).toggleClass("toggle-password");
							if (clicked == 0) {
								$(this)
										.html(
												'<span class="material-icons"><i class="fas fa-eye-slash"></i></span>');
								clicked = 1;
							} else {
								$(this)
										.html(
												'<span class="material-icons"><i class="fas fa-eye"></i></span>');
								clicked = 0;
							}

							var input = $($(this).attr("toggle"));
							if (input.attr("type") == "password") {
								input.attr("type", "text");
							} else {
								input.attr("type", "password");
							}
						});
	</script>

</body>
</html>