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
	<title>Contact Us | Tejaswi Kumar</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/linericon/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/owl-carousel/owl.carousel.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/magnific-popup.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/vendors/nice-select/css/nice-select.css">
	<!-- main css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

	<!-- Modern UX / Premium Styling Overrides -->
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

		.banner_content h4 {
			font-size: 16px;
			color: #2ecc71;
			margin-top: 15px;
			font-weight: 600;
		}
		
		.page_link a {
			color: #38bdf8 !important;
			margin: 0 10px;
			font-weight: 500;
			text-decoration: none;
		}

		.section_gap {
			padding: 90px 0;
			background-color: #f8fafc;
		}

		.contact_info .info_item {
			position: relative;
			padding-left: 45px;
			margin-bottom: 30px;
		}

		.contact_info .info_item i {
			position: absolute;
			left: 0;
			top: 0;
			font-size: 24px;
			color: #4a90e2;
		}

		.contact_info .info_item h6 {
			font-size: 16px;
			font-weight: 600;
			color: #1e293b;
			margin-bottom: 4px;
		}

		.contact_info .info_item h6 a {
			color: #1e293b;
			transition: color 0.3s ease;
		}

		.contact_info .info_item h6 a:hover {
			color: #4a90e2;
			text-decoration: none;
		}

		.contact_info .info_item p {
			font-size: 14px;
			color: #64748b;
			margin: 0;
		}

		/* Form Styling Refinements */
		.form-control {
			border: 1px solid #e2e8f0;
			border-radius: 6px;
			padding: 12px 16px;
			height: auto;
			font-size: 15px;
			color: #333333;
			background: #ffffff;
			transition: all 0.3s ease;
		}

		.form-control:focus {
			border-color: #4a90e2;
			box-shadow: 0 0 0 3px rgba(74, 144, 226, 0.15);
		}

		textarea.form-control {
			height: 162px !important;
			resize: none;
		}

		.field-error {
			display: block;
			color: #e74c3c;
			font-size: 13px;
			font-weight: 500;
			margin-bottom: 6px;
			padding-left: 2px;
		}

		.primary_btn {
			display: inline-block;
			background: #4a90e2;
			color: #ffffff !important;
			padding: 12px 35px;
			border-radius: 30px;
			font-size: 14px;
			font-weight: 600;
			letter-spacing: 1px;
			text-transform: uppercase;
			transition: all 0.3s ease;
			border: 2px solid #4a90e2;
			box-shadow: 0 4px 15px rgba(74, 144, 226, 0.2);
			cursor: pointer;
		}

		.primary_btn:hover {
			background: #357abd;
			border-color: #357abd;
			transform: translateY(-2px);
			box-shadow: 0 6px 20px rgba(74, 144, 226, 0.3);
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
                    <h2>Contact Us</h2>
                    <h4>${result}</h4>
                    <div class="page_link">
                        <a href="${pageContext.request.contextPath}/client/home">Home</a>
                        <a href="${pageContext.request.contextPath}/client/contact">Contact</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================ End Banner Area =================-->
    
    <!--================Contact Area =================-->
    <section class="contact_area section_gap">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="contact_info">
                        <div class="info_item">
                            <i class="lnr lnr-home"></i>
                            <h6>Jamshedpur, India</h6>
                            <p>Jharkhand</p>
                        </div>
                        <div class="info_item">
                            <i class="lnr lnr-phone-handset"></i>
                            <h6><a href="tel:+917462919171">+91 7462919171</a></h6>
                            <p>Available for business inquiries</p>
                        </div>
                        <div class="info_item">
                            <i class="lnr lnr-envelope"></i>
                            <h6><a href="mailto:tejaswikumar804@gmail.com">tejaswikumar804@gmail.com</a></h6>
                            <p>Send us your query anytime!</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8">
                    <!-- Cleaned form tag with proper single mapping path -->
                    <form action="${pageContext.request.contextPath}/client/saveContact" method="post" class="row contact_form" id="contactForm" novalidate="novalidate">
                        <div class="col-md-6">
                        
                            <div class="form-group">
                                <!-- Original JSTL validation loop inside a specialized container field wrapper -->
                                <c:forEach var="err" items="${errors}">
                                    <c:if test="${err.field=='name'}"><span class="field-error">⚠️ ${err.defaultMessage}</span></c:if>
                                </c:forEach>
                                <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name">
                            </div>
                            
                            <div class="form-group">
                                <c:forEach var="err" items="${errors}">
                                    <c:if test="${err.field=='email'}"><span class="field-error">⚠️ ${err.defaultMessage}</span></c:if>
                                </c:forEach>
                                <input type="email" class="form-control" id="email" name="email" placeholder="Enter email address">
                            </div>
                            
                            <div class="form-group">
                                <c:forEach var="err" items="${errors}">
                                    <c:if test="${err.field=='subject'}"><span class="field-error">⚠️ ${err.defaultMessage}</span></c:if>
                                </c:forEach>
                                <input type="text" class="form-control" id="subject" name="subject" placeholder="Enter Subject">
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <c:forEach var="err" items="${errors}">
                                    <c:if test="${err.field=='message'}"><span class="field-error">⚠️ ${err.defaultMessage}</span></c:if>
                                </c:forEach>
                                <textarea class="form-control" name="message" id="message" rows="1" placeholder="Enter Message"></textarea>
                            </div>
                        </div>
                        <div class="col-md-12 text-right">
                            <button type="submit" class="primary_btn">
                                <span>Send Message</span>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
            
            <!-- Interactive Location Map -->
            <div class="mapBox_container my-5" style="width: 100%; height: 420px; border-radius: 12px; overflow: hidden; box-shadow: 0 4px 15px rgba(0,0,0,0.05);">
                <iframe 
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58836.76483561386!2d86.13941457498188!3d22.801648052140413!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39f5e3199af0ca75%3A0x6a9942f2db10037!2sJamshedpur%2C%20Jharkhand!5e0!3m2!1sen!2sin!4v1719680000000!5m2!1sen!2sin" 
                    width="100%" 
                    height="100%" 
                    style="border:0;" 
                    allowfullscreen="" 
                    loading="lazy" 
                    referrerpolicy="no-referrer-when-downgrade">
                </iframe>
            </div>
        </div>
    </section>
    <!--================Contact Area =================-->
        
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
    <!--gmaps Js-->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
    <script src="${pageContext.request.contextPath}/js/gmaps.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/theme.js"></script>
</body>

</html>