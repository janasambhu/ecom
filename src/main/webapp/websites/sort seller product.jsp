<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seller account - ecom</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/websites/style.css">
  
    <style type="text/css">
   .button1 {
	display: flex;
	justify-content: flex-end;
	margin-right: -4px;
}

.button1 button{
    margin:10px 8px;
    cursor:pointer;
}

#txt{
display:none;

}
#sort{
	margin-left: 0px;
    /* margin-right: 104px; */
    /* display: flex; */
    width: 65px;
    text-align: center;
    height: 25px;
    border-radius: 10px;
    margin-top: 5px;
    background: #44934a;
    color: #ffff;
    cursor:pointer;
}
#sort:hover{
background: #05470a;
}
.btn{
margin:13px 0;
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

 .prod{
 background:none;
 outline: none;
 font-family: sans-serif;
 border-top-style: hidden;
  border-right-style: hidden;
  border-left-style: hidden;
  border-bottom-style: hidden;
  font-size:16px;
  color: #555;
  cursor:pointer;
}
.prod:hover{
background:none;
}
.sambhu{
height:100%;
width:100%;
overflow: hidden;
position: relative;
margin-bottom:0px
}
.sambhu img{
height: 300px;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 10px;
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
#spa{
height: 34px;
    width: 50%;
    margin-left: 19%;
}
.sarch1{
width:75%;
}
.prod{
color:white;
}
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
#spa{
height: 34px;
    width: 50%;
    margin-left: 19%;
}
.sarch1{
width:75%;
}
.prod{
color:white;
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
Products p=(Products) (request.getAttribute("Products"));
String sid=(String)(request.getAttribute("sid"));
String sname=(String)(request.getAttribute("sname"));
ArrayList<String> pname=p.getPname();
ArrayList<String> pprice=p.getPprice();
ArrayList<String> pquan=p.getPquantity();
ArrayList<String> pdet=p.getPdetails();
ArrayList<String> pimg=p.getPimage1();
ArrayList<String> pid=p.getPid();
%>


    <div class="container">

        <div class="navbar">
            <div class="logo">
                <img src="<%=request.getContextPath()%>/websites/images/logo.png" width="125px">
            </div>
            <nav>
                <ul id="MenuItems">
                    <li><a href="#">Home</a></li>
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
                    <form action="<%=request.getContextPath()%>/LogOutDataCollection" method="post">
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
<!-- -------------cart items details------------- -->
<div class="small-container">
<div class="button1">
<form action="<%=request.getContextPath()%>/GoingToAddToProductPage" method="post">
<input name="s11" id="txt" type="text" value="<%=sid%>" >
<input name="s13" id="txt" type="text" value="<%=sname%>" >
<button class="btn" type="submit">Add Product</button>
</form>
</div>
    <div class="row row-2">
        <h2>
            All Products
        </h2>
        <form action="<%=request.getContextPath()%>/SortSellerProductDataCollection" method="post">  
        <select name="s1">
            <option value="0">All Products</option>
            <option value="shirt">Shirt</option>
            <option value="boot">boot</option>
            <option value="pant">pant</option>
            <option value="watch">watch</option>
        </select><br>
         <input name="s6" id="txt" type="text" value="<%=sid%>" >
         <input name="s7" id="txt" type="text" value="<%=sname%>">
        <button id="sort" type="submit">sort</button>
    </form>   
    </div>
    
        <div class="row">
        
        <% for(int i=0;i<pname.size();i++){ %>
            <div class="col-4">
            <div class="sambhu">
            <form action="<%=request.getContextPath()%>/ProductDetailDataCollection" method="post">
            	<input name="s11" id="txt" type="text" value="<%=sid%>" >
                <input name="s12" id="txt" type="text" value="<%=pid.get(i)%>" >   
                <input name="s13" id="txt" type="text" value="<%=sname%>" >         	
                <img src="<%=request.getContextPath()%>/websites/products images/<%=pimg.get(i)%>" onclick="submit()">
                </form>
                </div>
                <h4><%=pname.get(i)%></h4>               
                <p>Product Quantity:<%=pquan.get(i)%></p>
                <p>Price: &#x20b9;<%=pprice.get(i)%></p>
                <p id="txt"><%=pid.get(i)%></p>
                <div id="sam23">
                <form action="<%=request.getContextPath()%>/DeleteSellerProductDataCollection" method="post" class="item">
                <input name="s11" id="txt" type="text" value="<%=sid%>">
                <input name="s12" id="txt" type="text" value="<%=pid.get(i)%>" >
                <input name="s13" id="txt" type="text" value="<%=sname%>" >
                <button class="btn" type="submit">Delete</button>
                </form>
                <form action="<%=request.getContextPath()%>/UpdateSellerProductDataCollection" method="post" class="item">
        		<input name="s11" id="txt" type="text" value="<%=sid%>">
                <input name="s12" id="txt" type="number" value="<%=pid.get(i)%>" >
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

</body>
</html>