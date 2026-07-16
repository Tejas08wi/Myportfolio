<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard</title>
<style>
	* {
		box-sizing: border-box;
		margin: 0;
		padding: 0;
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	}

	body {
		background-color: #f4f6f9;
		display: flex;
		min-height: 100vh;
		color: #333333;
	}

	/* Navigation Sidebar Architecture */
	.sidebar {
		width: 260px;
		background-color: #1e293b; /* Deep premium navy slate blue */
		color: #f8fafc;
		display: flex;
		flex-direction: column;
		position: fixed;
		height: 100vh;
		box-shadow: 4px 0 15px rgba(0, 0, 0, 0.05);
		z-index: 100;
	}

	.sidebar-header {
		padding: 24px 20px;
		background-color: #0f172a; /* Strong sleek dark header accent */
		text-align: center;
		border-bottom: 1px solid #334155;
	}

	.sidebar-header h1 {
		font-size: 18px;
		font-weight: 700;
		letter-spacing: 1.5px;
		color: #38bdf8; /* Modern blue feature text neon glow accent */
	}

	.sidebar-menu {
		list-style: none;
		padding: 24px 0;
		flex-grow: 1;
	}

	.sidebar-menu a {
		display: flex;
		align-items: center;
		padding: 14px 24px;
		color: #94a3b8;
		text-decoration: none;
		font-size: 15px;
		font-weight: 500;
		transition: all 0.2s ease;
		border-left: 4px solid transparent;
	}

	.sidebar-menu a:hover {
		color: #ffffff;
		background-color: #334155;
		border-left-color: #38bdf8;
	}

	.sidebar-menu a span.menu-icon {
		margin-right: 12px;
		font-size: 16px;
	}

	.logout-form {
		padding: 20px;
		background-color: #0f172a;
		border-top: 1px solid #334155;
	}

	.btn-logout {
		width: 100%;
		padding: 12px;
		background-color: #ef4444;
		color: white;
		border: none;
		border-radius: 6px;
		font-size: 14px;
		font-weight: 600;
		cursor: pointer;
		transition: background-color 0.2s ease;
	}

	.btn-logout:hover {
		background-color: #dc2626;
	}

	/* Main Central Dashboard Canvas Area */
	.main-content {
		margin-left: 260px;
		padding: 40px;
		width: calc(100% - 260px);
		background-color: #f8fafc;
	}

	/* Top Header Bar */
	.header-container {
		display: flex;
		justify-content: space-between;
		align-items: center;
		background-color: #ffffff;
		padding: 20px 32px;
		border-radius: 12px;
		box-shadow: 0 1px 3px rgba(0, 0, 0, 0.05);
		margin-bottom: 32px;
		border: 1px solid #e2e8f0;
	}

	.header-container h2 {
		font-size: 22px;
		font-weight: 600;
		color: #1e293b;
	}

	.btn-password {
		padding: 10px 18px;
		background-color: #0284c7;
		color: white;
		border: none;
		border-radius: 6px;
		font-size: 14px;
		font-weight: 600;
		cursor: pointer;
		text-decoration: none;
		display: inline-flex;
		align-items: center;
		gap: 8px;
		transition: background-color 0.2s ease;
	}

	.btn-password:hover {
		background-color: #0369a1;
	}

	/* NEW: Analytical Dynamic Summary Cards Grid */
	.metrics-grid {
		display: grid;
		grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
		gap: 24px;
		margin-bottom: 32px;
	}

	.metric-card {
		background: #ffffff;
		padding: 24px;
		border-radius: 12px;
		box-shadow: 0 1px 3px rgba(0, 0, 0, 0.05);
		border: 1px solid #e2e8f0;
		display: flex;
		align-items: center;
		justify-content: space-between;
	}

	.metric-info h4 {
		font-size: 13px;
		text-transform: uppercase;
		color: #64748b;
		letter-spacing: 0.5px;
		margin-bottom: 6px;
	}

	.metric-info p {
		font-size: 24px;
		font-weight: 700;
		color: #1e293b;
	}

	.metric-badge {
		width: 48px;
		height: 48px;
		border-radius: 8px;
		display: flex;
		align-items: center;
		justify-content: center;
		font-size: 20px;
	}

	.badge-blue { background-color: #e0f2fe; color: #0369a1; }
	.badge-green { background-color: #dcfce7; color: #15803d; }
	.badge-purple { background-color: #f3e8ff; color: #6b21a8; }

	/* General Content Overview Presentation Block */
	.welcome-card {
		background-color: #ffffff;
		padding: 32px;
		border-radius: 12px;
		box-shadow: 0 1px 3px rgba(0, 0, 0, 0.05);
		border: 1px solid #e2e8f0;
	}

	.welcome-card h3 {
		color: #1e293b;
		font-size: 18px;
		font-weight: 600;
		margin-bottom: 12px;
	}

	.welcome-card p {
		font-size: 15px;
		color: #64748b;
		line-height: 1.6;
	}

	/* Responsive System Breakpoints */
	@media (max-width: 992px) {
		body {
			flex-direction: column;
		}
		.sidebar {
			position: relative;
			width: 100%;
			height: auto;
		}
		.main-content {
			margin-left: 0;
			width: 100%;
			padding: 24px;
		}
		.header-container {
			flex-direction: column;
			gap: 16px;
			text-align: center;
		}
	}
</style>
</head>
<body>

	<!-- Navigation Sidebar Frame Layout -->
	<div class="sidebar">
		<div class="sidebar-header">
			<h1>CONTROL CENTER</h1>
		</div>
		
		<nav class="sidebar-menu">
			<!-- Cleaned Links using Modern Emojis as Clean Visual Component Icons -->
			<a href="${pageContext.request.contextPath}/client/home"><span class="menu-icon">🌐</span> Client Home</a>
			<a href="${pageContext.request.contextPath}/admin/readAllContacts"><span class="menu-icon">📩</span> Read All Contacts</a>
			<a href="${pageContext.request.contextPath}/admin/addService"><span class="menu-icon">✨</span> Add New Service</a>
			<a href="${pageContext.request.contextPath}/admin/readAllServices"><span class="menu-icon">🛠️</span> Read All Services</a>
			<a href="${pageContext.request.contextPath}/admin/uploadResume"><span class="menu-icon">📄</span> Upload Resume</a>
			<a href="${pageContext.request.contextPath}/admin/uploadImage"><span class="menu-icon">📷</span> Upload Image</a>
		</nav>

		<!-- Original Secure Logout Form Process Trigger Box -->
		<form class="logout-form" action="${pageContext.request.contextPath}/logout" method="post">
			<button type="submit" class="btn-logout">Logout</button>
		</form>
	</div>

	<!-- Main Panel Workspace Canvas Area -->
	<div class="main-content">
		<div class="header-container">
			<h2>Welcome back, ${username} 👋</h2>
			
			<!-- Original Password Mutation Request Target Wrapper -->
			<a href="${pageContext.request.contextPath}/admin/changePassword" class="btn-password">
				🔒 Change Password
			</a>
		</div>

		<!-- NEW VISUAL ELEMENT: Dynamic Overview Metric Analytics Card Grids -->
		<div class="metrics-grid">
			<div class="metric-card">
				<div class="metric-info">
					<h4>Messages</h4>
					<p>Inbound</p>
				</div>
				<div class="metric-badge badge-blue">📩</div>
			</div>
			
			<div class="metric-card">
				<div class="metric-info">
					<h4>Services</h4>
					<p>Active</p>
				</div>
				<div class="metric-badge badge-green">💼</div>
			</div>
			
			<div class="metric-card">
				<div class="metric-info">
					<h4>Storage</h4>
					<p>Media Files</p>
				</div>
				<div class="metric-badge badge-purple">📁</div>
			</div>
		</div>

		<div class="welcome-card">
			<h3>System Overview Workspace</h3>
			<p>Welcome to your central administration workspace environment. Use the navigation panels flanking the left side of your viewport interface console layout to easily adjust system services details, evaluate customer outreach tickets, or update cloud attachment document nodes across your platform system stack instantly.</p>
		</div>
	</div>

</body>
</html>