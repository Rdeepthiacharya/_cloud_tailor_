<%@page import="java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="dbconnection.SendMail"%>
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
<%!
double gsttotal=0;
%>
		<div align="center">
			<div class="section_heading text-center">
				<h2>PAYMENT DETAIL</h2>
			</div>
			<form id="form1" name="form1" method="post" action="">

				<div class="form-field">
					<div align="left" class="style1">Invoice No.</div>
					<div align="left">
						<input type="text" name="textfield3" readonly
							value="<%
			Connection con = Dbconnection.getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs;
			gsttotal = Double.parseDouble(session.getAttribute("gsttotal").toString());
			String s5 = "";
			int cnt = 1000;
			rs = stmt.executeQuery("select * from payment2");

			while (rs.next()) {
				cnt++;
			}
			rs.close();
			String s = "";
			s = s.valueOf(cnt);
			Cookie inv = new Cookie("invno", s);
			inv.setMaxAge(1200);
			response.addCookie(inv);

			out.println(s);%>">
					</div>
				</div><br>
				<div class="form-field">
					<div align="left" class="style1">Invoice date</div>
					<div align="left">
						<%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%>
						<%
							Calendar calendar = null;
							calendar = Calendar.getInstance();
							java.util.Date trialTime = new java.util.Date();
							calendar.setTime(trialTime);

							int year = calendar.get(Calendar.YEAR);
							int month = 1 + calendar.get(Calendar.MONTH);

							int dayofmonth = calendar.get(Calendar.DAY_OF_MONTH);
							int dayofmonth1 = calendar.get(Calendar.DAY_OF_MONTH);
							dayofmonth1 = dayofmonth1 + 5;
							String date = month + "/" + dayofmonth + "/" + year;

							String dot = "", dot1 = "";

							int hour = calendar.get(Calendar.HOUR_OF_DAY);
							int min = calendar.get(Calendar.MINUTE);
							int sec = calendar.get(Calendar.SECOND);

							dot = dot + " " + hour + ":" + min;

							date = month + "/" + dayofmonth + "/" + year + "  " + dot;
							dot1 = month + "/" + dayofmonth1 + "/" + year + "  " + dot;
							out.println(date);
							session.setAttribute("dt", date);
							session.setAttribute("dt1", dot1);
							
						%>
					</div>
				</div><br>
				<div class="form-field">
					<div align="left" class="style1">No. of Items</div>
					<div align="left">
						<%
							String s1 = request.getParameter("no");
							out.println(s1);
							Cookie noitm = new Cookie("noofitems", s1);
							noitm.setMaxAge(1200);
							response.addCookie(noitm);
						%>
						&nbsp;
					</div>
				</div>
				<div class="form-field36">
					<div align="left" class="style1">Prdouct id</div>
					<div align="left">
						<%
							String s8 = request.getParameter("pid");
							out.println(s8);
							Cookie prd = new Cookie("prodid", s8);
							prd.setMaxAge(1200);
							response.addCookie(prd);
						%>
						&nbsp;
					</div>
				</div><br>
				<div class="form-field">
					<div align="left" class="style1">Product name</div>
					<div class="filename"align="left"><wbr>
						<%
							String s9 = request.getParameter("pname");
							out.println(s9);
							Cookie pn = new Cookie("pronam", s9);
							pn.setMaxAge(1200);
							response.addCookie(pn);
						%>
						&nbsp;
					</div>
				</div>
				<br>
				<div class="form-field">
					<div align="left" class="style1">Total</div>
					<div align="left">
						<%
							String s2 = request.getParameter("total");
							out.println(s2);
							Cookie totb = new Cookie("totalbill", s2);
							totb.setMaxAge(1200);
							response.addCookie(totb);
						%>
						&nbsp;
					</div>
				</div><br>
				<div class="form-field">
					<div align="left" class="style1">GST</div>
					<div align="left">
						<% float mgst=0,gst=0;
			                out.println(Math.round(gsttotal));%>
					</div>
				</div><br>
							<div class="form-field">
					<div align="left" class="style1">Mode</div>
					<div align="left">
						<label> <select name="select">

								<option value="cash on delivery">Cash on delivery</option>
						</select>
						</label>
					</div>
				</div><br>
	
				<div class="form-field36">
					<div align="left" class="style1">Date of delivery</div>
					<div align="left">
						<label> <input  type="text" name="textfield2" value="" />
						</label>
					</div>
				</div>
					<div class="form-field">
					<div align="left" class="style1">Total value with GST</div>
					<div align="left">
						<%
							String s4 = request.getParameter("finalamt");
							out.println(s4);
							Cookie ttamt = new Cookie("finalbill", s4);
							totb.setMaxAge(1200);
							response.addCookie(ttamt);
						%>
						&nbsp;
					</div>
				</div><br>
				<div align="center">
					<label> <input name="Submit" class="btn karl-btn" type="submit" id="Submit"
						value="Place Order" /> 
					</label>
				</div>
			</form>
			<p align="center">&nbsp;</p>
			<p align="center">
				<%@page import="java.sql.*"%>
				<%
					if (request.getParameter("Submit") != null)

					{
						try {
							String t1 = " ", t2 = "", t3 = "", t4 = "", t5 = "",t6 = "",t8 = "",t9 = "";

							Cookie cookies1[] = request.getCookies();
							Cookie cookie1;

							for (int i = 0; i < cookies1.length; i++) {
								cookie1 = cookies1[i];
								if (cookie1.getName().equals("invno"))
									t1 = cookies1[i].getValue();
								if (cookie1.getName().equals("noofitems"))
									t2 = cookies1[i].getValue();
								session.setAttribute("kk", t2);
								if (cookie1.getName().equals("totalbill"))
									t3 = cookies1[i].getValue();
							
							if (cookie1.getName().equals("finalbill"))
								t6 = cookies1[i].getValue();
							session.setAttribute("ff", t6);
							if (cookie1.getName().equals("prodid"))
								t8 = cookies1[i].getValue();
							session.setAttribute("pi", t8);
							if (cookie1.getName().equals("pronam"))
								t9 = cookies1[i].getValue();
							session.setAttribute("pin", t9);
						}

							String t43 = request.getParameter("textfield3").trim();
							t4 = request.getParameter("select").trim();
							t5 = request.getParameter("textfield2").trim();

							String e = (String) session.getAttribute("emailid");
							String n = (String) session.getAttribute("fname");
							String ad = (String) session.getAttribute("addr");
							String m = (String) session.getAttribute("mobile");
							String dt = (String) session.getAttribute("dt");
							String productid = (String) session.getAttribute("productid");
							String pi = (String) session.getAttribute("productid");
							PreparedStatement pstmt = con.prepareStatement(
									"insert into payment2(billno, famt, emailid, fullname, addr, ph, status, productid,bdate) values(?,?,?,?,?,?,?,?,now())");

							pstmt.setString(1, t43);
							session.setAttribute("bb", t43);
							//pstmt.setString(2, dt);
							pstmt.setString(2, t6);
							
							pstmt.setString(3, e);
							pstmt.setString(4, n);
							pstmt.setString(5, ad);
							pstmt.setString(6, m);
							pstmt.setString(7, "Ordered");
							pstmt.setString(8, t8);
							pstmt.executeUpdate();

							pstmt.close();

							PreparedStatement pstmt1 = con.prepareStatement("delete from carttemp");
							pstmt1.executeUpdate();
							pstmt1.close();
							String sql = "update product set stock = stock-1 where pid = '" + productid + "'";
							//out.print(sql);
							PreparedStatement pstmt2 = con.prepareStatement(sql);
							pstmt2.executeUpdate();
							pstmt2.close();
							con.close();

							Date date1 = new Date();
							SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
							String today = sdf.format(date1);

							 Random rand = new Random();
							    int otp = rand.nextInt(900000) + 100000;
							    session.setAttribute("otp",otp); 
							
							Calendar cal = Calendar.getInstance();
							try {
								cal.setTime(sdf.parse(today));
							} catch (ParseException ex) {
								ex.printStackTrace();
							}

							cal.add(Calendar.DATE, 5);
							String dateAfter = sdf.format(cal.getTime());
							String subject = "Your Order Has Been Successfully Placed!";
							String body = " Dear "+n+"\n\nWe just want to let you know that your order of product "+t9+" has been successfully placed.\nYour total Bill Amount comes to " + t6
									+ "\nWe are delighted to inform you that your order will be delivered to you on "
									+ dateAfter
									+ "\n\nIn order to ensure the security of your purchase, we have sent you a One-Time Password (OTP) in this email. The OTP is "
									+ otp
									+ ". Please use this to confirm your order.\n\nThank you for choosing us for your purchase !\n\nWe hope to serve you again soon.\n\nThank you,\nTHREADED HEAVENS.";
							SendMail obj = new SendMail();
							obj.sendEmail(e, subject, body);
							out.println("<h1><a  href=payments2.jsp>Proceed to Bill Generate</a></h1>");

						} catch (Exception e) {
							out.println("Exception occured" + e);
						}

					}
				%>
				
			</p>
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
	<script >
	var arr = document.getElementsByClassName('filename');
	for(var i = 0; i < arr.length; i++) {
	  arr[i].innerHTML = arr[i].innerHTML.replace(/_/g, '_<wbr/>');
	}
	</script>
</body>
</html>