<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Upload Resume</title>
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

	/* Modern Document Upload Zone Styling */
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

	/* When a file is selected, we add this class via JavaScript to turn the box green */
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
		opacity: 0; /* Invisible but clickable over the entire zone */
		cursor: pointer;
	}

	.dropzone-icon {
		font-size: 40px;
		color: #a0aec0;
		margin-bottom: 10px;
		transition: transform 0.3s ease;
	}

	.dropzone-text {
		font-size: 15px;
		color: #4a5568;
		font-weight: 500;
		word-break: break-all; /* Prevents long filenames from breaking card layout */
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
			<h2>Upload Resume</h2>

			<!-- Original ${result} attribute safely wrapped in a clean alert box -->
			<div class="status-message">${result}</div>

			<!-- Original Form Structure, Actions, and Input Names -->
			<form action="uploadResume" method="post" enctype="multipart/form-data">
				
				<div class="form-group">
					<!-- Added IDs here so JavaScript can easily talk to them -->
					<div class="file-dropzone" id="dropzone">
						<input type="file" name="resume" id="fileInput" required>
						
						<div class="dropzone-icon" id="icon">📄</div>
						<div class="dropzone-text" id="textElement">Click to choose document file</div>
						<div class="dropzone-hint" id="hintElement">Recommended formats: PDF, DOC, or DOCX</div>
					</div>
				</div>

				<button type="submit">Upload & Save</button>
			</form>
		</div>
	</div>

	<!-- Tiny JavaScript handler to show the file name instantly upon selection -->
	<script>
		const fileInput = document.getElementById('fileInput');
		const dropzone = document.getElementById('dropzone');
		const textElement = document.getElementById('textElement');
		const icon = document.getElementById('icon');
		const hintElement = document.getElementById('hintElement');

		fileInput.addEventListener('change', function() {
			if (this.files && this.files.length > 0) {
				// Grab the name of the file selected
				const fileName = this.files[0].name;
				
				// Update UI text and styles to confirm selection
				textElement.innerHTML = "<strong>Selected:</strong> " + fileName;
				icon.innerText = "✅"; 
				hintElement.innerText = "Ready to save!";
				dropzone.classList.add('file-selected');
			} else {
				// Reset if they clear it
				textElement.innerText = "Click to choose document file";
				icon.innerText = "📄";
				hintElement.innerText = "Recommended formats: PDF, DOC, or DOCX";
				dropzone.classList.remove('file-selected');
			}
		});
	</script>

</body>
</html>