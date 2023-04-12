<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Registration - ecom</title>
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
    form .drop1{
	 width: 100%;
    height: 45px;
    margin: 10px 0;
    padding: 0 10px;
    border: 1px solid #ccc;
    border-radius:5px;
    margin-bottom:24px
    
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
                    <li>
                        <select onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">
                            <option disabled selected value="">Registration</option>
                            <option value="customer registration.jsp">Customer</option>
                            <option value="seller registration.jsp">Seller</option>
                        </select>
                    </li>
                </ul>
            </nav>
            <img src="<%=request.getContextPath()%>/websites/images/menu.png" class="menu-icon" onclick="menutoggle()">
        </div>
</div>

<!-- ------container-------- -->

    <div class="container2">
      <header class="header1">Customer Registration</header>

        <form action="<%=request.getContextPath()%>/CustomersRegDataCollection" name="f1" onsubmit="return matchpass()" method="post">
            <div class="form first">
                <div class="details personal">
                    <span class="title">Customer Details</span>
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
                            <label>Date of Birth</label>
                            <input type="date" name="dob" placeholder="Enter date of birth" required>
                            <span class="spany" id="span5"></span>
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
                            <label>Password</label>
                            <input type="password" name="pass" placeholder="Enter Password" required>
                            <span class="spany" id="span7"></span>
                        </div>
                        <div class="input-field">
                            <label>Confirm Password</label>
                            <input type="password" name="pass2" placeholder="Re-enter Password" required>
                            <span class="spany" id="span8"></span>
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
        var phoneno=/^(0|91)?[6-9][0-9]{9}$/;
        var istrue=false;
        console.log(fname);
        console.log(lname);
        console.log(phone);
        console.log(email);
        console.log(dob);
        console.log(gender);
        console.log(pass);
        console.log(pass2);
        if(fname.length<3 || fname==null || fname==""){
            document.getElementById("span1").innerHTML="*First name must greater than 3";
             istrue=false;
        }
       else if(lname.length<3){
            document.getElementById("span2").innerHTML="*last name must greater than 3";
            istrue=false;
        }
        if(!phoneno.test(phone)){
    	   document.getElementById("span3").innerHTML="*mobile number format is incorrect";
             istrue=false;
        }
       else if(pass.length<8){
            document.getElementById("span7").innerHTML="*password must be atleast 8 character";
            istrue=false;
        }
       else if(pass!=pass2){
    	   document.getElementById("span8").innerHTML="*password must be same";
           istrue=false;
        }
       else if(phone.match(phoneno)){
           istrue=true;
      }
else{
document.getElementById("span3").innerHTML="*Phone number must be 10 digit";
istrue=false;
}
        return istrue;
        }
    </script>


</body>
</html>