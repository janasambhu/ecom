<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products - HitStore</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.1/css/fontawesome.min.css">
    <style>
        p{
            margin: 7px;
            font-size: 18px;
            color: black;
            font-family: sans-serif;
        }
        h2,h3{
            margin-top: 13px;
            font-family: sans-serif;
        }
    </style>
</head>
<body>
    <div class="container">

        <div class="navbar">
            <div class="logo">
                <img src="images/logo.png" width="125px">
            </div>
            <nav>
                <ul id="MenuItems">
                    <li><a href="<%=request.getContextPath()%>/websites/index.jsp">Home</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="<%=request.getContextPath()%>/websites/contact us.jsp">Contact</a></li>
                </ul>
            </nav>
            <img src="images/menu.png" class="menu-icon" onclick="menutoggle()">
        </div>

</div>
<div class="small-container">
    <div style="color:black"><br><h2 style="font-family: Sans-serif ;color:black;">About Us !</h2>
        <h2 style="font-family: Sans-serif ;text-align: center;">Welcome To <span id="W_Name1" >Ecom</span></h2>
        <p><span id="W_Name2">Ecom</span> is a Professional <span id="W_Type1">ecommerce</span> Platform. Here we will only provide you with interesting content that you will enjoy very much. We are committed to providing you the best of <span id="W_Type2">ecommerce</span>, with a focus on reliability and <span id="W_Spec">ecommerce</span>. we strive to turn our passion for <span id="W_Type3">ecommerce</span> into a thriving website. We hope you enjoy our <span id="W_Type4">ecommerce</span> as much as we enjoy giving them to you.</p>
        <p>I will keep on posting such valuable anf knowledgeable information on my Website for all of you. Your love and support matters a lot.</p>
        <p style="font-weight: bold; text-align: center;">Thank you For Visiting Our Site<br><br>
        <span style="color: blue; font-size: 16px; font-weight: bold; text-align: center;">Have a great day !</span></p></div><br><br>
</div>

<!-- --------footer-------- -->
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
</body>
</html>