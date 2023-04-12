<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seller Registration - ecom</title>
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
#sid{
display:none;
}
@media only screen and (max-width:600px){
.prod{
color:#fff;
}
}
@media only screen and (max-width:800px){
.prod{
color:#fff;
}
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
#box{
display:none;
}
#cart1{
background:none;
border:none;
cursor:pointer;
}
.drop1{
height:44px;
border-radius:5px;
margin-bottom:3px;
}
</style>
<body>

<%@ page import="java.util.*  ,model.*" %>
<% 
Customers c=(Customers) (request.getAttribute("customer"));
String cname=(String)(request.getAttribute("cname"));
int cid=c.getCustomerId();
String fname=c.getFirstname();
String lname=c.getLastname();
String phno=c.getPhno();
String email=c.getEmail();
String pwd=c.getPwd();
String dob=c.getDob();
String gender=c.getGender();
%>



    <div class="container">

        <div class="navbar">
            <div class="logo">
                <img src="<%=request.getContextPath()%>/websites/images/logo.png" width="125px">
            </div>
            <nav>
                <ul id="MenuItems">
                   
                    <li>
                    <form action="<%=request.getContextPath()%>/CustomerDetailToProductsDataCollection" method="post">
                    <input name="s11" id="sid" type="text" value="<%=cid%>" >
                	<input name="s12" id="sid" type="text" value="<%=fname%>" >
                    <button type="submit" class="prod">Home</button>
                    </form>
                    </li>
                    <li>
                    <form action="<%=request.getContextPath()%>/CustomerDetailToProductsDataCollection" method="post">
                    <input name="s11" id="sid" type="text" value="<%=cid%>" >
                	<input name="s12" id="sid" type="text" value="<%=fname%>" >
                    <button type="submit" class="prod">Products</button>
                    </form>
                    </li>
                    <li><a href="<%=request.getContextPath()%>/websites/order.jsp">My Orders</a></li>
                    <li><a href="#">Hello, <%=fname%></a></li>
                                       
                </ul>
            </nav>
            <form action="<%=request.getContextPath()%>/CartDataCollection"  method="post">
            <input type="text" id="box" name="c-id" value="<%=cid%>">
            <input type="text" id="box" name="cname" value="<%=cname%>">
         <button type="submit" id="cart1"> <img src="<%=request.getContextPath()%>/websites/images/cart.png"  class="cart-icon" width="30px" height="30px"></button>
            </form>
            <img src="<%=request.getContextPath()%>/websites/images/menu.png" class="menu-icon" onclick="menutoggle()">
        </div>
</div>

<!-- ------container-------- -->

    <div class="container2">
      <header class="header1">Customer Current Details</header>

        <form action="<%=request.getContextPath()%>/UpdateCustomerDetailDataCollection" name="f1" onsubmit="return matchpass()" method="post">
            <div class="form first">
                <div class="details personal">
                    <span class="title">Customer Details</span>
                    <div class="fields">

                        <div class="input-field">
                            <label>First Name</label>
                            <input type="text" name="fname" placeholder="Enter first name" value="<%=fname%>" required>
                            <span class="spany" id="span1"></span>
                        </div>
                        <div class="input-field">
                            <label>Last Name</label>
                            <input type="text" name="lname" placeholder="Enter first name" value="<%=lname%>" required>
                            <span class="spany" id="span1"></span>
                        </div>
						 <div class="input-field">
                            <label>Gender</label>
                           <select class="drop1" name="drop-down">
       						<option value="male">Male</option>
        					<option value="female">Female</option>
        					<option value="others">Others</option>
    					</select>
                        </div>
                        <div class="input-field">
                            <label>Phone No.</label>
                            <input type="text" name="phone" placeholder="Enter enterprise name" value="<%=phno%>" required>
                            <span class="spany" id="span2"></span>
                        </div>

                        <div class="input-field">
                            <label>Email</label>
                            <input type="email" name="email" placeholder="Enter your email" value="<%=email%>" required>
                            <span class="spany" id="span3"></span>
                        </div>
                      <div class="input-field">
                            <label>Date Of Birth</label>
                            <input type="date" name="dob" placeholder="Re-enter Password" value="<%=dob%>" required>
                            <span class="spany" id="span7"></span>
                        </div>
                       
                       
                        <div class="input-field">
                            <label>Password</label>
                            <input type="text" name="pass" placeholder="Enter Password" value="<%=pwd%>" required>
                            <span class="spany" id="span6"></span>
                        </div>
                        
                         <div class="input-field">
                            
                        </div>
                        
                        <div class="input-field" id="sid">
                            <label>Customer Id</label>
                            <input type="text" name="cid" value="<%=cid%>" required>                            
                        </div>
                        <div class="input-field" id="sid">
                            <label>Customer Name</label>
                            <input type="text" name="cname" value="<%=cname%>" required>                            
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
        var phone=document.f1.phone.value;
        var enter=document.f1.enterprise.value;
        var pass=document.f1.pass.value;
        var pass2=document.f1.pass2.value;
        var phoneno=/^\d{10}$/;
        var istrue=false;
        console.log(phone);
        if(enter.length<8){
            document.getElementById("span2").innerHTML="*Enterprise name must 8 character long";
            istrue=false;
        }
        else if(pass.length<8){
            document.getElementById("span6").innerHTML="*password must be atleast 8 character";
            istrue=false;
        }
       else if(pass!=pass2){
    	   document.getElementById("span7").innerHTML="*password must be same";
           istrue=false;
        }
 else if(phone.match(phoneno)){
             istrue=true;
        }
else{
document.getElementById("span4").innerHTML="*Phone number must be 10 digit";
istrue=false;
}
        return istrue;
        }
    </script>


</body>
</html>