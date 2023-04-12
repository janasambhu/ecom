<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seller Registration - ecom</title>
    <link rel="stylesheet" href="registration.css">
</head>
<style>
    .spany{
        font-size: 13px;
        color: red;
        margin-top: 0px;
        margin-bottom: 10px;
        margin-left:10px;
    }



</style>
<body>

    <div class="container">

        <div class="navbar">
            <div class="logo">
                <img src="images/logo.png" width="125px">
            </div>
            <nav>
                <ul id="MenuItems">
                    <li><a href="index.jsp">Home</a></li>
                    
                    <li><a href="">About</a></li>
                    <li><a href="">Contact</a></li>
                    <li>
                        <select onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">
                            <option disabled selected value="">Login</option>
                            <option value="customer login.html">Customer</option>
                            <option value="seller login.html">Seller</option>
                        </select>
                    </li>
                </ul>
            </nav>
            <img src="images/menu.png" class="menu-icon" onclick="menutoggle()">
        </div>
</div>

<!-- ------container-------- -->

    <div class="container2">
      <header class="header1">Seller Registration</header>

        <form action="<%=request.getContextPath()%>/SellersRegDataCollection" name="f1" onsubmit="return matchpass()" method="post">
            <div class="form first">
                <div class="details personal">
                    <span class="title">Seller Details</span>
                    <div class="fields">

                        <div class="input-field">
                            <label>Full Name</label>
                            <input type="text" name="fname" placeholder="Enter full name" required>
                            <span class="spany" id="span1"></span>
                        </div>

                        <div class="input-field">
                            <label>Enterprise Name</label>
                            <input type="text" name="enterprise" placeholder="Enter enterprise name" required>
                            <span class="spany" id="span2"></span>
                        </div>

                        <div class="input-field">
                            <label>Email</label>
                            <input type="email" name="email" placeholder="Enter your email" required>
                            <span class="spany" id="span3"></span>
                        </div>
                      
                        <div class="input-field">
                            <label>Phone Number</label>
                            <input type="phone" name="phone" placeholder="Enter phone number" required>
                            <span class="spany" id="span4"></span>
                        </div>
                        <div class="input-field">
                            <label>Address</label>
                            <input type="text" name="address" placeholder="Enter Address" required>
                            <span class="spany" id="span5"></span>
                        </div>
                        <div class="input-field">
                            <label>Password</label>
                            <input type="password" name="pass" placeholder="Enter Password" required>
                            <span class="spany" id="span6"></span>
                        </div>
                        <div class="input-field">
                            <label>Confirm Password</label>
                            <input type="password" name="pass2" placeholder="Re-enter Password" required>
                            <span class="spany" id="span7"></span>
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
                    <img src="images/play-store.png">
                    <img src="images/app-store.png">
                </div>
            </div>
            <div class="footer-col-2">
                <img src="images/logo-white.png">
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