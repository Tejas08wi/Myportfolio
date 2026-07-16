<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Read All Contacts</title>
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
	}

	.nav-link {
		color: #4a90e2;
		text-decoration: none;
		font-size: 14px;
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
		margin-bottom: 24px;
	}

	/* Table Architecture */
	.table-wrapper {
		background: #ffffff;
		border-radius: 8px;
		box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
		overflow-x: auto; /* Enables horizontal scrolling on small screens */
	}

	table {
		width: 100%;
		border-collapse: collapse;
		text-align: left;
		font-size: 15px;
	}

	th {
		background-color: #2c3e50;
		color: #ffffff;
		padding: 16px;
		font-weight: 600;
	}

	td {
		padding: 16px;
		border-bottom: 1px solid #eeeeee;
		vertical-align: top;
		line-height: 1.5;
	}

	tr:hover {
		background-color: #f8f9fa;
	}

	/* Message column restraint so long text doesn't break the layout */
	.message-cell {
		max-width: 300px;
		word-wrap: break-word;
		color: #555555;
	}

	.timestamp {
		font-size: 13px;
		color: #888888;
		white-space: nowrap;
	}

	/* Action Buttons */
	.btn-delete {
		display: inline-block;
		padding: 6px 12px;
		background-color: #e74c3c;
		color: white;
		text-decoration: none;
		border-radius: 4px;
		font-size: 13px;
		font-weight: 600;
		transition: background-color 0.3s ease;
	}

	.btn-delete:hover {
		background-color: #c0392b;
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

		<h1>Read All Contacts</h1>

		<div class="table-wrapper">
			<table>
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Email</th>
						<th>Subject</th>
						<th>Message</th>
						<th>Date & Time</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<%-- Original JSTL Loop & Logic --%>
					<c:forEach var="contact" items="${contactData}">
						<tr>
							<td><strong>${contact.id}</strong></td>
							<td>${contact.name}</td>
							<td><a href="mailto:${contact.email}" style="color: #4a90e2; text-decoration: none;">${contact.email}</a></td>
							<td><strong>${contact.subject}</strong></td>
							<td class="message-cell">${contact.message}</td>
							<td class="timestamp">${contact.datetime}</td>
							<td>
								<!-- Original Delete Path with ID Query Parameter -->
								<a class="btn-delete" href="${pageContext.request.contextPath}/admin/deleteContactById?id=${contact.id}">
									Delete
								</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</body>
</html>