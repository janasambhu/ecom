
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer login - ecom</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/websites/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.1/css/fontawesome.min.css">
</head>
<body>
    <div class="container">

        <div class="navbar">
            <div class="logo">
                <img src="<%=request.getContextPath()%>/websites/images/logo.png" width="125px">
            </div>
            <nav>
                <ul id="MenuItems">
                    <li><a href="index.jsp">Home</a></li>
                    
                    <li><a href="#">About</a></li>
                    <li><a href="#">Contact</a></li>
                     <li>
                        <select onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">
                            <option disabled selected value="">Login</option>
                            <option value="<%=request.getContextPath()%>/websites/customer login.jsp">Customer</option>
                            <option value="<%=request.getContextPath()%>/websites/seller login.jsp">Seller</option>
                        </select>
                    </li>
                    <li>
                        <select onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">
                            <option disabled selected value="">Registration</option>
                            <option value="<%=request.getContextPath()%>/websites/customer registration.jsp">Customer</option>
                            <option value="<%=request.getContextPath()%>/websites/seller registration.jsp">Seller</option>
                        </select>
                    </li>
                </ul>
            </nav>
            
            <img src="<%=request.getContextPath()%>/websites/images/menu.png" class="menu-icon" onclick="menutoggle()">
        </div>

</div>
<!-- ----------account-page----------- -->
<div class="account-page">
    <div class="container">
        <div class="row">
            <div class="col-2">
                <img src="<%=request.getContextPath()%>/websites/images/image1.png" width="100%">
            </div>
            <div class="col-2">
                <div class="form-container">
                    <div class="form-btn">
                        <span>Login as Customer</span>
                        
                        <hr id="Indicator">
                    </div>
                    <form action="<%=request.getContextPath()%>/CustomersLoginDataCollection" id="LoginForm" method="post">
                        <input type="text" name="phone" placeholder="Mobile Number">
                    
                        <input type="password" name="pass" placeholder="Password">
                      
                        <button type="submit" class="btn">Login</button>
                        <a href="">Forgot password</a>
                    </form>
                </div>
            </div>
        </div>
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
</script>
<!-- -----------js for toggle form--------- -->

</body>
</html>