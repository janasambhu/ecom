<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>my orders - ecom</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/websites/style.css">
<style type="text/css">
#box, #box1 {
	display: none;
}

button {
	cursor: pointer;
}

#txt {
	display: none;
}

#sort {
	margin-left: 0px;
	width: 65px;
	text-align: center;
	height: 25px;
	border-radius: 10px;
	margin-top: 5px;
	background: #44934a;
	color: #ffff;
	cursor: pointer;
}

#sort:hover {
	background: #05470a;
}
#del{
cursor:pointer;
}
#del1 {
	display: none;
	min-height: 90px;
	width: 55%;
	position: absolute;
	margin-bottom: 10px;
	background: white;
	border-radius: 10px;
	padding:10px;
}

#del:hover+#del1 {
	display: block;
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

.prod:focus {
	outline: none;
}

#cart1 {
	background: none;
	margin-top: 10px;
}

#sam23 {
	display: flex;
	justify-content: flex-end;
	margin: 0px;
}

#sam23 #sort {
	margin-right: 0px;
}
#fam{
color:black;
}
@media only screen and (max-width:800px) {
	.prod {
		display: flex;
		justify-content: right;
		flex: 1;
		color: white;
		height: 17px;
	}
	#cart1 {
		margin-top: 0px;
	}
}

@media only screen and (max-width:600px) {
	.prod {
		display: flex;
		justify-content: right;
		flex: 1;
		color: white;
		height: 17px;
	}
	#cart1 {
		margin-top: 0px;
	}
}
</style>
</head>
<body>
	<%@ page import="java.util.*  ,model.*"%>
	<%
	Orders o = (Orders) (request.getAttribute("orders"));
	String cid = (String) (request.getAttribute("cid"));
	String cname = (String) (request.getAttribute("cname"));
	ArrayList<String> oid = o.getOid();
	ArrayList<String> pid = o.getPid();
	ArrayList<String> pname = o.getPname();
	ArrayList<String> pprice = o.getPprice();
	ArrayList<String> quan = o.getOquan();
	ArrayList<String> odate = o.getOdate();
	ArrayList<String> ddate = o.getDdate();
	ArrayList<String> paytype = o.getPaytype();
	ArrayList<String> pimg = o.getPimg1();
	ArrayList<String> line1 = o.getLine1();
	ArrayList<String> city = o.getCity();
	ArrayList<String> dist = o.getDist();
	ArrayList<String> state = o.getState();
	ArrayList<String> pin = o.getPin();
	ArrayList<String> lmark = o.getLmark();
	ArrayList<String> phno = o.getPhno();

	//out.println(pname+"<br>");
	//out.println(pprice+"<br>");
	//out.println(pcat+"<br>");
	//out.println(pquan+"<br>");
	//out.println(pdet+"<br>");
	//out.println(pimg+"<br>");
	//out.println(pid+"<br>");
	//out.println("fullname : "+s1+"  <br>");
	//out.println("contactno. : "+s2+"  <br>");
	//out.println("feedback : "+s3+"  <br><hr>");
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
							<input type="text" id="box1" name="c-id" value="<%=cid%>">
							<input type="text" id="box1" name="cname" value="<%=cname%>">
							<input class="prod" type="submit" value="Home">
						</form>
					</li>
					<li>
						<form
							action="<%=request.getContextPath()%>/CartToProductDataCollection"
							method="post">
							<input type="text" id="box1" name="c-id" value="<%=cid%>">
							<input type="text" id="box1" name="cname" value="<%=cname%>">
							<input class="prod" type="submit" value="Products">
						</form>
					</li>
					<li><a href="#">My
							Orders</a></li>
					<li>
						<form
							action="<%=request.getContextPath()%>/ProductToCustomerAccountDataCollection"
							method="post">
							<input name="s11" id="txt" type="text" value="<%=cname%>">
							<input name="s12" id="txt" type="text" value="<%=cid%>">
							<input type="submit" class="prod" value="Hello, <%=cname%>">
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
			<form action="<%=request.getContextPath()%>/CartDataCollection" method="post">
            <input type="text" id="box1" name="c-id" value="<%=cid%>">
            <input type="text" id="box1" name="cname" value="<%=cname%>">
         <button type="submit" id="cart1"> <img src="<%=request.getContextPath()%>/websites/images/cart.png"  class="cart-icon" width="30px" height="30px"></button>
            </form>
			<img src="<%=request.getContextPath()%>/websites/images/menu.png"
				class="menu-icon" onclick="menutoggle()">
		</div>

	</div>
	<!-- -------------cart items details------------- -->
	<div class="small-container cart-page">
		<table>
			<tr>
				<th>Product</th>

				<th>Total Price</th>
			</tr>
			<%
			for (int i = 0; i < pid.size(); i++) {
			%>
			<tr>
				<td>
					<div class="cart-info">
						<form
							action=" <%=request.getContextPath()%>/CustomerProductDetailDataCollections"
							method="post">
							<input name="s11" id="txt" type="text" value="<%=cid%>">
							<input name="s12" id="txt" type="text" value="<%=cname%>">
							<input name="s13" id="txt" type="text" value="<%=pid.get(i)%>">
							<img
								src="<%=request.getContextPath()%>/websites/products images/<%=pimg.get(i)%>"
								onclick="submit()" alt="image">
						</form>
						<div>
							<p><%=pname.get(i)%></p>
							<p>
								Price: &#x20b9;<%=pprice.get(i)%></p>
							<p>
								Quantity:
								<%=quan.get(i)%></p>
							<p>
								Ordered Date:
								<%=odate.get(i)%></p>
							<p>
								Delivery Within:
								<%=ddate.get(i)%></p>
							<div>
							<p id="del">Delivery address</p>
								<div id="del1">
									<p>Address line 1: <%=line1.get(i)%></p>
									<p>city: <%=city.get(i)%></p>
									<p>State: <%=state.get(i)%></p>
									<p>District: <%=dist.get(i)%></p>
									<p>Pin Code: <%=pin.get(i)%></p>
									<p>Landmark: <%=lmark.get(i)%></p>
									<p>Phone No.:<%=phno.get(i)%></p>
								</div>
								
							</div>

						</div>
					</div> <%
 					float mult = 0;
					float tax=0;
					float total=0;
 						%>
					<p id="box"><%=mult = Float.parseFloat(quan.get(i)) * Float.parseFloat(pprice.get(i))%></p>
					<p id="box"><%=tax=(mult*5)/100%></p>
					<p id="box"><%=total=mult+tax%></p>
				</td>
				<td>Subtotal: &#x20b9;<%=mult%>
					<p id="fam">Tax: &#x20b9;<%=tax%></p>
					<p id="fam">Total Price: &#x20b9;<%=total%></p>
					<div id="sam23">
						<form
							action="<%=request.getContextPath()%>/RemoveOrderDataCollection"
							method="post">
							<input type="text" id="box" name="s11" value="<%=cid%>">
							<input type="text" id="box" name="s12" value="<%=cname%>">
							<input type="text" id="box" name="s13" value="<%=oid.get(i)%>">
							<input type="text" id="box" name="s14" value="<%=pid.get(i)%>">
							<button id="sort" type="submit">Remove</button>
						</form>
					</div>

				</td>

			</tr>
			<%
			}
			%>

		</table>
	</div>


	<!-- --------footer-------- -->
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
	<!-- ----------js for toggle menu---------- -->
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