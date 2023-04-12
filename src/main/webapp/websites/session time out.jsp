<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/websites/registration.css">
</head>
<style>
.spany {
	font-size: 13px;
	color: red;
	margin-top: 0px;
	margin-bottom: 10px;
	margin-left: 10px;
}

.session {
	height: 40vh;
	width: 100%;
	display: flex;
	justify-content: center;
}

.session1 {
	height: 8vh;
	width: 65%;	
	text-align:center;	
}
.session2{
display: flex;
	align-items: center;
	justify-content: center;
}
.session2 img{
height:300px;

}
.session1 p{
color:black;
font-size:20px;
opacity:0.6;
}
.session1 a{
color:blue;
}
</style>
<body>

	<div class="container">

		<div class="navbar">
			<div class="logo">
				<img src="<%=request.getContextPath()%>/websites/images/logo.png" width="125px">
			</div>
			<nav>
				<ul id="MenuItems">
					<li><a href="<%=request.getContextPath()%>/websites/index.jsp">Home</a></li>

					<li><a
						href="<%=request.getContextPath()%>/websites/about us.jsp">About</a></li>
					<li><a href="<%=request.getContextPath()%>/websites/contact us.jsp">Contact</a></li>

				</ul>
			</nav>
			<img src="<%=request.getContextPath()%>/websites/images/menu.png" class="menu-icon" onclick="menutoggle()">
		</div>
	</div>

	<!-- ------container-------- -->
	<div class="session2">
	<img src="<%=request.getContextPath()%>/websites/images/session.png">
	</div>
	<div class="session">
		<div class="session1">
			<p>You have been automatically logged out due to a period of
				inactivity. Please <a href="<%=request.getContextPath()%>/websites/index.jsp">log in </a> again if you want to continue using our
				services. We value your security and take measures to ensure your
				data is safe. Thank you for understanding.</p>
		</div>
	</div>

	<!-- ---------footer----------->

	<div class="footer">
		<div class="container">
			<div class="row">
				<div class="footer-col-1">
					<h3>Download Our App</h3>
					<p>Download App for Android and ios mobile phone.</p>
					<div class="app-logo">
						<img src="<%=request.getContextPath()%>/websites/images/play-store.png"> <img
							src="<%=request.getContextPath()%>/websites/images/app-store.png">
					</div>
				</div>
				<div class="footer-col-2">
					<img src="<%=request.getContextPath()%>/websites/images/logo-white.png">
					<p>Our Purpose Is To Sutainably Make the Pleasure and Benifits
						of Sports Accessible to the Many.</p>
				</div>
				<div class="footer-col-3">
					<h3>Useful Links</h3>
					<ul>
						<li>Coupons</li>
						<li>Blog Post</li>
						<li>Return Policy</li>
						<li>Join Affiliate</li>
					</ul>
				</div>
				<div class="footer-col-4">
					<h3>Follow Us</h3>
					<ul>
						<li>Facebook</li>
						<li>Twitter</li>
						<li>Instagram</li>
						<li>YouTube</li>
					</ul>
				</div>

			</div>
			<hr>
			<p class="copyright">Copyright 2023 - Sambhu Jana</p>
		</div>
	</div>





	<script>
		var MenuItems = document.getElementById("MenuItems");
		MenuItems.style.maxHeight = "0px";
		function menutoggle() {
			if (MenuItems.style.maxHeight == "0px") {
				MenuItems.style.maxHeight = "200px";
			} else {
				MenuItems.style.maxHeight = "0px";
			}
		}
	</script>

</body>
</html>