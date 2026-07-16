<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sign Up</title>
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

	.signup-container {
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
		font-size: 28px;
		font-weight: 600;
	}

	.alert-message {
		padding: 12px;
		border-radius: 6px;
		margin-bottom: 20px;
		font-size: 14px;
		text-align: center;
	}

	.alert-error {
		background-color: #f8d7da;
		color: #721c24;
		border: 1px solid #f5c6cb;
	}

	.form-group {
		margin-bottom: 20px;
	}

	input[type="text"],
	input[type="password"] {
		width: 100%;
		padding: 14px;
		border: 1px solid #cccccc;
		border-radius: 6px;
		font-size: 16px;
		transition: all 0.3s ease;
		outline: none;
	}

	input[type="text"]:focus,
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
	}

	button[type="submit"]:hover {
		background-color: #357abd;
	}

	.login-link {
		display: block;
		text-align: center;
		margin-top: 24px;
		color: #4a90e2;
		text-decoration: none;
		font-size: 14px;
		transition: color 0.3s ease;
	}

	.login-link:hover {
		color: #2a5a8f;
		text-decoration: underline;
	}
</style>
</head>
<body>

	<div class="signup-container">
		
		<%-- Original Error Message Logic --%>
		<%
		if(request.getParameter("error") != null){
		%>
			<div class="alert-message alert-error">
				Username already exists.
			</div>
		<%
		}
		%>
		
		<h2>Create New Account</h2>

		<%-- Original Form Logic, Action & Input Names --%>
		<form action="${pageContext.request.contextPath}/client/signup" method="post">

			<div class="form-group">
				<input type="text" name="username" placeholder="Enter Username" required> 
			</div>
			
			<div class="form-group">
				<input type="password" name="password" placeholder="Enter Password" required>
			</div>

			<button type="submit">Sign Up</button>

		</form>

		<%-- Original Link & Path --%>
		<a class="login-link" href="${pageContext.request.contextPath}/client/mylogin">
			Already have an account? Login 
		</a>
		
	</div>

</body>
</html>