<!--================Footer Area =================-->
<footer class="footer_area">
    <!-- Modern UX Footer Styling Block -->
    <style>
        .footer_area {
            background: #0f172a; /* Premium deep slate background to contrast the site layout */
            padding: 60px 0 30px;
            color: #94a3b8;
        }

        .footer_top {
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
        }

        .footer_logo img {
            max-height: 40px;
            width: auto;
            margin-bottom: 20px;
        }

        .footer_logo h4 {
            font-family: 'Segoe UI', sans-serif;
            font-size: 16px;
            font-weight: 600;
            color: #ffffff;
            letter-spacing: 1px;
            text-transform: uppercase;
            margin-bottom: 20px;
        }

        .footer_social {
            display: flex;
            gap: 15px;
            justify-content: center;
            margin-bottom: 30px;
        }

        .footer_social a {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 42px;
            height: 42px;
            border-radius: 50%;
            background: #1e293b;
            color: #94a3b8;
            font-size: 16px;
            transition: all 0.3s ease;
            text-decoration: none;
        }

        .footer_social a:hover {
            background: #4a90e2;
            color: #ffffff;
            transform: translateY(-3px);
            box-shadow: 0 4px 12px rgba(74, 144, 226, 0.3);
        }

        .footer_bottom {
            border-top: 1px solid #1e293b;
            padding-top: 25px;
            margin-top: 20px;
            text-align: center;
        }

        .footer-text {
            font-size: 14px;
            color: #64748b;
            line-height: 1.6;
        }

        .footer-text a {
            color: #4a90e2;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .footer-text a:hover {
            color: #357abd;
            text-decoration: underline;
        }

        .footer-text i {
            color: #ef4444;
            margin: 0 2px;
        }
    </style>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="footer_top flex-column">
                    <div class="footer_logo">
                        <a href="${pageContext.request.contextPath}/client/home">
                            <img src="${pageContext.request.contextPath}/img/logo.png" alt="Tejaswi Kumar">
                        </a>
                        <h4>Connect with Me</h4>
                    </div>
                    <div class="footer_social">
                        <!-- Swapped outdated icons with your real GitHub & LinkedIn handles from your profile context -->
                        <a href="https://www.linkedin.com/in/tejaswi-kumar-2317a6255" target="_blank"><i class="fa fa-linkedin"></i></a>
                        <a href="https://github.com/Tejas08wi" target="_blank"><i class="fa fa-github"></i></a>
                        <a href="mailto:tejaswikumar804@gmail.com"><i class="fa fa-envelope"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row footer_bottom justify-content-center">
            <p class="col-lg-8 col-sm-12 footer-text">
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Handcrafted by Tejaswi Kumar. This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
        </div>
    </div>
</footer>
<!--================End Footer Area =================-->