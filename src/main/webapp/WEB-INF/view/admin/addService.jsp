<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Service</title>
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

	/* Global Status/Result Messages Banner */
	.status-message {
		background-color: #e8f4fd;
		color: #1d6fa5;
		border: 1px solid #d0e7f8;
		padding: 12px;
		border-radius: 6px;
		margin-bottom: 24px;
		font-size: 14px;
		text-align: center;
	}
	
	.status-message:empty {
		display: none;
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

	/* Field Binding Inline Errors */
	.field-error {
		color: #e74c3c;
		font-size: 13px;
		margin-top: 6px;
		display: block;
		font-weight: 500;
	}

	/* Input Components Styling */
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
		resize: vertical;
	}

	input[type="text"]:focus,
	textarea:focus {
		border-color: #4a90e2;
		box-shadow: 0 0 0 3px rgba(74, 144, 226, 0.2);
	}

	/* Custom File Dropzone UI */
	.file-dropzone {
		position: relative;
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
		padding: 30px 20px;
		border: 2px dashed #b5c7d9;
		border-radius: 8px;
		background-color: #f8fafc;
		cursor: pointer;
		transition: all 0.3s ease;
		text-align: center;
	}

	.file-dropzone:hover {
		background-color: #f0f4f8;
		border-color: #4a90e2;
	}

	.file-dropzone.file-selected {
		border-color: #2ecc71;
		background-color: #f2fbf6;
	}

	.file-dropzone input[type="file"] {
		position: absolute;
		width: 100%;
		height: 100%;
		top: 0;
		left: 0;
		opacity: 0;
		cursor: pointer;
	}

	.dropzone-icon {
		font-size: 32px;
		color: #a0aec0;
		margin-bottom: 8px;
	}

	.dropzone-text {
		font-size: 14px;
		color: #4a5568;
		font-weight: 500;
		word-break: break-all;
	}

	/* Form Execution Action Button */
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
		<!-- Original Navigation Links Map -->
		<div class="nav-links">
			<a class="nav-link" href="${pageContext.request.contextPath}/client/home">Client Home</a>
			<span>|</span>
			<a class="nav-link" href="${pageContext.request.contextPath}/admin/home">Admin Home</a>
		</div>

		<div class="form-card">
			<h2>Add New Service</h2>

			<!-- Original Base Global Operation Target Result Notification Banner -->
			<div class="status-message">${result}</div>

			<!-- Original Action, Method, and Multi-part Request Data Encoding Wrapper -->
			<form action="${pageContext.request.contextPath}/admin/addService" method="post" enctype="multipart/form-data">
			
				<div class="form-group">
					<label for="title">Service Title</label>
					<input type="text" id="title" name="title" placeholder="Enter title">
					
					<!-- Original Dynamic Field Validator Binding loop logic -->
					<c:forEach var="err" items="${errors}">
						<c:if test="${err.field=='title'}">
							<span class="field-error">⚠️ ${err.defaultMessage}</span>
						</c:if>
					</c:forEach>
				</div>
				
				<div class="form-group">
					<label for="description">Service Description</label>
					<textarea id="description" name="description" placeholder="Enter description here..."></textarea>
					
					<!-- Original Dynamic Field Validator Binding loop logic -->
					<c:forEach var="err" items="${errors}">
						<c:if test="${err.field=='description'}">
							<span class="field-error">⚠️ ${err.defaultMessage}</span>
						</c:if>
					</c:forEach>
				</div>
				
				<div class="form-group">
					<label>Service Cover Image</label>
					
					<!-- Integrated interactive feedback dropzone container block element wrapper -->
					<div class="file-dropzone" id="dropzone">
						<input type="file" name="serviceFile" id="fileInput">
						<div class="dropzone-icon" id="icon">🖼️</div>
						<div class="dropzone-text" id="textElement">Click to upload banner photo</div>
					</div>
					
					<!-- Original Custom Backend Content Stream Failure string output block -->
					<c:if test="${not empty filerror}">
						<span class="field-error">⚠️ ${filerror}</span>
					</c:if>
				</div>

				<button type="submit">Save Service</button>
			</form>
		</div>
	</div>

	<!-- File input state listener to display filename and status updates instantly -->
	<script>
		const fileInput = document.getElementById('fileInput');
		const dropzone = document.getElementById('dropzone');
		const textElement = document.getElementById('textElement');
		const icon = document.getElementById('icon');

		fileInput.addEventListener('change', function() {
			if (this.files && this.files.length > 0) {
				textElement.innerHTML = "<strong>Selected:</strong> " + this.files[0].name;
				icon.innerText = "✅";
				dropzone.classList.add('file-selected');
			} else {
				textElement.innerText = "Click to upload banner photo";
				icon.innerText = "🖼️";
				dropzone.classList.remove('file-selected');
			}
		});
	</script>

</body>
</html>