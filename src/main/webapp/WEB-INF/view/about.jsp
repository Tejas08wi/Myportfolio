<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link class="icon" href="${pageContext.request.contextPath}/img/favicon.png" type="image/png">
	<title>About Tejaswi Kumar</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/linericon/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/owl-carousel/owl.carousel.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/magnific-popup.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/nice-select/css/nice-select.css">
	<!-- main css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

	<!-- Modern UX Style Overrides for Consistent Presentation -->
	<style>
		body {
			font-family: 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
			color: #444444;
		}
		.banner_area {
			background: linear-gradient(135deg, #1e293b 0%, #0f172a 100%);
			padding: 80px 0;
			color: #ffffff;
		}
		.banner_content h2 {
			font-size: 38px;
			font-weight: 700;
			color: #ffffff;
			margin-bottom: 10px;
		}
		.page_link a {
			color: #38bdf8 !important;
			margin: 0 10px;
			font-weight: 500;
			text-decoration: none;
		}
		.section_gap { padding: 90px 0; }
		.section_gap_bottom { padding-bottom: 90px; }
		.main_title h2 {
			font-size: 36px;
			font-weight: 700;
			color: #1e293b;
			line-height: 1.3;
			margin-bottom: 20px;
		}
		.main_title p {
			color: #64748b;
			font-size: 15px;
			line-height: 1.7;
			margin-bottom: 20px;
		}
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
		}
		.primary_btn:hover {
			background: #357abd;
			border-color: #357abd;
			transform: translateY(-2px);
			text-decoration: none;
		}
		.single-brand-item {
			background: #ffffff;
			border: 1px solid #e2e8f0;
			height: 90px;
			margin-bottom: 20px;
			border-radius: 8px;
			display: flex;
			align-items: center;
			justify-content: center;
			font-weight: 600;
			color: #64748b;
			transition: all 0.3s ease;
		}
		.single-brand-item:hover {
			border-color: #4a90e2;
			color: #4a90e2;
			box-shadow: 0 5px 15px rgba(0,0,0,0.05);
		}
		.client-info {
			background: #ffffff;
			padding: 40px;
			border-radius: 16px;
			box-shadow: 0 10px 30px rgba(0,0,0,0.04);
			border: 1px solid #edf2f7;
		}
		.client-info .lage {
			font-size: 64px;
			font-weight: 800;
			color: #4a90e2;
			line-height: 1;
			margin-right: 15px;
		}
		.client-info .smll {
			font-size: 15px;
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
		.call-now .fa-envelope {
			font-size: 24px;
			color: #4a90e2;
			margin-right: 15px;
		}
		.testi_item {
			background: #ffffff;
			padding: 35px;
			border-radius: 12px;
			box-shadow: 0 5px 20px rgba(0,0,0,0.03);
			border: 1px solid #edf2f7;
			margin: 15px;
		}
		.testi_text h4 {
			font-size: 16px;
			font-weight: 600;
			color: #1e293b;
			margin-bottom: 8px;
		}
		.testi_text p {
			font-size: 14px;
			color: #64748b;
			line-height: 1.6;
		}
	</style>
</head>

<body>

	<!--================ Start Header Area =================-->
	<%@include file="header.jsp" %>
	<!--================ End Header Area =================-->

    <!--================ Start Banner Area =================-->
    <section class="banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="container">
                <div class="banner_content text-center">
                    <h2>About Me</h2>
                    <div class="page_link">
                        <a href="${pageContext.request.contextPath}/client/home">Home</a>
                        <a href="${pageContext.request.contextPath}/client/about">About</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================ End Banner Area =================-->
    
   <!--================ Start About Us Area =================-->
	<section class="about_area section_gap">
        <div class="container">
            <div class="row justify-content-start align-items-center">
                <div class="col-lg-5">
                    <div class="about_img">
                        <img src="${pageContext.request.contextPath}/img/about-us.png" alt="Tejaswi Kumar">
                    </div>
                </div>

                <div class="offset-lg-1 col-lg-5">
                    <div class="main_title text-left">
                        <h2>Let’s <br> Introduce <br> Myself</h2>
                        <p>
                            I am <strong>Tejaswi Kumar</strong>, a Computer Science and Engineering student at Kalinga Institute of Industrial Technology. I specialize in core Java engineering and building comprehensive, secure web solutions using the MERN and full-stack software development environments.
                        </p>
                        <p>
                            With experience optimization extending from data tracking configurations built for Tata Steel to implementing customized AI assessment engines utilizing the Gemini API ecosystem, I focus on creating clean, maintainable, and highly functional codebases.
                        </p>
                        <a class="primary_btn" href="${pageContext.request.contextPath}/Resume_22052865.pdf" target="_blank"><span>Download CV</span></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================ End About Us Area =================-->

	<!--================ Start Tech Competencies Area =================-->
	<section class="brand_area section_gap_bottom">
        <div class="container">
            <div class="row justify-content-center align-items-center">
                <div class="col-lg-6">
                    <div class="row">
                        <!-- Technical Language & Stack Competencies from Resume -->
                        <div class="col-lg-4 col-md-4 col-sm-6 col-6">
                            <div class="single-brand-item">Java</div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6 col-6">
                            <div class="single-brand-item">JavaScript</div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6 col-6">
                            <div class="single-brand-item">React.js</div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6 col-6">
                            <div class="single-brand-item">Node.js</div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6 col-6">
                            <div class="single-brand-item">MongoDB</div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6 col-6">
                            <div class="single-brand-item">SQL</div>
                        </div>
                    </div>
                </div>
                <div class="offset-lg-1 col-lg-5 col-md-6 mt-4 mt-md-0">
                    <div class="client-info">
                        <div class="d-flex align-items-center mb-4">
                            <span class="lage">300+</span>
                            <span class="smll">Algorithmic Problems<br>Solved on LeetCode</span>
                        </div>
                        <div class="call-now d-flex">
                            <div>
                                <span class="fa fa-envelope"></span>
                            </div>
                            <div class="ml-3">
                                <p class="m-0 text-uppercase font-weight-bold" style="font-size: 11px; color: #64748b; letter-spacing: 1px;">Get in Touch</p>
                                <h3 class="m-0" style="color: #1e293b; font-size: 16px; font-weight: 700;">tejaswikumar804@gmail.com</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================ End Brand Area =================-->

	<!--================ Start Achievements Area =================-->
	<div class="testimonial_area section_gap_bottom">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8 text-center">
                    <div class="main_title">
                        <h2>Milestones & Credentials</h2>
                        <p>Key highlights from competitive hacking arenas and industry validations</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="testi_slider owl-carousel">
                    <div class="testi_item">
                        <div class="row align-items-center">
                            <div class="col-lg-12">
                                <div class="testi_text text-center">
                                    <h4>TEMENOS TEM-E-THON 2025 Finalist</h4>
                                    <p>"Selected into the nationwide Top 24 prototyping group challenge held at Anna University, Chennai, representing Team FutureMind."</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="testi_item">
                        <div class="row align-items-center">
                            <div class="col-lg-12">
                                <div class="testi_text text-center">
                                    <h4>Tata Steel — Web Development Track</h4>
                                    <p>"Engineered real-time browser-based tools using HTML, CSS, JavaScript, and Chart.js to render complex operational blast furnace parameters securely."</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="testi_item">
                        <div class="row align-items-center">
                            <div class="col-lg-12">
                                <div class="testi_text text-center">
                                    <h4>HackerRank Certified Software Engineer Intern</h4>
                                    <p>"Passed formal capability matrices tracking structural efficiency and engineering problem-solving approaches."</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--================ End Testimonial Area =================-->
 
    <!--================Footer Area =================-->
	<%@include file="footer.jsp" %>
    <!--================End Footer Area =================-->
    
    <!-- Optional JavaScript -->
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