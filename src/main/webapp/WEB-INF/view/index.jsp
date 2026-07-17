<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!doctype html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="${pageContext.request.contextPath}/img/favicon.png" type="image/png">
	<title>Tejaswi Kumar | Portfolio</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/linericon/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/owl-carousel/owl.carousel.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/magnific-popup.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/nice-select/css/nice-select.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

	<!-- Modern UX / Premium Visual Enhancements Style Block -->
	<style>
		body {
			font-family: 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
			color: #444444;
			overflow-x: hidden;
		}

		/* Banner Refinements */
		.home_banner_area {
			background: linear-gradient(135deg, #f8fafc 0%, #e2e8f0 100%);
			padding: 120px 0;
			display: flex;
			align-items: center;
		}

		.banner_content h3 {
			font-size: 20px;
			letter-spacing: 2px;
			color: #4a90e2;
			margin-bottom: 10px;
			font-weight: 600;
		}

		.banner_content h1 {
			font-size: 44px;
			font-weight: 800;
			color: #1e293b;
			margin-bottom: 15px;
			line-height: 1.2;
		}

		.banner_content h5 {
			font-size: 18px;
			color: #64748b;
			margin-bottom: 30px;
			font-weight: 500;
			letter-spacing: 1px;
		}

		/* Modernized Buttons Override */
		.primary_btn {
			display: inline-block;
			background: #4a90e2;
			color: #ffffff !important;
			padding: 12px 30px;
			border-radius: 30px;
			font-size: 14px;
			font-weight: 600;
			letter-spacing: 1px;
			text-transform: uppercase;
			transition: all 0.3s ease;
			border: 2px solid #4a90e2;
			box-shadow: 0 4px 15px rgba(74, 144, 226, 0.2);
			margin-right: 15px;
		}

		.primary_btn:hover {
			background: #357abd;
			border-color: #357abd;
			transform: translateY(-2px);
			box-shadow: 0 6px 20px rgba(74, 144, 226, 0.3);
			text-decoration: none;
		}

		.primary_btn.tr-bg {
			background: transparent;
			color: #4a90e2 !important;
			box-shadow: none;
		}

		.primary_btn.tr-bg:hover {
			background: #4a90e2;
			color: #ffffff !important;
		}

		/* Centered Image Handling */
		.home_right_img img, .about_img img {
			max-width: 100%;
			height: auto;
			border-radius: 20px;
			transition: transform 0.4s ease;
		}
		
		.home_right_img img:hover {
			transform: scale(1.02);
		}

		/* Section Settings */
		.section_gap { padding: 90px 0; }
		.section_gap_bottom { padding-bottom: 90px; }

		.main_title h2 {
			font-size: 36px;
			font-weight: 700;
			color: #1e293b;
			line-height: 1.3;
			margin-bottom: 20px;
			text-transform: capitalize;
		}

		.main_title p {
			color: #64748b;
			font-size: 15px;
			line-height: 1.7;
			margin-bottom: 20px;
		}

		/* Feature Cards Grid Section */
		.features_area {
			background-color: #f8fafc;
			padding: 90px 0;
		}

		.feature_item {
			background: #ffffff;
			padding: 40px 30px;
			border-radius: 12px;
			box-shadow: 0 5px 20px rgba(0,0,0,0.03);
			text-align: center;
			transition: all 0.3s ease;
			margin-bottom: 30px;
			border: 1px solid #edf2f7;
		}

		.feature_item:hover {
			transform: translateY(-8px);
			box-shadow: 0 15px 30px rgba(0,0,0,0.08);
			border-color: #4a90e2;
		}

		.feature_item img {
			margin-bottom: 25px;
			height: 60px;
			width: auto;
		}

		.feature_item h4 {
			font-size: 18px;
			font-weight: 600;
			color: #1e293b;
			margin-bottom: 15px;
		}

		.feature_item p {
			font-size: 14px;
			color: #64748b;
			line-height: 1.6;
		}

		/* Brand Grid Component */
		.single-brand-item {
			background: #ffffff;
			border: 1px solid #e2e8f0;
			height: 90px;
			margin-bottom: 20px;
			border-radius: 8px;
			transition: all 0.3s ease;
			width: 100%;
		}

		.single-brand-item:hover {
			border-color: #4a90e2;
			box-shadow: 0 5px 15px rgba(0,0,0,0.05);
		}

		.single-brand-item img {
			max-height: 40px;
			filter: grayscale(100%);
			opacity: 0.6;
			transition: all 0.3s ease;
		}

		.single-brand-item:hover img {
			filter: grayscale(0%);
			opacity: 1;
		}

		/* Stat Information Elements */
		.client-info {
			background: #ffffff;
			padding: 40px;
			border-radius: 16px;
			box-shadow: 0 10px 30px rgba(0,0,0,0.04);
			border: 1px solid #edf2f7;
		}

		.client-info .lage {
			font-size: 72px;
			font-weight: 800;
			color: #4a90e2;
			line-height: 1;
			margin-right: 15px;
		}

		.client-info .smll {
			font-size: 16px;
			font-weight: 600;
			color: #1e293b;
			line-height: 1.4;
			display: flex;
			align-items: center;
		}

		.call-now {
			margin-top: 30px;
			background: #f0f7ff;
			padding: 20px;
			border-radius: 10px;
			align-items: center;
		}

		.call-now .fa-phone {
			font-size: 24px;
			color: #4a90e2;
			margin-right: 15px;
		}

		/* Testimonials */
		.testi_item {
			background: #ffffff;
			padding: 35px;
			border-radius: 12px;
			box-shadow: 0 5px 20px rgba(0,0,0,0.03);
			border: 1px solid #edf2f7;
			margin: 15px;
		}

		.testi_item img {
			border-radius: 50%;
			max-width: 90px;
			margin: 0 auto 20px;
			border: 3px solid #f0f7ff;
		}

		.testi_text h4 {
			font-size: 16px;
			font-weight: 600;
			color: #1e293b;
			margin-bottom: 10px;
		}

		.testi_text p {
			font-size: 14px;
			color: #64748b;
			line-height: 1.6;
			font-style: italic;
		}
	</style>
</head>

<body>

	<%@include file="header.jsp" %>
	
	<!-- Hero Banner Section -->
	<section class="home_banner_area">
		<div class="banner_inner">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-lg-7">
						<div class="banner_content">
							<h3>HELLO WORLD</h3>
							<h1>I AM TEJASWI KUMAR</h1>
							<h5>Full Stack Developer & Software Engineer</h5>
							<div class="d-flex align-items-center">
								<a class="primary_btn" href="${pageContext.request.contextPath}/client/contact"><span>Hire Me</span></a>
								<a class="primary_btn tr-bg" href="${resumeUrl}" target="_blank"><span>Get CV</span></a>
							</div>
						</div>
					</div>
					<div class="col-lg-5">
						<div class="home_right_img">
							<c:choose>
    <c:when test="${not empty bannerImage}">
        <img src="${bannerImage}" alt="Tejaswi Kumar">
    </c:when>
    
</c:choose>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- About Section -->
	<section class="about_area section_gap">
		<div class="container">
			<div class="row justify-content-start align-items-center">
				<div class="col-lg-5">
					<div class="about_img">
						<img src="${pageContext.request.contextPath}/img/about-us.png" alt="About Me">
					</div>
				</div>

				<div class="offset-lg-1 col-lg-5">
					<div class="main_title text-left">
						<h2>Let's <br> Introduce <br> Myself</h2>
						<p>
							I am a Computer Science engineering student at Kalinga Institute of Industrial Technology with a solid foundation in software development, data structures, algorithms, and full-stack implementations.
						</p>
						<p>
							From processing real-time system data pipelines during my tenure at Tata Steel to integrating robust AI features like the Gemini API for complex platform engines, I build scalable web applications focused on performance and security.
						</p>
						<a class="primary_btn" href="${resumeUrl}" target="_blank"><span>Download CV</span></a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Experience & Tech Stack Section -->
	<section class="brand_area section_gap_bottom">
		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-6">
					<div class="row">
						<!-- Tech Stack Logos placeholders -->
						<div class="col-lg-4 col-md-4 col-sm-6 col-6">
							<div class="single-brand-item d-table">
								<div class="d-table-cell text-center font-weight-bold text-secondary">Java</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 col-6">
							<div class="single-brand-item d-table">
								<div class="d-table-cell text-center font-weight-bold text-secondary">React.js</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 col-6">
							<div class="single-brand-item d-table">
								<div class="d-table-cell text-center font-weight-bold text-secondary">Node.js</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 col-6">
							<div class="single-brand-item d-table">
								<div class="d-table-cell text-center font-weight-bold text-secondary">MongoDB</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 col-6">
							<div class="single-brand-item d-table">
								<div class="d-table-cell text-center font-weight-bold text-secondary">Express.js</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 col-6">
							<div class="single-brand-item d-table">
								<div class="d-table-cell text-center font-weight-bold text-secondary">REST APIs</div>
							</div>
						</div>
					</div>
				</div>
				<div class="offset-lg-1 col-lg-5 col-md-6 mt-4 mt-lg-0">
					<div class="client-info">
						<div class="d-flex align-items-center mb-4">
							<span class="lage">300+</span>
							<span class="smll">LeetCode DSA<br>Problems Solved</span>
						</div>
						<div class="call-now d-flex">
							<div>
								<span class="fa fa-envelope"></span>
							</div>
							<div class="ml-3">
								<p class="m-0 text-uppercase font-weight-bold" style="font-size: 11px; color: #64748b; letter-spacing: 1px;">Email Me Directly</p>
								<h3 class="m-0" style="color: #1e293b; font-size: 16px; font-weight: 700;">tejaswikumar804@gmail.com</h3>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Featured Projects Section (Mapped from Resume) -->
	<section class="features_area">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8 text-center">
					<div class="main_title">
						<h2>Featured Project Engineering</h2>
						<p>
							A look into some of the comprehensive web applications and enterprise tools I have engineered.
						</p>
					</div>
				</div>
			</div>
			<div class="row feature_inner">
				<div class="col-lg-4 col-md-6">
					<div class="feature_item">
						<div class="mb-3" style="font-size: 32px;">🧠</div>
						<h4>AI Skill Development Platform</h4>
						<p>MERN stack application deploying secure JWT tokens, internal real-time messaging, video conference nodes, and an executive multi-tier assessment quiz system.</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="feature_item">
						<div class="mb-3" style="font-size: 32px;">🌱</div>
						<h4>Mental Health & AI Platform</h4>
						<p>Full-stack dashboard tracking user wellbeing metrics powered by integrated Gemini API endpoints for custom dynamic analytics and curated secure community channels.</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-12">
					<div class="feature_item">
						<div class="mb-3" style="font-size: 32px;">📊</div>
						<h4>Data Visualization Engine</h4>
						<p>Engineered during my tenure at Tata Steel utilizing Chart.js and raw JavaScript engines to instantly visualize operational industrial blast furnace telemetry coordinates seamlessly.</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Testimonial Section -->
	<div class="testimonial_area section_gap_bottom mt-5">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8 text-center">
					<div class="main_title">
						<h2>Hackathons & Credentials</h2>
						<p>Recognitions, tournament results, and certified track highlights</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="testi_slider owl-carousel">
        			<div class="testi_item">
        				<div class="row align-items-center">
        					<div class="col-lg-12">
        						<div class="testi_text text-center">
        							<h4>TEMENOS TEM-E-THON Finalist</h4>
									<p>"Selected to the Top 24 national final prototyping arena representing Team FutureMind at Anna University, Chennai."</p>
        						</div>
        					</div>
        				</div>
        			</div>
        			<div class="testi_item">
        				<div class="row align-items-center">
        					<div class="col-lg-12">
        						<div class="testi_text text-center">
        							<h4>Software Engineer Intern Cert</h4>
									<p>"Verified assessment validation clearing the core engineering tracks via HackerRank benchmarks."</p>
        						</div>
        					</div>
        				</div>
        			</div>
        		</div>
			</div>
		</div>
	</div>

	<%@include file="footer.jsp" %>

    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/popper.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/stellar.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendors/isotope/imagesloaded.pkgd.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendors/isotope/isotope-min.js"></script>
	<script src="${pageContext.request.contextPath}/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.ajaxchimp.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/mail-script.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="${pageContext.request.contextPath}/js/gmaps.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/theme.js"></script>
</body>

</html>