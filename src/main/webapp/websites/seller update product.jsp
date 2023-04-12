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
#txt{
display:none;
}
#upl{
border:none;
background:none;
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
Products p=(Products) (request.getAttribute("product"));
//String sid=(String)(request.getAttribute("sid"));
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
String sid=p.getSellerId();
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
      <header class="header1">Current Product Details</header>

        <form action="<%=request.getContextPath()%>/UpdateProductDataCollection" name="f1" onsubmit="return matchpass()" enctype="multipart/form-data" method="post">
            <div class="form first">
                <div class="details personal">
               
                    <div class="fields">

                        <div class="input-field">
                            <label>Product Name</label>
                            <input type="text" name="name" placeholder="Enter product name" value="<%=pname%>" required>
                            <span class="spany" id="span1"></span>
                        </div>

                        <div class="input-field">
                            <label>Product Price</label>
                            <input type="number" name="price" placeholder="Enter product price" value="<%=pprice%>" required>
                            <span class="spany" id="span2"></span>
                        </div>

                        

                        <div class="input-field">
                            <label>Product Quantity</label>
                            <input type="number" name="quantity" placeholder="Enter product quantity" value="<%=pquan%>" required>
                            <span class="spany" id="span4"></span>
                        </div>

                        <div class="input-field">
                            <label>Product Details</label>
                            <input type="text" name="details" placeholder="Enter product details" value="<%=pdet%>" required>
                            <span class="spany" id="span6"></span>
                        </div>
                        <div class="input-field">
                            <label>Product Tags</label>
                            <textarea type="text" name="tags" placeholder="Enter product tags" rows="4" cols="50" required></textarea>
                            <span class="spany" id="span9"></span>
                        </div>
                       <div class="input-field">
                            <label>Product Image 1</label>
                            <input id="upl" type="file" name="pimage1" value="<%=pimg1%>" required>
                            <span class="spany" id="span7"></span>
                        </div>
                        <div class="input-field">
                            <label>Product Image 2</label>
                            <input id="upl" type="file" name="pimage2" value="<%=pimg2%>" required>
                            <span class="spany" id="span7"></span>
                        </div>
                        <div class="input-field">
                            <label>Product Image 3</label>
                            <input id="upl" type="file" name="pimage3" value="<%=pimg3%>" required>
                            <span class="spany" id="span7"></span>
                        </div>
                        <div class="input-field">
                            <label>Product Image 4</label>
                            <input id="upl" type="file" name="pimage4" value="<%=pimg4%>" required>
                            <span class="spany" id="span7"></span>
                        </div>
                        <div class="input-field" id="sid">
                            <label>Seller Id</label>
                            <input type="text"  name="sid" value="<%=sid%>">
                        </div>
                		<div class="input-field" id="sid">
                            <label>Product Id</label>
                            <input type="text"  name="pid" value="<%=pid%>">
                        </div>
                        
                        
                        <div class="input-field" id="sid">
                            <label>Seller Name</label>
                            <input type="text"  name="sname" value="<%=sname%>">
                        </div>

                    </div>
                </div>
                    <button class="nextBtn" type="submit">
                        <span class="btnText" >Update</span>
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
        var fname=document.f1.fname.value;
        var lname=document.f1.lname.value;
        var phone=document.f1.phone.value;
        var email=document.f1.email.value;
        var dob=document.f1.dob.value;
        var gender=document.f1.gender.value;
        var pass=document.f1.pass.value;
        var pass2=document.f1.pass2.value;
        var phoneno=/^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$/;
        var istrue=false;
        if(fname.length<3 || fname==null || fname==""){
            document.getElementById("span1").innerHTML="*First name must greater than 3";
             istrue=false;
        }
       else if(lname.length<3){
            document.getElementById("span2").innerHTML="*last name must greater than 3";
            istrue=false;
        }
       else if(phone.match(phoneno)){
             istrue=true;
        }
       else if(pass.length<4){
            document.getElementById("span7").innerHTML="*password must be atleast 8 character";
            istrue=false;
        }
       else if(pass==pass2){
            istrue=true;
        }
        else{
            document.getElementById("span8").innerHTML="*password must be same";
            istrue=false;
        }
        return istrue;
        }
    </script>


</body>
</html>