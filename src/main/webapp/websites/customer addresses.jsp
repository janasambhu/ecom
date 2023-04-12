<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet"
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

.row3 {
	width: 90%;
	margin: auto;
	border-radius: 8px;
	margin-top: 15px;
	margin-bottom: 10px;
}

.row4 {
	font-size: 20px;
	padding: 5px;
	margin-bottom: 10px;
}

#txt {
	display: none;
}

.sam12 {
	cursor: pointer;
	border: 1px solid #ccc;
	padding: 10px;
	border-radius: 10px;
}

.container5 {
	width: 900px;
	margin: auto;
	background: white;
	border-radius: 10px;
	margin-bottom: 15px;
	min-height:100px;
}

.container5 .header1 {
	font-size: 21px;
	display: flex;
	justify-content: center;
	padding-top: 15px;
}

#txt {
	display: none;
}

.prod {
	background: none;
	outline: none;
	border-top-style: hidden;
	border-right-style: hidden;
	border-left-style: hidden;
	border-bottom-style: hidden;
	font-size: 16px;
	color: #555;
	cursor: pointer
}

.ana {
	display: flex;
	justify-content: center;
}
.btn1{
margin-top:4px;
margin-bottom:4px;
margin-left: 10px;
}
.sam23 {
	display: flex;	
}

@media only screen and (max-width:800px) {
	.container5 {
		width: 80%;
		margin-bottom: 10px;
	}
	.prod {
		color: white;
	}
	.footer{
	position:relative;
	}
	.btn1 {
    margin-top: 4px;
    margin-bottom: 4px;
    margin-left: 0px; 
    padding: 8px 20px;
}
}

@media only screen and (max-width:600px) {
	.container5 {
		width: 80%;
		margin-bottom: 10px;
	}
	.prod {
		color: white;
	}
	.sam23{
	display:flex;
	justify-content:space-between;
	}
	.footer{
	position:relative;
	}
	.btn1 {
    margin-top: 4px;
    margin-bottom: 4px;
    /* margin-left: 0px; */
    padding: 8px 20px;
}
}
</style>
<body>

<%@ page import="java.util.*  ,model.*" %>
<%
Address a=(Address)(request.getAttribute("addresses"));
String cid=(String)(request.getAttribute("cid"));
String pid=(String)(request.getAttribute("pid"));
String cname=(String)(request.getAttribute("cname"));
ArrayList<String> did=a.getCdeliveryaddressId();
ArrayList<String> cid1=a.getCcustomerId();
ArrayList<String> line1=a.getCline1();
ArrayList<String> city=a.getCcity();
ArrayList<String> dist=a.getCdistrict();
ArrayList<String> state=a.getCstate();
ArrayList<String> pin=a.getCpincode();
ArrayList<String> lmark=a.getClandmark();
ArrayList<String> phno=a.getCphno();
//out.println(did);
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
	<div class="ana">
		<form action="<%=request.getContextPath()%>/GoingToNewAddressPage" method="post">
		<input id="txt" name="cid" value="<%=cid%>"> 
		<input id="txt" name="pid" value="<%=pid%>">
		<input id="txt" name="cname" value="<%=cname%>"> 
		<input type="submit" class="btn" value="Add New Address">
		</form>
	</div>
	<div class="container5">
		<header class="header1">Select Delivery Address</header>
		<div class="row3">

			<%
			for (int i = 0; i <did.size(); i++) {
			%>
			<div class="row4">
				<div class="sam12">
				
					<p>Address line 1: <%=line1.get(i)%></p>
					<p>city: <%=city.get(i)%></p>
					<p>State: <%=state.get(i)%></p>
					<p>District: <%=dist.get(i)%></p>
					<p>Pin Code: <%=pin.get(i)%></p>
					<p>Landmark: <%=lmark.get(i)%></p>
					<p>Phone No.:<%=phno.get(i)%></p>
					
				</div>
				<div class="sam23">
				<form action="<%=request.getContextPath()%>/UpdateAddressDataCollection" method="post">
				<input id="txt" name="cid" value="<%=cid%>"> 
					<input id="txt" name="pid" value="<%=pid%>"> 
					<input id="txt" name="did" value="<%=did.get(i)%>"> 
					<input id="txt" name="cname" value="<%=cname%>">
					<input type="submit" class="btn btn1" value="Update">
				</form>
				<form action="<%=request.getContextPath()%>/DeleteAddressDataCollection" method="post">
				<input id="txt" name="cid" value="<%=cid%>"> 
					<input id="txt" name="pid" value="<%=pid%>"> 
					<input id="txt" name="did" value="<%=did.get(i)%>"> 
					<input id="txt" name="cname" value="<%=cname%>">
					<input type="submit" class="btn btn1" value="Delete">
				</form>
				<form action="<%=request.getContextPath()%>/CustomerAddressDataCollection" method="post">
					<input id="txt" name="cid" value="<%=cid%>"> 
					<input id="txt" name="pid" value="<%=pid%>"> 
					<input id="txt" name="did" value="<%=did.get(i)%>"> 
					<input id="txt" name="cname" value="<%=cname%>">
					<input type="submit" class="btn btn1" value="Select">
					</form>
				</div>
			</div>
			<%
			}
			%>


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
						<img
							src="<%=request.getContextPath()%>/websites/images/play-store.png">
						<img
							src="<%=request.getContextPath()%>/websites/images/app-store.png">
					</div>
				</div>
				<div class="footer-col-2">
					<img
						src="<%=request.getContextPath()%>/websites/images/logo-white.png">
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
		function formsubmit(){
			document.getElementById("myform").submit();
		}
		document.addEventListener('keydown', (e) => {
		    e = e || window.event;
		    if(e.keyCode == 116){
		        //e.preventDefault();
		        alert("You cant refresh this page");
		        return false;
		    }
		});
		
	</script>
</body>
</html>