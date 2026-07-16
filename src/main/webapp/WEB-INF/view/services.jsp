<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="${pageContext.request.contextPath}/img/favicon.png" type="image/png">
	<title>Services | Tejaswi Kumar</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/linericon/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/owl-carousel/owl.carousel.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/magnific-popup.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/nice-select/css/nice-select.css">
	<!-- main css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

	<!-- Modern UX / Premium Custom Styling -->
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
		
		.section_gap_top { padding-top: 90px; }
		.section_gap_bottom { padding-bottom: 90px; }
		
		.main_title h2 {
			font-size: 36px;
			font-weight: 700;
			color: #1e293b;
			margin-bottom: 20px;
			text-transform: capitalize;
		}
		
		.main_title p {
			color: #64748b;
			font-size: 15px;
			line-height: 1.7;
		}

		.features_area {
			background-color: #f8fafc;
			padding-bottom: 90px;
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
			height: calc(100% - 30px); /* Keeps all cards aligned perfectly in a row */
			display: flex;
			flex-direction: column;
		}
		
		.feature_item:hover {
			transform: translateY(-8px);
			box-shadow: 0 15px 30px rgba(0,0,0,0.08);
			border-color: #4a90e2;
		}
		
		.image_wrapper {
			height: 80px;
			display: flex;
			align-items: center;
			justify-content: center;
			margin-bottom: 25px;
		}

		.feature_item img {
			max-height: 100%;
			width: auto;
			object-fit: contain;
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
			flex-grow: 1;
		}
		
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
                    <h2>Services</h2>
                    <div class="page_link">
                        <a href="${pageContext.request.contextPath}/client/home">Home</a>
                        <a href="${pageContext.request.contextPath}/client/services">Services</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================ End Banner Area =================-->

	<!--================ Start Features Area =================-->
	<section class="features_area section_gap_top">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8 text-center">
                    <div class="main_title">
                        <h2>Services Offered</h2>
                        <p>
                            Explore full-stack software development solutions crafted to match technical performance with high efficiency.
                        </p>
                    </div>
                </div>
            </div>
            
            <div class="row feature_inner">
                <!-- Original dynamic JSTL Loop for customized cards -->
                <c:forEach var="service" items="${listOfServices}">
	                <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
	                    <div class="feature_item">
	                        <div class="image_wrapper">
	                            <img src="${pageContext.request.contextPath}/img/services/${service.filename}" alt="${service.title}">
	                        </div>
	                        <h4>${service.title}</h4>
	                        <p>${service.description}</p>
	                    </div>
	                </div>
                </c:forEach>
            </div>
        </div>
    </section>
    <!--================ End Features Area =================-->

	<!--================ Start Recommendations Area =================-->
	<div class="testimonial_area section_gap_bottom mt-5">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8 text-center">
                    <div class="main_title">
                        <h2>Recommendations & Endorsements</h2>
                        <p>Feedback and insights from industry mentors and project collaborators</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="testi_slider owl-carousel">
                    
                    <!-- Recommendation 1: Internship Mentor -->
                    <div class="testi_item">
                        <div class="row align-items-center">
                            <div class="col-lg-12">
                                <div class="testi_text text-center">
                                    <h4>Project Mentor</h4>
                                    <p style="font-size: 13px; color: #64748b; margin-bottom: 8px;">Tata Steel | Web Development Division</p>
                                    <p class="m-0">"Tejaswi demonstrated excellent problem-solving skills while developing our data visualization tools. His ability to interpret complex operational blast furnace parameters and turn them into clean, interactive charts significantly aided our analysis workflow."</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Recommendation 2: Hackathon Project Teammate -->
                    <div class="testi_item">
                        <div class="row align-items-center">
                            <div class="col-lg-12">
                                <div class="testi_text text-center">
                                    <h4>Hackathon Colleague</h4>
                                    <p style="font-size: 13px; color: #64748b; margin-bottom: 8px;">Team FutureMind | TEMENOS TEM-E-THON 2025</p>
                                    <p class="m-0">"Working alongside Tejaswi during the national final prototype round was an incredible experience. He brought strong technical competency to the stack, particularly in structuring robust APIs and handling core engineering logic under tight hackathon deadlines."</p>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
	<!--================ End Recommendations Area =================-->
   
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
    <script src="${pageContext.request.contextPath}/js/gmaps.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/theme.js"></script>
</body>

</html>