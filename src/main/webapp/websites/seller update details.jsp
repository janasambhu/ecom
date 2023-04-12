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
Sellers s=(Sellers) (request.getAttribute("seller"));
//String sid=(String)(request.getAttribute("sid"));
String sname1=(String)(request.getAttribute("sname"));
int sid=s.getSellerId();
//String sname=s.getSellername();
String ename=s.getEnterprisename();
String semail=s.getEmail();
String sphno=s.getPhno();
String saddress=s.getAddress();
String spwd=s.getPwd();
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
                	<input name="s13" id="sid" type="text" value="<%=sname1%>" >
                    <button type="submit" class="prod">Home</button>
                    </form>
                    </li>
                    <li>
                    <form action="<%=request.getContextPath()%>/DetailToSellerProductDataCollection" method="post">
                    <input name="s11" id="sid" type="text" value="<%=sid%>" >
                	<input name="s13" id="sid" type="text" value="<%=sname1%>" >
                    <button type="submit" class="prod">Products</button>
                    </form>
                    </li>
                    <li><a href="#">Hello, <%=sname1%></a></li>
                                       
                </ul>
            </nav>
            <img src="<%=request.getContextPath()%>/websites/images/menu.png" class="menu-icon" onclick="menutoggle()">
        </div>
</div>

<!-- ------container-------- -->

    <div class="container2">
      <header class="header1">Seller Current Details</header>

        <form action="<%=request.getContextPath()%>/UpdateSellerDetailDataCollection" name="f1" onsubmit="return matchpass()" method="post">
            <div class="form first">
                <div class="details personal">
                    <span class="title">Seller Details</span>
                    <div class="fields">

                        <div class="input-field">
                            <label>Full Name</label>
                            <input type="text" name="fname" placeholder="Enter full name" value="<%=sname1%>" required>
                            <span class="spany" id="span1"></span>
                        </div>

                        <div class="input-field">
                            <label>Enterprise Name</label>
                            <input type="text" name="enterprise" placeholder="Enter enterprise name" value="<%=ename%>" required>
                            <span class="spany" id="span2"></span>
                        </div>

                        <div class="input-field">
                            <label>Email</label>
                            <input type="email" name="email" placeholder="Enter your email" value="<%=semail%>" required>
                            <span class="spany" id="span3"></span>
                        </div>
                      
                        <div class="input-field">
                            <label>Phone Number</label>
                            <input type="number" name="phone" placeholder="Enter phone number" value="<%=sphno %>" required>
                            <span class="spany" id="span4"></span>
                        </div>
                        <div class="input-field">
                            <label>Address</label>
                            <input type="text" name="address" placeholder="Enter Address" value="<%=saddress%>" required>
                            <span class="spany" id="span5"></span>
                        </div>
                        <div class="input-field">
                            <label>Password</label>
                            <input type="text" name="pass" placeholder="Enter Password" value="<%=spwd%>" required>
                            <span class="spany" id="span6"></span>
                        </div>
                        <div class="input-field">
                            <label>Confirm Password</label>
                            <input type="text" name="pass2" placeholder="Re-enter Password" value="<%=spwd%>" required>
                            <span class="spany" id="span7"></span>
                        </div>
                        <div class="input-field" id="sid">
                            <label>Seller Id</label>
                            <input type="text" name="sid" value="<%=sid%>" required>                            
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