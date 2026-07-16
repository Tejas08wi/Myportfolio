<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Upload Image</title>
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
		max-width: 500px;
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
	.upload-card {
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
		text-align: center;
	}

	/* Result Alert Box styling - stays hidden if empty */
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
		margin-bottom: 24px;
	}

	/* Modern File Dropzone Styling */
	.file-dropzone {
		position: relative;
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
		padding: 40px 20px;
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

	/* When an image file is selected, Javascript adds this class */
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
		opacity: 0; /* Hidden but clickable */
		cursor: pointer;
	}

	.dropzone-icon {
		font-size: 40px;
		color: #a0aec0;
		margin-bottom: 10px;
	}

	.dropzone-text {
		font-size: 15px;
		color: #4a5568;
		font-weight: 500;
		word-break: break-all;
		padding: 0 10px;
	}

	.dropzone-hint {
		font-size: 12px;
		color: #718096;
		margin-top: 6px;
	}

	/* Action Button */
	button[type="submit"] {
		width: 100%;
		padding: 14px;
		background-color: #4a90e2;
		color: white;
		border: none;
		border-radius: 6px;
		font-size: 16px;
		font-weight: 600;
		cursor: pointer;
		transition: background-color 0.3s ease;
	}

	button[type="submit"]:hover {
		background-color: #357abd;
	}
</style>
</head>
<body>

	<div class="container">
		<!-- Original Navigation Paths -->
		<div class="nav-links">
			<a class="nav-link" href="${pageContext.request.contextPath}/client/home">Client Home</a>
			<span>|</span>
			<a class="nav-link" href="${pageContext.request.contextPath}/admin/home">Admin Home</a>
		</div>

		<div class="upload-card">
			<h2>Upload Image Gallery</h2>

			<!-- Original ${result} attribute wrapped in an elegant notification banner -->
			<div class="status-message">${result}</div>

			<!-- Original Form Configuration, Actions, and Element Names -->
			<form action="uploadImage" method="post" enctype="multipart/form-data">
				
				<div class="form-group">
					<!-- Added IDs so Javascript can target the elements -->
					<div class="file-dropzone" id="dropzone">
						<input type="file" name="image" id="fileInput" required>
						
						<div class="dropzone-icon" id="icon">📷</div>
						<div class="dropzone-text" id="textElement">Click to browse your images</div>
						<div class="dropzone-hint" id="hintElement">Supports PNG, JPG, or JPEG formats</div>
					</div>
				</div>

				<button type="submit">Upload & Save</button>
			</form>
		</div>
	</div>

	<!-- JavaScript handler to provide instant file name selection feedback -->
	<script>
		const fileInput = document.getElementById('fileInput');
		const dropzone = document.getElementById('dropzone');
		const textElement = document.getElementById('textElement');
		const icon = document.getElementById('icon');
		const hintElement = document.getElementById('hintElement');

		fileInput.addEventListener('change', function() {
			if (this.files && this.files.length > 0) {
				const fileName = this.files[0].name;
				
				// Update UI content to showcase file metadata details
				textElement.innerHTML = "<strong>Selected image:</strong> " + fileName;
				icon.innerText = "✨"; // Sparks up the visual icon marker
				hintElement.innerText = "Looks perfect, ready to drop!";
				dropzone.classList.add('file-selected');
			} else {
				// Revert fallback defaults if field cleared
				textElement.innerText = "Click to browse your images";
				icon.innerText = "📷";
				hintElement.innerText = "Supports PNG, JPG, or JPEG formats";
				dropzone.classList.remove('file-selected');
			}
		});
	</script>

</body>
</html>