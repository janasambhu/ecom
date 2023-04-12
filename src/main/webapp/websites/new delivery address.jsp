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
    .spany{
        font-size: 13px;
        color: red;
        margin-top: 0px;
        margin-bottom: 10px;
        margin-left:10px;
    }
#txt{
display:none;
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
@media only screen and (max-width:800px) {
	.prod {
		color: white;
	}
}
@media only screen and (max-width:600px) {
	.prod {
		color: white;
	}
}

</style>
<body>
<%@ page import="java.util.*  ,model.*" %>
<%
String cid=(String)(request.getAttribute("cid"));
String pid=(String)(request.getAttribute("pid"));
String cname=(String)(request.getAttribute("cname"));
%>
    <div class="container">

        <div class="navbar">
            <div class="logo">
                <img src="<%=request.getContextPath()%>/websites/images/logo.png" width="125px">
            </div>
            <nav>
                <ul id="MenuItems">
                    <li>
						<form
							action="<%=request.getContextPath()%>/CartToProductDataCollection"
							method="post" onsubmit="return false">
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
            <img src="<%=request.getContextPath()%>/websites/images/menu.png" class="menu-icon" onclick="menutoggle()">
        </div>
</div>

<!-- ------container-------- -->

    <div class="container2">
      <header class="header1">New Delivery Address</header>

        <form action="<%=request.getContextPath()%>/NewAddressDataCollections" name="f1" onsubmit="return matchpass()" method="post">
            <div class="form first">
                <div class="details personal">
               
                    <div class="fields">

                        <div class="input-field">
                            <label>Address Line 1</label>
                            <input type="text" name="line1" placeholder="Enter Address" required>
                            <span class="spany" id="span1"></span>
                        </div>

                        <div class="input-field">
                            <label>City</label>
                            <input type="text" name="city" placeholder="Enter City name" required>
                            <span class="spany" id="span2"></span>
                        </div>

                        <div class="input-field">
                            <label>District Name</label>
                            <input type="text" name="dist" placeholder="Enter District Name" required>
                            <span class="spany" id="span3"></span>
                        </div>

                        <div class="input-field">
                            <label>State</label>
                            <input type="text" name="state" placeholder="Enter state email" required>
                            <span class="spany" id="span4"></span>
                        </div>
                        <div class="input-field">
                            <label>Pin Code</label>
                            <input type="number" name="pin" placeholder="Enter pin code" required>
                            <span class="spany" id="span5"></span>
                        </div>
                        <div class="input-field">
                            <label>Land Mark</label>
                            <input type="text" name="lmark" placeholder="Enter landmark" required>
                            <span class="spany" id="span6"></span>
                        </div>
                        <div class="input-field">
                            <label>Phone No.</label>
                            <input type="number" name="phone" placeholder="Enter phone number" required>
                            <span class="spany" id="span7"></span>
                        </div>
							<div class="input-field">
                            	<input id="txt" type="text" name="cid" value="<%=cid%>">                           
                        	</div>
                        	<div class="input-field">
                            	<input id="txt" type="text" name="pid" value="<%=pid%>">                           
                        	</div>
                        	<div class="input-field">
                            	<input id="txt" type="text" name="cname" value="<%=cname%>">                           
                        	</div>
                

                    </div>
                </div>
                    <button class="nextBtn" type="submit">
                        <span class="btnText" >Submit</span>
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
                    <img src="<%=request.getContextPath()%>/websites/images/play-store.png">
                    <img src="<%=request.getContextPath()%>/websites/images/app-store.png">
                </div>
            </div>
            <div class="footer-col-2">
                <img src="<%=request.getContextPath()%>/websites/images/logo-white.png">
                <p>Our Purpose Is To Sutainably Make the Pleasure and Benifits of Sports Accessible to the Many. </p>
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
        var MenuItems=document.getElementById("MenuItems");
        MenuItems.style.maxHeight="0px";
        function menutoggle(){
            if(MenuItems.style.maxHeight=="0px"){
                MenuItems.style.maxHeight="200px";
            }
            else{
                MenuItems.style.maxHeight="0px";
            }
        }
        
    </script>
    <script type="text/javascript">
        function matchpass(){
        var line1=document.f1.line1.value;
        var city=document.f1.city.value;
        var dist=document.f1.dist.value;
        var state=document.f1.state.value;
        var pin=document.f1.pin.value;
        var lmark=document.f1.lmark.value;
        var phone=document.f1.phone.value;
        var phoneno=/^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$/;
        var istrue=false;
        
        if(line1.length<5 || line1==null || line1==""){
            document.getElementById("span1").innerHTML="*Enter valid address";
             istrue=false;
        }
       if(city.length<3 || city.length==null || city.length==""){
            document.getElementById("span2").innerHTML="*Enter valid city name";
            istrue=false;
        }
       if(dist.length<3 || dist.length==null || dist.length==""){
           document.getElementById("span3").innerHTML="*Enter valid district name";
           istrue=false;
       }
       if(state.length<3 || state.length==null || state.length==""){
           document.getElementById("span4").innerHTML="*Enter valid state name";
           istrue=false;
       }
       if(pin.length<4 || pin.length==null || pin.length==""){
           document.getElementById("span5").innerHTML="*Enter valid pin code";
           istrue=false;
       }
       if(lmark.length<3){
            document.getElementById("span6").innerHTML="*Enter valid landmark";
            istrue=false;
        }
       if(phone.match(phoneno)){
           istrue=true;
      }else{
        	document.getElementById("span7").innerHTML="*Enter valid mobile number";
        	istrue=false;
        }
        return istrue;
        }
    </script>


</body>
</html>