<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update Service</title>
<style>
	* {
		box-sizing: border-box;
		margin: 0;
		padding: 0;
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	}

	body {
		background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
		min-height: 100vh;
		padding: 40px 20px;
		display: flex;
		flex-direction: column;
		align-items: center;
	}

	.container {
		width: 100%;
		max-width: 600px;
	}

	/* Navigation Links */
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

	/* Card Layout */
	.form-card {
		background: #ffffff;
		padding: 40px;
		border-radius: 10px;
		box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
	}

	h2 {
		color: #2c3e50;
		margin-bottom: 24px;
		font-size: 24px;
		font-weight: 600;
	}

	.form-group {
		margin-bottom: 20px;
	}

	label {
		display: block;
		margin-bottom: 8px;
		color: #555555;
		font-size: 14px;
		font-weight: 500;
	}

	/* Input Styling */
	input[type="text"],
	textarea {
		width: 100%;
		padding: 12px 14px;
		border: 1px solid #cccccc;
		border-radius: 6px;
		font-size: 15px;
		transition: all 0.3s ease;
		outline: none;
		color: #333333;
	}

	textarea {
		height: 120px;
		resize: vertical; /* Allows user to resize height safely */
	}

	input[type="text"]:focus,
	textarea:focus {
		border-color: #4a90e2;
		box-shadow: 0 0 0 3px rgba(74, 144, 226, 0.2);
	}

	/* Custom Styled File Input wrapper wrapper */
	input[type="file"] {
		width: 100%;
		padding: 10px;
		background: #f8f9fa;
		border: 1px dashed #cccccc;
		border-radius: 6px;
		cursor: pointer;
	}

	input[type="file"]:hover {
		background: #f1f3f5;
		border-color: #4a90e2;
	}

	/* Save Button */
	button[type="submit"] {
		width: 100%;
		padding: 14px;
		background-color: #2ecc71;
		color: white;
		border: none;
		border-radius: 6px;
		font-size: 16px;
		font-weight: 600;
		cursor: pointer;
		transition: background-color 0.3s ease;
		margin-top: 10px;
	}

	button[type="submit"]:hover {
		background-color: #27ae60;
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

		<div class="form-card">
			<h2>Update Service Details</h2>

			<form action="${pageContext.request.contextPath}/admin/updateService" method="post" enctype="multipart/form-data">
			
				<input type="hidden" name="id" value="${serviceData.id}">
				<input type="hidden" name="oldfilename" value="${serviceData.filename}">
			
				<div class="form-group">
					<label for="title">Service Title</label>
					<input type="text" id="title" name="title" placeholder="Enter title" value="${serviceData.title}" required>
				</div>
				
				<div class="form-group">
					<label for="description">Service Description</label>
					<textarea id="description" name="description" placeholder="Enter description details..." required>${serviceData.description}</textarea>
				</div>
				
				<div class="form-group">
					<label for="serviceFile">Update Image (Optional)</label>
					<input type="file" id="serviceFile" name="serviceFile">
				</div>

				<button type="submit">Save Changes</button>
			</form>
		</div>
	</div>

</body>
</html>