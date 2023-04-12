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
form .drop1{
	 width: 100%;
    height: 45px;
    margin: 10px 0;
    padding: 0 10px;
    border: 1px solid #ccc;
    border-radius:5px;
    margin-bottom:24px
    
	}
	.container2 form button, .backBtn {
	max-width:220px;
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
String did=(String)(request.getAttribute("did"));
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
      <header class="header1">Enter Order Details</header>

        <form action="<%=request.getContextPath()%>/OrderDataCollection" name="f1" onsubmit="return matchpass()" method="post">
            <div class="form first">
                <div class="details personal">
               
                    <div class="fields">

                        <div class="input-field">
                            <label>Product Quantity</label>
                            <input type="number" name="pquan" placeholder="Enter Product Quantity" required>
                            <span class="spany" id="span1"></span>
                        </div>
						
                        <div class="input-field">
                            <label>Review</label>
                            <input type="text" name="review" placeholder="Enter Review" required>
                            <span class="spany" id="span2"></span>
                        </div>  
                        <div class="input-field">
                            <label>Payment Type</label>
                           <select class="drop1" name="paymenttype">
                           <option value="" selected disabled>Choose</option>
       						<option value="cash">Cash</option>
        					<option value="online">Online</option>       					
    					</select>
                        </div>                                                                                                                     
							<div class="input-field">
                            	<input id="txt" type="text" name="cid" value="<%=cid%>">                           
                        	</div>
                        	<div class="input-field">
                            	<input id="txt" type="text" name="cname" value="<%=cname%>">                           
                        	</div>
                        	<div class="input-field">
                            	<input id="txt" type="text" name="pid" value="<%=pid%>">                           
                        	</div>
                        	<div class="input-field">
                            	<input id="txt" type="text" name="did" value="<%=did%>">                           
                        	</div>                			
                    </div>
                </div>
                    <button class="nextBtn" type="submit">
                        <span class="btnText" >Proceed To Checkout</span>
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
        var pquan=document.f1.pquan.value;
        var review=document.f1.review.value;
        var istrue=true;
        
        if(pquan<0){
            document.getElementById("span1").innerHTML="*Enter valid number";
             istrue=false;
        }
       if(review.length<5 || review.length==null || review.length==""){
            document.getElementById("span2").innerHTML="*Review should be greater than 5 character";
            istrue=false;
        }
       
        return istrue;
        }
    </script>


</body>
</html>