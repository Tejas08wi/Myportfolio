<header class="header_area">
	<!-- Custom Inline Styles for Header Polish -->
	<style>
		.header_area {
			background: #ffffff;
			box-shadow: 0 4px 20px rgba(0, 0, 0, 0.05);
			position: sticky;
			top: 0;
			width: 100%;
			z-index: 9999;
			transition: all 0.3s ease;
		}

		.main_menu .navbar {
			padding: 15px 0;
			border: none;
		}

		/* Brand text layout matching the original logo style in image_cdeedb.png */
		.navbar-brand-text {
			font-family: 'Segoe UI', sans-serif;
			font-size: 26px;
			font-weight: 800;
			letter-spacing: 0.5px;
			color: #7c4dff; /* Purple theme color matching the graphic dot accent */
			text-transform: uppercase;
			text-decoration: none;
			display: inline-flex;
			align-items: center;
			position: relative;
		}

		.navbar-brand-text:hover {
			text-decoration: none;
			color: #673ab7;
		}

		/* Custom visual element to match the purple dot accent from image_cdeedb.png */
		.brand-dot {
			color: #a855f7;
			font-size: 32px;
			line-height: 0;
			position: absolute;
			right: -12px;
			top: 6px;
		}

		.menu_nav .nav-item {
			margin-right: 10px;
		}

		.menu_nav .nav-item:last-child {
			margin-right: 0;
		}

		.menu_nav .nav-item .nav-link {
			font-family: 'Segoe UI', sans-serif;
			font-size: 15px;
			font-weight: 600;
			color: #1e293b !important;
			padding: 8px 16px !important;
			border-radius: 20px;
			transition: all 0.2s ease;
		}

		.menu_nav .nav-item .nav-link:hover {
			color: #4a90e2 !important;
			background-color: #f0f7ff;
		}

		.navbar-toggler {
			border: none;
			padding: 5px;
			outline: none !important;
		}

		.navbar-toggler .icon-bar {
			display: block;
			width: 22px;
			height: 2px;
			background-color: #1e293b;
			margin: 4px 0;
			transition: all 0.2s;
		}
	</style>

	<div class="main_menu">
		<nav class="navbar navbar-expand-lg navbar-light">
			<div class="container">
				<!-- Changed from <img> tag to custom styled text for your name -->
				<a class="navbar-brand-text" href="${pageContext.request.contextPath}/client/home">
					TEJASWI<span class="brand-dot">.</span>
				</a>
				
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
				 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				
				<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
					<ul class="nav navbar-nav menu_nav justify-content-end ml-auto">
						<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/client/home">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/client/about">About</a></li>
						<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/client/services">Services</a></li>							
						<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/client/contact">Contact</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
</header>