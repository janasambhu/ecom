<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add product</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/websites/registration.css">
</head>
<style>
.spany {
	font-size: 13px;
	color: red;
	margin-top: 0px;
	margin-bottom: 10px;
	margin-left: 10px;
}

.prod {
	background: none;
	outline: none;
	font-family: sans-serif;
	border-top-style: hidden;
	border-right-style: hidden;
	border-left-style: hidden;
	border-bottom-style: hidden;
	font-size: 16px;
	color: #555;
	cursor: pointer;
}

.prod:hover {
	background: none;
}

button {
	font-size: 16px;
	background: none;
	color: #555;
	cursor: pointer;
}

#sid {
	display: none;
}

#txt {
	display: none;
}

form .drop1 {
	width: 100%;
	height: 45px;
	margin: 10px 0;
	padding: 0 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	margin-bottom: 24px
}

#prev {
	cursor: pointer;
}

#upl {
	border: none;
	background: none;
}

body {
	min-height: 100vh;
	color: #555;
	background: radial-gradient(#f9fbf9, #cadeca);
}

.container2 form button, .backBtn {
	display: flex;
	align-items: center;
	justify-content: center;
	height: 45px;
	max-width: 200px;
	width: 100%;
	border: none;
	outline: none;
	color: #fff;
	margin: 25px 0;
	background-color: #44934a;;
	transition: all 0.4s linear;
	cursor: pointer;
	border-radius: 5px;
}

form button .backBtn:hover {
	background-color: #05470a;
	transition: 0.5s;
}

form button:hover {
	background-color: #05470a;
	transition: 0.5s;
}
</style>
<body>
	<%@ page import="java.util.*  ,model.*"%>
	<%
	String cid = (String) (request.getAttribute("cid"));
	String cname = (String) (request.getAttribute("cname"));
	%>
	<div class="container">

		<div class="navbar">
			<div class="logo">
				<img src="<%=request.getContextPath()%>/websites/images/logo.png"
					width="125px">
			</div>
			<nav>
				<ul id="MenuItems">

					<li>
						<form
							action="<%=request.getContextPath()%>/CartToProductDataCollection"
							method="post">
							<input type="text" id="txt" name="c-id" value="<%=cid%>"> <input
								type="text" id="txt" name="cname" value="<%=cname%>"> <input
								class="prod" type="submit" value="Home">
						</form>
					</li>
					<li>
						<form
							action="<%=request.getContextPath()%>/CartToProductDataCollection"
							method="post">
							<input type="text" id="txt" name="c-id" value="<%=cid%>"> <input
								type="text" id="txt" name="cname" value="<%=cname%>"> <input
								class="prod" type="submit" value="Products">
						</form>
					</li>
					<li><a href="#">My Orders</a></li>
					<li>
						<form
							action="<%=request.getContextPath()%>/ProductToCustomerAccountDataCollection"
							method="post">
							<input name="s11" id="txt" type="text" value="<%=cname%>"> <input
								name="s12" id="txt" type="text" value="<%=cid%>"> <input
								type="submit" class="prod" value="Hello, <%=cname%>">
						</form>
					</li>
					<li>
						<form action="<%=request.getContextPath()%>/LogOutDataCollection"
							method="post">
							<input type="submit" class="prod" value="Log Out">
						</form>
					</li>
				</ul>
			</nav>
			<img src="<%=request.getContextPath()%>/websites/images/menu.png"
				class="menu-icon" onclick="menutoggle()">
		</div>
	</div>

	<!-- ------container-------- -->

	<div class="container2">
		<header class="header1">Enter Payment Details</header>
		<form action="<%=request.getContextPath()%>/PaymentDetailDataCollections"
			name="f1" onsubmit="return matchpass()" method="post">
			<div class="form first">
				<div class="details personal">
					<div class="fields">
						<div class="input-field">
							<label>Card Type</label> <select class="drop1" name="ctype">
								<option value="" selected disabled>Choose</option>
								<option value="Debit Card">Debit Card</option>
								<option value="Credit Card">Credit Card</option>
								<option value="Visa">Visa</option>
								<option value="Master Card">Master Card</option>
								<option value="Maestro">Maestro</option>
								<option value="American Express">American Express</option>
								<option value="UnionPay">UnionPay</option>

							</select>
						</div>
						<div class="input-field">
							<label>Card Number</label> <input type="number" name="cnum"
								placeholder="Enter card number" required> <span
								class="spany" id="span1"></span>
						</div>
						<div class="input-field">
							<label>Expiry Date</label> <input type="text" name="expdate"
								placeholder="Enter Expiry Date" required> <span
								class="spany" id="span2"></span>
						</div>

						<div class="input-field">
							<label>Card Holder Name</label> <input type="text"
								name="cardname" placeholder="Enter card holder name" required>
							<span class="spany" id="span3"></span>
						</div>
						<div class="input-field" id="sid">
								<input type="text" name="cid" value="<%=cid%>">

						</div>
						<div class="input-field" id="sid">
						<input type="text" name="cname" value="<%=cname%>">

						</div>

					</div>

				</div>
				<button class="nextBtn" type="submit" value="submit">
					<span class="btnText">Order</span>
				</button>
			</div>
		</form>
	</div>
	<!-- ---------footer----------->

	<div class="footer">
		<div class="container">
			<div class="row">
				<div class="footer-col-1">
					<h3>Download Our App</h3>
					<p>Download App for Android and ios mobile phone.</p>
					<div class="app-logo">
						<img
							src="<%=request.getContextPath()%>/websites/images/play-store.png">
						<img
							src="<%=request.getContextPath()%>/websites/images/app-store.png">
					</div>
				</div>
				<div class="footer-col-2">
					<img
						src="<%=request.getContextPath()%>/websites/images/logo-white.png">
					<p>Our Purpose Is To Sustainably Make the Pleasure and Benifits
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
	<script type="text/javascript">
		function matchpass() {
			var cnum = document.f1.cnum.value;
			var expdate = document.f1.expdate.value;
			var cardname = document.f1.cardname.value;			
			var istrue = true;			
			if (cnum.length < 12 || cnum == null) {
				document.getElementById("span1").innerHTML = "*Invalid card number";
				istrue = false;
			}
			if (expdate.length< 7) {
				document.getElementById("span2").innerHTML = "*Invalid expiry date";
				istrue = false;
			}
			if (cardname.length<3) {
				document.getElementById("span3").innerHTML = "*Enter valid name";
				istrue = false;
			}			
			return istrue;
		}
	</script>


</body>
</html>