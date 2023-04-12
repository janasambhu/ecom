<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product details - ecom</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/websites/style.css">
    <link 
  href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css" 
  rel="stylesheet"  type='text/css'>
  <style type="text/css">
  .button1 {
	display: flex;
	justify-content: flex-end;
	margin-right: -4px;
}
  #txt{
display:none;

}
.col-2 h1{
    
    font-size:35px
}
.col-2 h3{
color: #555;
}
button{
font-size:16px;
background:none;
color: #555;
cursor:pointer;

}

#sam23{
display: flex;
  align-items: center;
  margin: 0 -5px;
}
.item{
margin: 0 5px;
}

.sambhu{
height: 100%;
	width: 100%;
	overflow: hidden;
	position: relative;
	margin-bottom: 0px;
	cursor:pointer;
}
.sambhu img{
height: 300px;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 10px;
}
.sambhu1{
height:100%;
width:100%;
overflow: hidden;
position: relative;
margin-bottom:10px;
display:flex;
align-items:center;
justify-content:center;
}
.sambhu1 img{
height:480px;
width:450px;
}
.sambhu2{
height:100%;
width:100%;
overflow: hidden;
position: relative;
display:flex;
align-items:center;
justify-content:center;
}
.sambhu2 img{
height:150px;
width:120px;
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

@media only screen and (max-width:600px){
button{
color:#fff;
}
#sam23{
display: flex;
  align-items: center;
  justify-content: center;
  margin: 0 -5px;
}
.sambhu2 img {
    height: 100px;
    /* width: 120px; */
}
.sambhu1 img {
height:400px;
}

}
@media only screen and (max-width:800px){
button{
color:#fff;
}
#sam23{
display: flex;
  align-items: center;
  justify-content: center;
  margin: 0 -5px;
}
.sambhu2 img {
    height: 100px;
    /* width: 120px; */
}
.sambhu1 img {
height:400px;
}

}
  </style>
</head>
<body>
<script type="text/javascript">
		window.addEventListener("pageshow",function(event) {
							var historyTraversal = event.persisted 
													|| (typeof window.performance != "undefined" && window.performance.navigation.type === 2);
							if (historyTraversal) {								
								window.location.reload();
							}
						});
	</script>
	<%
	if (session.getAttribute("phno") == null) {
		request.getRequestDispatcher("/websites/session time out.jsp").forward(request, response);
	}
	%>
<%@ page import="java.util.*  ,model.*" %>
<% 
Products p=(Products) (request.getAttribute("product"));
Products p1=(Products) (request.getAttribute("products"));
String sname=(String)(request.getAttribute("sname"));
int pid=p.getProductId();
String pname=p.getProductname();
String pprice=p.getProductprice();
String pquan=p.getProductquantity();
String pdet=p.getProductdetails();
String pimg1=p.getProductimage1();
String pimg2=p.getProductimage2();
String pimg3=p.getProductimage3();
String pimg4=p.getProductimage4();
//out.println(pimg1+"<br>");
//out.println(pimg2+"<br>");
//out.println(pimg3+"<br>");
//out.println(pimg4+"<br>");
String sid=p.getSellerId();
ArrayList<String> pname1=p1.getPname();
ArrayList<String> pprice1=p1.getPprice();
ArrayList<String> pquan1=p1.getPquantity();
ArrayList<String> pdet1=p1.getPdetails();
ArrayList<String> pimg5=p1.getPimage1();
ArrayList<String> pimg6=p1.getPimage2();
ArrayList<String> pimg7=p1.getPimage3();
ArrayList<String> pimg8=p1.getPimage4();
ArrayList<String> pid1=p1.getPid();
%>





    <div class="container">

        <div class="navbar">
            <div class="logo">
                <img src="<%=request.getContextPath()%>/websites/images/logo.png" width="125px">
            </div>
            <nav>
                <ul id="MenuItems">
                   
                    <li>
                    <form action="<%=request.getContextPath()%>/DetailToSellerProductDataCollection" method="post">
                    <input name="s11" id="txt" type="text" value="<%=sid%>" >
                	<input name="s13" id="txt" type="text" value="<%=sname%>" >
                    <button type="submit" class="prod">Home</button>
                    </form>
                    </li>
                    <li>
                    <form action="<%=request.getContextPath()%>/DetailToSellerProductDataCollection" method="post">
                    <input name="s11" id="txt" type="text" value="<%=sid%>" >
                	<input name="s13" id="txt" type="text" value="<%=sname%>" >
                    <button type="submit" class="prod">Products</button>
                    </form>
                    </li>
                    
                    <li>
                    <form action="<%=request.getContextPath()%>/DetailToSellerAccountDataCollection" method="post">
                    <input name="s11" id="txt" type="text" value="<%=sid%>" >
                	<input name="s13" id="txt" type="text" value="<%=sname%>" >
                    <button type="submit" class="prod">Hello, <%=sname%></button>
                    </form>
                    </li>
                    <li>
						<form action="<%=request.getContextPath()%>/LogOutDataCollection"
							method="post">
							<button type="submit" class="prod">Log Out</button>
						</form>
					</li>
                </ul>
            </nav>
            <img src="<%=request.getContextPath()%>/websites/images/menu.png" class="menu-icon" onclick="menutoggle()">
        </div>

</div>

<div class="sarch">
<div class="sarch1">
<form action="<%=request.getContextPath()%>/SearchSellerProductDataCollection" name="f1" onsubmit="return matchpass()" method="post">
<input type="text" name="sarch" placeholder="search product name or brand name">
<input id="txt" name="sid" value="<%=sid%>">
<input id="txt" name="sname" value="<%=sname%>">
<button class="btn23" type="submit">Search</button>
</form>
</div>
</div>
<div id="spa">
<span id="span23"></span>
</div>

<!-- ----------single product details----------- -->
<div class="small-container single-product">
<div class="button1">
<form action="<%=request.getContextPath()%>/GoingToAddToProductPage" method="post">
<input name="s11" id="txt" type="text" value="<%=sid%>" >
<input name="s13" id="txt" type="text" value="<%=sname%>" >
<button class="btn" type="submit">Add Product</button>
</form>
</div>

    <div class="row">
        <div class="col-2">
        	<div class="sambhu1">
            <img src="<%=request.getContextPath()%>/websites/products images/<%=pimg1%>" width="100%" id="ProductImg">
            </div>
            <div class="small-img-row">
                <div class="small-img-col sambhu2">
                    <img src="<%=request.getContextPath()%>/websites/products images/<%=pimg1%>" width="=50%" class="small-img">
                </div>
                <div class="small-img-col sambhu2">
                    <img src="<%=request.getContextPath()%>/websites/products images/<%=pimg2%>" width="=50%" class="small-img">
                </div>
                <div class="small-img-col sambhu2">
                    <img src="<%=request.getContextPath()%>/websites/products images/<%=pimg3%>" width="=50%" class="small-img">
                </div>
                <div class="small-img-col sambhu2">
                    <img src="<%=request.getContextPath()%>/websites/products images/<%=pimg4%>" width="=50%" class="small-img">
                </div>
            </div>
    </div>
    <div class="col-2">
        <h1><%=pname%></h1>
        <h4>Price: &#x20b9;<%=pprice%></h4>
        <h3>Product Quantity: <%=pquan%></h3>
        <div id="sam23">
        <form action="<%=request.getContextPath()%>/DeleteSellerProductDataCollection" method="post" class="item">
        		<input name="s11" id="txt" type="text" value="<%=sid%>">
                <input name="s12" id="txt" type="number" value="<%=pid%>" >
                <input name="s13" id="txt" type="text" value="<%=sname%>" >
                <button class="btn btn1" type="submit">Delete</button>
        </form>
        <form action="<%=request.getContextPath()%>/UpdateSellerProductDataCollection" method="post" class="item">
        		<input name="s11" id="txt" type="text" value="<%=sid%>">
                <input name="s12" id="txt" type="number" value="<%=pid%>" >
                <input name="s13" id="txt" type="text" value="<%=sname%>" >
                <button class="btn" type="submit">Update</button>
        </form>
        
        </div>
        <h3>Product Detail <i class="fa fa-indent"></i></h3>
        <br>
        <p><%=pdet%></p>
    </div>
</div>
</div>
<!-- ---------title----------- -->
<div class="small-container">
    <div class="row row-2">
        <h2>Related Products</h2>
    </div>

</div>

<!-- --------------products-------------- -->
<div class="small-container">
<div class="row">
<% for(int i=0;i<pname1.size();i++){ %>
    <div class="col-4">
    <div class="sambhu">
    <form action="<%=request.getContextPath()%>/ProductDetailDataCollection" method="post">
    			<input name="s11" id="txt" type="text" value="<%=sid%>" >
                <input name="s12" id="txt" type="text" value="<%=pid1.get(i)%>">
                <input name="s13" id="txt" type="text" value="<%=sname%>" >
                <img src="<%=request.getContextPath()%>/websites/products images/<%=pimg5.get(i)%>"  onclick="submit()">
        </form>
        </div>
        <h4><%=pname1.get(i)%>....</h4>
        <p>Product Quantity:<%=pquan1.get(i)%></p>
        <p>Price: &#x20b9;<%=pprice1.get(i)%></p>
        <div id="sam23">
                <form action="<%=request.getContextPath()%>/DeleteProductInDetailPageDataCollection" method="post" class="item">
                <input name="s11" id="txt" type="text" value="<%=sid%>" >
                 <input name="s12" id="txt" type="text" value="<%=pid1.get(i)%>" >
                <input name="s13" id="txt" type="text" value="<%=sname%>" >
                <input name="s14" id="txt" type="text" value="<%=pid%>" >
                <button class="btn" type="submit">Delete</button>
                </form>
                <form action="<%=request.getContextPath()%>/UpdateSellerProductDataCollection" method="post" class="item">
        		<input name="s11" id="txt" type="text" value="<%=sid%>">
                <input name="s12" id="txt" type="number" value="<%=pid1.get(i)%>" >
                <input name="s13" id="txt" type="text" value="<%=sname%>" >
                <button class="btn" type="submit">Update</button>
                </form>
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
<!-- --------js for product gallery------- -->
<script>
    var ProductImg=document.getElementById("ProductImg");
    var SmallImg=document.getElementsByClassName("small-img");
    SmallImg[0].onclick=function(){
        ProductImg.src= SmallImg[0].src;
    }
    SmallImg[1].onclick=function(){
        ProductImg.src= SmallImg[1].src;
    }
    SmallImg[2].onclick=function(){
        ProductImg.src= SmallImg[2].src;
    }
    SmallImg[3].onclick=function(){
        ProductImg.src= SmallImg[3].src;
    }
</script>

</body>
</html>