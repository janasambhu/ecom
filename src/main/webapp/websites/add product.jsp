<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add product</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/websites/registration.css">
</head>
<style>

    .spany{
        font-size: 13px;
        color: red;
        margin-top: 0px;
        margin-bottom: 10px;
        margin-left:10px;
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
    button{
font-size:16px;
background:none;
color: #555;
cursor:pointer;
}
#sid{
display:none;
}
#txt{
display:none;
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
#prev{
cursor:pointer;
}
#upl{
border:none;
background:none;
}
body{
    min-height: 100vh;
    color: #555;
    background: radial-gradient(#f9fbf9,#cadeca);
}
.container2 form button, .backBtn{
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
    background-color:  #44934a;;
    transition: all 0.4s linear;
    cursor: pointer;
    border-radius: 5px;
}
form button .backBtn:hover{
    background-color: #05470a;
    transition: 0.5s;
}
form button:hover{
    background-color: #05470a;
    transition: 0.5s;
}
@media only screen and (max-width:600px) {
.prod{
color:white;
}
}
@media only screen and (max-width:800px) {
.prod{
color:white;
}
}
</style>
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

String sid=(String)(request.getAttribute("sid"));
String sname=(String)(request.getAttribute("sname"));
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
                    <input name="s11" id="sid" type="text" value="<%=sid%>" >
                	<input name="s13" id="sid" type="text" value="<%=sname%>" >
                    <button type="submit" class="prod">Home</button>
                    </form>
                    </li>
                    <li>
                    <form action="<%=request.getContextPath()%>/DetailToSellerProductDataCollection" method="post">
                    <input name="s11" id="sid" type="text" value="<%=sid%>" >
                	<input name="s13" id="sid" type="text" value="<%=sname%>" >
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
                </ul>
            </nav>
            <img src="<%=request.getContextPath()%>/websites/images/menu.png" class="menu-icon" onclick="menutoggle()">
        </div>
</div>

<!-- ------container-------- -->

    <div class="container2">
      <header class="header1">Add Product</header>
        <form action="<%=request.getContextPath()%>/AddProductDataCollection" name="f1" onsubmit="return matchpass()" enctype="multipart/form-data"  method="post">
            <div class="form first">
                <div class="details personal">
                    <span class="title">Product Details</span>
                    <div class="fields">

                        <div class="input-field">
                            <label>Product Name</label>
                            <input type="text" name="name" placeholder="Enter product name" required>
                            <span class="spany" id="span1"></span>
                        </div>

                        <div class="input-field">
                            <label>Product Price</label>
                            <input type="number" name="price" placeholder="Enter product price" required>
                            <span class="spany" id="span2"></span>
                        </div>                      
                        <div class="input-field">
                            <label>Product Quantity</label>
                            <input type="number" name="quantity" placeholder="Enter product quantity" required>
                            <span class="spany" id="span4"></span>
                        </div>

                        <div class="input-field">
                            <label>Product Details</label>
                            <input type="text" name="details" placeholder="Enter product details" required>
                            <span class="spany" id="span6"></span>
                        </div>
                        <div class="input-field">
                            <label>Product Tags</label>
                            <textarea type="text" name="tags" placeholder="Enter product tags" rows="4" cols="50" required></textarea>
                            <span class="spany" id="span9"></span>
                        </div>
                        <div class="input-field">
                            <label>Product Image 1</label>
                            <input id="upl" type="file" name="pimage1" required>
                            <span class="spany" id="span7"></span>
                        </div>
                        <div class="input-field">
                            <label>Product Image 2</label>
                            <input id="upl" type="file" name="pimage2" required>
                            <span class="spany" id="span7"></span>
                        </div>
                        <div class="input-field">
                            <label>Product Image 3</label>
                            <input id="upl" type="file" name="pimage3" required>
                            <span class="spany" id="span7"></span>
                        </div>
                        <div class="input-field">
                            <label>Product Image 4</label>
                            <input id="upl" type="file" name="pimage4" required>
                            <span class="spany" id="span7"></span>
                        </div>
                        
                        <div class="input-field" id="sid">
                            <label>Seller Id</label>
                            <input type="text"  name="sid" value="<%=sid%>">
                           
                        </div>
                        <div class="input-field" id="sid">
                            <label>Seller Name</label>
                            <input type="text"  name="sname" value="<%=sname%>">
                           
                        </div>
                       
                    </div>

                </div>
                    <button class="nextBtn" type="submit" value="submit">
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
                <p>Our Purpose Is To Sustainably Make the Pleasure and Benifits of Sports Accessible to the Many. </p>
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
        var name=document.f1.name.value;
        var price=document.f1.price.value;
        var quantity=document.f1.quantity.value;
        var details=document.f1.details.value;
        var tags=document.f1.tags.value;
        var image=document.f1.image.value;
        var category=document.f1.category.value;
        var istrue =true;
//        console.log(name);
//        console.log(price);
//        console.log(quantity);
//        console.log(details);
//        console.log(image);
//        console.log(category);
        if(name.length>60 || name==null || name==""){
            document.getElementById("span1").innerHTML="*product name must between 15 to 60 characters";
             istrue=false;
        }
        if(price<1){
            document.getElementById("span2").innerHTML="*product price must greater than $1";
            istrue=false;
        }
       if(quantity==0){
        document.getElementById("span4").innerHTML="*product quantity start from 1";
             istrue=false;
        }
       if(details.length<10 ||details==null||details==""){
            document.getElementById("span6").innerHTML="*product detail must be atleast 10 character";
            istrue=false;
        }
       if(tags.length<10 ||tags==null || tags==""){
           document.getElementById("span9").innerHTML="*product detail must be atleast 10 character";
           istrue=false;
       }
        if(image.length<4 || image=="" || image==null){
        document.getElementById("span7").innerHTML="*Invalid image name";
            istrue=false;
        }
       
        return istrue;
        }
        
        
    </script>


</body>
</html>