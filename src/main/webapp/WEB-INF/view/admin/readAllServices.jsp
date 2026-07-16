<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Read All Services</title>
<style>
	* {
		box-sizing: border-box;
		margin: 0;
		padding: 0;
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	}

	body {
		background-color: #f4f6f9;
		color: #333333;
		padding: 40px;
	}

	.container {
		max-width: 1200px;
		margin: 0 auto;
	}

	/* Top Navigation Links */
	.nav-links {
		margin-bottom: 24px;
		display: flex;
		gap: 15px;
		font-size: 14px;
	}

	.nav-link {
		color: #4a90e2;
		text-decoration: none;
		font-weight: 500;
		transition: color 0.3s ease;
	}

	.nav-link:hover {
		color: #2a5a8f;
		text-decoration: underline;
	}

	h1 {
		color: #2c3e50;
		font-size: 28px;
		font-weight: 600;
		margin-bottom: 30px;
	}

	/* Responsive Grid Layout */
	.services-grid {
		display: grid;
		grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
		gap: 30px;
	}

	/* Service Card Style */
	.service-card {
		background: #ffffff;
		border-radius: 8px;
		box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
		overflow: hidden;
		display: flex;
		flex-direction: column;
		transition: transform 0.3s ease, box-shadow 0.3s ease;
	}

	.service-card:hover {
		transform: translateY(-5px);
		box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
	}

	/* Optimized Image Styling */
	.image-wrapper {
		width: 100%;
		height: 200px;
		background-color: #eaeded;
		display: flex;
		align-items: center;
		justify-content: center;
		overflow: hidden;
	}

	.service-img {
		width: 100%;
		height: 100%;
		object-fit: cover; /* Keeps image aspect ratio beautiful without squeezing */
	}

	/* Content Structure inside Card */
	.card-content {
		padding: 20px;
		flex-grow: 1;
		display: flex;
		flex-direction: column;
	}

	h4 {
		color: #2c3e50;
		font-size: 18px;
		font-weight: 600;
		margin-bottom: 10px;
	}

	p {
		color: #666666;
		font-size: 14px;
		line-height: 1.6;
		margin-bottom: 20px;
		flex-grow: 1;
	}

	/* Action Container & Buttons */
	.card-actions {
		display: flex;
		gap: 10px;
		border-top: 1px solid #eeeeee;
		padding-top: 15px;
	}

	.btn {
		flex: 1;
		padding: 10px;
		text-align: center;
		text-decoration: none;
		font-size: 14px;
		font-weight: 600;
		border-radius: 4px;
		transition: background-color 0.3s ease;
	}

	.btn-update {
		background-color: #3498db;
		color: white;
	}

	.btn-update:hover {
		background-color: #2980b9;
	}

	.btn-delete {
		background-color: #e74c3c;
		color: white;
	}

	.btn-delete:hover {
		background-color: #c0392b;
	}
</style>
</head>
<body>

	<div class="container">
		<div class="nav-links">
			<a class="nav-link" href="${pageContext.request.contextPath}/client/home">Client Home</a>
			<span>|</span>
			<a class="nav-link" href="${pageContext.request.contextPath}/admin/home">Admin Home</a>
		</div>

		<h1>Read All Services</h1>

		<div class="services-grid">
			
			<%-- Original JSTL Loop & Logic --%>
			<c:forEach var="service" items="${listOfServices}">
				<div class="service-card">
					
					<div class="image-wrapper">
						<img class="service-img"
							src="${pageContext.request.contextPath}/img/services/${service.filename}"
							alt="${service.title}">
					</div>
					
					<div class="card-content">
						<h4>${service.title}</h4>
						<p>${service.description}</p>
						
						<div class="card-actions">
							<a class="btn btn-update" href="${pageContext.request.contextPath}/admin/updateService?id=${service.id}">
								Update
							</a>
							
							<a class="btn btn-delete" href="${pageContext.request.contextPath}/admin/deleteService?id=${service.id}&filename=${service.filename}">
								Delete
							</a>
						</div>
					</div>
					
				</div>
			</c:forEach>
			
		</div>
	</div>

</body>
</html>