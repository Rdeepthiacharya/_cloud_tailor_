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
								<jsp:include page="mainheader.jsp"></jsp:include>
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

		<section class="welcome_area">
			<div class="welcome_slides owl-carousel">
				<!-- Single Slide Start -->
				<div class="single_slide height-800 bg-img background-overlay"
					style="background-image: url(img/top-banner2.jpg);">
					<div class="container h-100">
						<div class="row h-100 align-items-center">
							<div class="col-12">
								<div class="welcome_slide_text">
									<h2 data-animation="fadeInUp" data-delay="500ms"
										data-duration="500ms">Fashion Trends</h2>
									<a href="gsignin.jsp" class="btn karl-btn"
										data-animation="fadeInUp" data-delay="1s"
										data-duration="500ms">Shop Now</a>
									<h6 data-animation="fadeInDown" data-delay="0"
										data-duration="500ms">* Get 20% off on First Order</h6>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Single Slide Start -->
				<div class="single_slide height-800 bg-img background-overlay"
					style="background-image: url(img/top-banner7.jpg);">
					<div class="container h-100">
						<div class="row h-100 align-items-center">
							<div class="col-12">
								<div class="welcome_slide_text"></div>
							</div>
						</div>
					</div>
				</div>
				<!-- Single Slide Start -->
				<div class="single_slide height-800 bg-img background-overlay"
					style="background-image: url(img/top-banner11.png);">
					<div class="container h-100">
						<div class="row h-100 align-items-center">
							<div class="col-12">
								<div class="welcome_slide_text"></div>
							</div>
						</div>
					</div>
				</div>
				<!-- Single Slide Start -->
				<div class="single_slide height-800 bg-img background-overlay"
					style="background-image: url(img/top-banner10.jpeg);">
					<div class="container h-100">
						<div class="row h-100 align-items-center">
							<div class="col-12">
								<div class="welcome_slide_text"></div>
							</div>
						</div>
					</div>
				</div>

				<!-- Single Slide Start -->
				<div class="single_slide height-800 bg-img background-overlay"
					style="background-image: url(img/top-banner8.jpg);">
					<div class="container h-100">
						<div class="row h-100 align-items-center">
							<div class="col-12">
								<div class="welcome_slide_text">
									<h6 data-animation="fadeInDown" data-delay="0"
										data-duration="500ms">* Designer outfits for Your special
										day</h6>
									<h2 data-animation="bounceInDown" data-delay="500ms"
										data-duration="500ms">New Collection</h2>
									<a href="gsignin.jsp" class="btn karl-btn"
										data-animation="fadeInRightBig" data-delay="1s"
										data-duration="500ms">Shop Now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- ****** Welcome Slides Area End ****** -->

		<!-- ****** Top Catagory Area Start ****** -->
		<section class="top_catagory_area d-md-flex clearfix">
			<!-- Single Catagory -->
			<div class="single_catagory_area d-flex align-items-center bg-img"
				style="background-image: url(img/top-banner4.jpg);">
				<div class="catagory-content">
					<h6>On Rental Dress</h6>
					<h2>Sale 20%</h2>
					<a href="gsignin.jsp" class="btn karl-btn">SHOP NOW</a>
				</div>
			</div>
			<!-- Single Catagory -->
			<div class="single_catagory_area d-flex align-items-center bg-img"
				style="background-image: url(img/top-banner14.jpg);">
				<div class="catagory-content">
					<h6></h6>
					<h2>Customized Saree blouse</h2>
					<a href="gsignin.jsp" class="btn karl-btn">SHOP NOW</a>
				</div>
			</div>
		</section>
		<!-- ****** Top Catagory Area End ****** -->

		<br> <br> <br> <br>

		<div class="section_heading text-center">
			<h2>SHOP NOW</h2>
		</div>

		<div class="wrapper1">
			<div class="cols">
				<div class="col">
					<div class="container1">
						<div class="front"
							style="background-image: url('images/lehanga44.jpg')">
							<div class="inner">
								<p>Women Fashion</p>
								<span>Ethinc Wear</span>
							</div>
						</div>
						<div class="back"
							style="background-image: url('images/lehanga44.jpg')">
							<div class="inner">
								<a href="gsignin.jsp" class="btn karl-btn">Check Collection</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="container1">
						<div class="front"
							style="background-image: url('images/partyw4.jpg')">
							<div class="inner">
								<p>Women Fashion</p>
								<span>Party Wear</span>
							</div>
						</div>
						<div class="back"
							style="background-image: url('images/partyw4.jpg')">
							<div class="inner">
								<a href="gsignin.jsp" class="btn karl-btn">Check Collection</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="container1">
						<div class="front"
							style="background-image: url('images/partydress24.jpg')">
							<div class="inner">
								<p>Women Fashion</p>
								<span>Casual Wear</span>
							</div>
						</div>
						<div class="back"
							style="background-image: url('images/partydress24.jpg')">
							<div class="inner">
								<a href="gsignin.jsp" class="btn karl-btn">Check Collection</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="container1">
						<div class="front"
							style="background-image: url('images/rent9.jpg')">
							<div class="inner">
								<p>Women Fashion</p>
								<span>Rental Dress</span>
							</div>
						</div>
						<div class="back"
							style="background-image: url('images/rent9.jpg')">
							<div class="inner">
								<a href="gsignin.jsp" class="btn karl-btn">Check Collection</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div><br> <br> <br><br>
		
		<div class="section_heading text-center">
			<h2>About Us</h2>
		</div>
		<div class="para">
			<div class="h">
				<b>Welcome to THREADED HEAVENS ! - THE ONE STOP TAILORS</b>
			</div>
			<br> At Threaded Heavens, we believe that fashion should be
			personalized, convenient, and accessible to everyone. We are an
			innovative online platform that brings together the world of fashion
			and technology to provide a unique and seamless tailoring experience
			for our customers. <br>
			<b>Our Mission:</b> At Cloud Tailoring, our mission is to
			revolutionize the way people interact with fashion by offering
			tailor-made clothing solutions in a convenient and efficient manner.
			We aim to empower individuals to express their personal style and
			embrace their uniqueness through custom-made garments. <br> <br>
			<b>What We Offer:</b>
			<p>
				<b>Threaded Heavens:</b> We offer a wide range of customizable
				clothing options for women. From formal wear to casual
				attire, our skilled tailors will create garments that perfectly fit
				your body measurements and style preferences.
			</p>
			<p>
				<b>Premium Fabrics and Materials:</b> We understand the importance
				of quality when it comes to clothing. That's why we source only the
				finest fabrics and materials for our garments. Whether it's
				luxurious silk, breathable cotton, or durable denim, we have a wide
				selection to choose from.
			</p>
			<p>
				<b>Design Assistance:</b> Need help with design choices? Our expert
				team of fashion consultants is here to guide you. They will assist
				you in selecting the right fabric, color, pattern, and style that
				aligns with your vision. We value your input and strive to bring
				your unique ideas to life.
			</p>
			<p>
				<b>Convenient Delivery:</b> Once your custom-made garment is ready,
				we ensure swift and reliable delivery right to your doorstep. We
				work with trusted shipping partners to ensure your order reaches you
				on time, no matter where you are.
			</p>
			<p>
				<b>Customer Satisfaction:</b> Your satisfaction is our top priority.
				We have a dedicated customer support team ready to assist you with
				any queries, concerns, or feedback you may have. We are committed to
				providing exceptional service throughout your Cloud Tailoring
				experience.
			</p>
			<br> <br>
			<marquee class="mar"> Join us on this exciting journey and
				experience the joy of wearing clothing that is tailored exclusively
				for you. Embrace your individuality and let Threaded Heavens
				transform the way you dress. Feel free to explore our website,
				browse our collection, and embark on a truly personalized fashion
				experience. </marquee>
		</div>

		<footer class="footer_area">
			<div class="container">
				<div class="row">
					<!-- Single Footer Area Start -->
					<div class="col-12 col-md-6 col-lg-3">
						<div class="single_footer_area">
							<div class="footer-logo">
								<img src="img/logot.png" alt="">
							</div>
							<div class="copywrite_text d-flex align-items-center">
								<p>
									Copyright &copy;
									<script>
										document
												.write(new Date().getFullYear());
									</script>
									All rights reserved
								</p>
							</div>
						</div>
					</div>

					<!-- Single Footer Area Start -->
					<div class="col-12 col-sm-6 col-md-3 col-lg-2">
						<div class="single_footer_area">
							<ul class="footer_widget_menu">
								<li><a href="index.jsp">Home</a></li>
								<li><a href="gsignin.jsp">My Profile</a></li>
								<li><a href="contactus.jsp">Contact Us</a></li>
							</ul>
						</div>
					</div>

					<!-- Single Footer Area Start -->
					<div class="col-12 col-sm-6 col-md-3 col-lg-2">
						<!-- 	<div class="single_footer_area">
							<ul class="footer_widget_menu">
								<li><a href="#">Categories</a></li>
								<li><a href="#">Salwar Kameez</a></li>
								<li><a href="#">Lehenga</a></li>
								<li><a href="#">Dress</a></li>
								<li><a href="#">Kurti</a></li>
								<li><a href="#">Ready To Wear Saree</a></li>
								<li><a href="#">Skirt</a></li>
							</ul>
						</div> -->
						<div class="footer_social_area">
							<div class="icons">
								<a href="#" class="icon1 icon--map"><i
									class="fa-solid fa-location-dot fa-xl"></i></a>
								<p class="responsive-font-example">Threaded Heavens | near sapna book house, 4th Block,
									Jayanagar, Bengaluru, Karnataka 560041</p>
							</div>
							<div class="icons">
								<a href="#" class="icon1 icon--phone"><i
									class="fa-solid fa-phone fa-xl"></i></a>
								<p class="responsive-font-example">500-123-4256</p>
							</div>
							<div class="icons">
								<a href="#" class="icon1 icon--envelope"><i
									class="fa-solid fa-envelope fa-xl"></i></a>
								<p class="responsive-font-example">
									<a class="a1" href="mailto:threadedheavens@gmail.com">mail
										to : threadedheavens@gmail.com</a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="line"></div>
				<!-- Footer Bottom Area Start -->
				<div class="footer_bottom_area">
					<div class="row">
						<div class="footer_social_area">
							<div class="social_icons">
								<div class="wrapper">
									<div class="icon facebook">
										<a href="#"></a> <span class="tooltip">Facebook</span> <span>
											<i class="fab fa-facebook fa-lg"></i>
										</span>
									</div>
									&nbsp;&nbsp;&nbsp;
									<div class="icon instagram">
										<a href="#"></a> <span class="tooltip">Instagram</span> <span><i
											class="fab fa-instagram fa-lg"></i></span>
									</div>
									&nbsp;&nbsp;&nbsp;
									<div class="icon google">
										<a href="#"></a> <span class="tooltip">Google</span> <span><i
											class="fab fa-google fa-lg"></i></span>
									</div>
									&nbsp;&nbsp;&nbsp;
									<div class="icon pinterest">
										<a href="#"></a> <span class="tooltip">Pinterest</span> <span><i
											class="fab fa-pinterest fa-lg"></i></span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
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
