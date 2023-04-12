<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products - ecom</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/websites/style.css">  
  <style type="text/css">
  #box{
  display:none;
  }
  #cart1{
  background: none;
  }
  .sam{
  display:none;
  }
  .button1{
    display: flex;
    justify-content: center;
    margin-bottom: 15px;
    /* position: relative; */
}
.row-2{
margin-top:0px;
}
.button1 button{
    margin:10px 8px;
}

#txt{
display:none;

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
  button{
  cursor:pointer;
  }
  #sam23 {
	display: flex;
	align-items: center;
	margin: 0 -5px;
}

.item {
	margin: 0 5px;
}
.sambhu {
	height: 100%;
	width: 100%;
	overflow: hidden;
	position: relative;
	margin-bottom: 0px;
	cursor:pointer;
}

.sambhu img {
	height: 300px;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 10px;
}
.sam26{
text-align:center;
margin-top:8px;
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
.sarch{
display:flex;
justify-content:center;
}
.sarch1{
width:55%;
}
.sarch1 form{
height:40px;
display:flex;
justify-content:center;
}
.sarch1 input{
margin: 0px;
    width: 65%;
    height: 40px;
    border-radius: 15px;
    font-size: 15px;
    padding: 12px;
}
.sarch1 button{
width: 64px;
    height: 33px;
    border-radius: 10px;
    margin-left: 4px;
    margin-top: 3px;
    background-color: #3b8f3b;
    color: white;
     cursor:pointer;
}
#spa{
width: 30%;
    height: 30px;
    margin-left: 31%;
    padding: 5px;
    font-size: 14px;
    color:#833c3c;
}
@media only screen and (max-width:800px){
.prod{
display:flex;
justify-content:right;
flex:1;
color:white;
height:17px;
}
#spa{
height: 34px;
    width: 50%;
    margin-left: 19%;
}
.sarch1{
width:75%;
}
#cart1{
margin-top: 0px;
}
}
@media only screen and (max-width:600px){
.prod{
display:flex;
justify-content:right;
flex:1;
color:white;
height:17px;
}
#spa{
height: 34px;
    width: 50%;
    margin-left: 19%;
}
.sarch1{
width:75%;
}
#cart1{
margin-top: 0px;
}
}
#cart1{
margin-top: 10px;
}
  </style>

</head>
<body>
<%@ page import="java.util.*  ,model.*" %>
<%
Products p=(Products) (request.getAttribute("pro"));
Customers f=(Customers) (request.getAttribute("data"));
ArrayList<String> pname=p.getPname();
ArrayList<String> pprice=p.getPprice();
ArrayList<String> pquan=p.getPquantity();
ArrayList<String> pdet=p.getPdetails();
ArrayList<String> pimg1=p.getPimage1();
ArrayList<String> pimg2=p.getPimage2();
ArrayList<String> pimg3=p.getPimage3();
ArrayList<String> pimg4=p.getPimage4();
ArrayList<String> pid=p.getPid();
String s1=f.getFirstname();
int cid=f.getCustomerId();
//String s2=f.getMobile();
//String s3=f.getComments();
//out.println(cid);
//out.println("fullname : "+s1+"  <br>");
//out.println("contactno. : "+s2+"  <br>");
//out.println("feedback : "+s3+"  <br><hr>");
%>



    <div class="container">

        <div class="navbar">
            <div class="logo">
                <img src="<%=request.getContextPath()%>/websites/images/logo.png" width="125px">
            </div>
            <nav>
                <ul id="MenuItems">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Products</a></li>
                    <li>
						<form
							action="<%=request.getContextPath()%>/OrdersDataCollections"
							method="post">
							<input name="s11" id="txt" type="text" value="<%=cid%>">
							<input name="s12" id="txt" type="text" value="<%=s1%>">
							<button type="submit" class="prod">My Orders</button>
						</form>
					</li>
                    <li>
						<form
							action="<%=request.getContextPath()%>/ProductToCustomerAccountDataCollection"
							method="post">
							<input name="s11" id="txt" type="text" value="<%=s1%>">
							<input name="s12" id="txt" type="text" value="<%=cid%>">
							<input type="submit" class="prod" value="Hello,<%=s1%>">
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
            <form action="<%=request.getContextPath()%>/CartDataCollection"  method="post">
            <input type="text" id="box" name="c-id" value="<%=cid%>">
            <input type="text" id="box" name="cname" value="<%=s1%>">
         <button type="submit" id="cart1"> <img src="<%=request.getContextPath()%>/websites/images/cart.png"  class="cart-icon" width="30px" height="30px"></button>
            </form>
            <img src="<%=request.getContextPath()%>/websites/images/menu.png" class="menu-icon" onclick="menutoggle()">
        </div>
</div>

<div class="sarch">
<div class="sarch1">
<form action="<%=request.getContextPath()%>/SearchCustomerProductDataCollections" name="f1" onsubmit="return matchpass()" method="post">
<input type="text" name="sarch" placeholder="search product name or brand name">
<input id="txt" name="cid" value="<%=cid%>">
<input id="txt" name="cname" value="<%=s1%>">
<button class="btn23" type="submit">Search</button>
</form>
</div>
</div>
<div id="spa">
<span id="span23"></span>
</div>


<div class="small-container">
<div class="row row-2">
    <h2>
       Products
    </h2>
    <form action="<%=request.getContextPath()%>/SortCustomerProductDataCollection" method="post">  
        <select name="s1">
            <option value="0">All Products</option>
            <option value="shirt">Shirt</option>
            <option value="boot">boot</option>
            <option value="pant">pant</option>
            <option value="watch">watch</option>
        </select><br>
        <input id="txt" type="text" name="c-id" value="<%=cid%>">
        <input id="txt" type="text" name="cname" value="<%=s1%>">
        <button id="sort" type="submit">sort</button>
    </form>   
</div>

    <div class="row">
    <% for(int i=0;i<pname.size();i++){ %>
        <div class="col-4">
        	<div class="sambhu">
					<form
						action="<%=request.getContextPath()%>/CustomerProductDetailDataCollections"
						method="post">
						<input name="s11" id="txt" type="text" value="<%=cid%>"> <input
							name="s12" id="txt" type="text" value="<%=s1%>">
						<input name="s13" id="txt" type="text" value="<%=pid.get(i)%>"> 
						<img src="<%=request.getContextPath()%>/websites/products images/<%=pimg1.get(i)%>" onclick="submit()">
					</form>
				</div> 
				<div class="sam26">           
            <h4><%=pname.get(i)%></h4>
            <h4>&#x20b9;<%=pprice.get(i)%></h4>
            <p id="box"><%=cid%></p>
             <p id="box"><%=pid.get(i)%></p>
             </div>
        </div>
        <%} %>
        
    </div>
</div>

<!-- --------footer-------- -->
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
<!-- ----------js for toggle menu---------- -->
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
    function matchpass(){
   	 var sarch=document.f1.sarch.value;
   	 var istrue=true;
   	if(sarch.length<3 || sarch==null || sarch==" "){
   		document.getElementById("span23").innerHTML="Enter valid search keyword";
   		istrue=false;
   	}
   	 return istrue;
   }
   
</script>
</body>
</html>