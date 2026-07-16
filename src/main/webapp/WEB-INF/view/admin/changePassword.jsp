<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Change Password</title>
<style>
	* {
		box-sizing: border-box;
		margin: 0;
		padding: 0;
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	}

	body {
		background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
		height: 100vh;
		display: flex;
		justify-content: center;
		align-items: center;
	}

	.password-container {
		background: #ffffff;
		padding: 40px;
		border-radius: 10px;
		box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
		width: 100%;
		max-width: 400px;
	}

	h2 {
		color: #333333;
		margin-bottom: 24px;
		text-align: center;
		font-size: 26px;
		font-weight: 600;
	}

	.alert-message {
		padding: 12px;
		border-radius: 6px;
		margin-bottom: 20px;
		font-size: 14px;
		text-align: center;
	}

	.alert-success {
		background-color: #d4edda;
		color: #155724;
		border: 1px solid #c3e6cb;
	}

	.alert-error {
		background-color: #f8d7da;
		color: #721c24;
		border: 1px solid #f5c6cb;
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

	input[type="password"] {
		width: 100%;
		padding: 14px;
		border: 1px solid #cccccc;
		border-radius: 6px;
		font-size: 16px;
		transition: all 0.3s ease;
		outline: none;
	}

	input[type="password"]:focus {
		border-color: #4a90e2;
		box-shadow: 0 0 0 3px rgba(74, 144, 226, 0.2);
	}

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
		margin-top: 10px;
	}

	button[type="submit"]:hover {
		background-color: #357abd;
	}
</style>
</head>
<body>

	<div class="password-container">
		<h2>Change Password</h2>

		<%-- Original Success/Error Message Logic --%>
		<%
		if (request.getParameter("success") != null) {
		%>
			<div class="alert-message alert-success">
				Password Updated Successfully.
			</div>
		<%
		}
		%>

		<%
		if (request.getParameter("error") != null) {
		%>
			<div class="alert-message alert-error">
				Old Password is Incorrect.
			</div>
		<%
		}
		%>

		<%-- Original Form Logic, Action & Field Names --%>
		<form action="${pageContext.request.contextPath}/admin/changePassword" method="post">

			<div class="form-group">
				<label for="oldPassword">Old Password</label>
				<input type="password" id="oldPassword" name="oldPassword" required>
			</div>
			
			<div class="form-group">
				<label for="newPassword">New Password</label>
				<input type="password" id="newPassword" name="newPassword" required>
			</div>

			<button type="submit">Change Password</button>

		</form>
	</div>

</body>
</html>