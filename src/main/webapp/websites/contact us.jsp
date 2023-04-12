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



</style>
<body>

    <div class="container">

        <div class="navbar">
            <div class="logo">
                <img src="<%=request.getContextPath()%>/websites/images/logo.png" width="125px">
            </div>
            <nav>
                <ul id="MenuItems">
                    <li><a href="<%=request.getContextPath()%>/websites/index.jsp">Home</a></li>
                    
                    <li><a href="<%=request.getContextPath()%>/websites/about us.jsp">About</a></li>
                    <li><a href="#">Contact</a></li>
                    
                </ul>
            </nav>
            <img src="<%=request.getContextPath()%>/websites/images/menu.png" class="menu-icon" onclick="menutoggle()">
        </div>
</div>

<!-- ------container-------- -->

    <div class="container2">
      <header class="header1">Contact Us</header>

        <form action="" name="f1" onsubmit="return matchpass()" method="post">
            <div class="form first">
                <div class="details personal">
               
                    <div class="fields">

                        <div class="input-field">
                            <label>First Name</label>
                            <input type="text" name="fname" placeholder="Enter first name" required>
                            <span class="spany" id="span1"></span>
                        </div>

                        <div class="input-field">
                            <label>Last Name</label>
                            <input type="text" name="lname" placeholder="Enter last name" required>
                            <span class="spany" id="span2"></span>
                        </div>

                        <div class="input-field">
                            <label>Phone Number</label>
                            <input type="number" name="phone" placeholder="Enter phone number" required>
                            <span class="spany" id="span3"></span>
                        </div>

                        <div class="input-field">
                            <label>Email</label>
                            <input type="email" name="email" placeholder="Enter your email" required>
                            <span class="spany" id="span4"></span>
                        </div>
                        <div class="input-field">
                            <label>Write your message</label>
                            <textarea name="message" placeholder="Enter your message" rows="4" cols="50" required></textarea>
                            <span class="spany" id="span4"></span>
                        </div>
							<div class="input-field">
                            
                            
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