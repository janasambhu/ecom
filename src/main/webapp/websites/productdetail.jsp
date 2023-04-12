<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product details - ecom</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/websites/style.css">
    <link 
  href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css" 
  rel="stylesheet"  type='text/css'>
</head>
<body>
    <div class="container">

        <div class="navbar">
            <div class="logo">
                <img src="<%=request.getContextPath()%>/websites/images/logo.png" width="125px">
            </div>
            <nav>
                <ul id="MenuItems">
                    <li><a href="">Home</a></li>
                    <li><a href="">Products</a></li>
                    <li><a href="">About</a></li>
                    <li><a href="">Contact</a></li>
                    <li><a href="">Account</a></li>
                </ul>
            </nav>
            <img src="<%=request.getContextPath()%>/websites/images/cart.png" class="cart-icon" width="30px" height="30px">
            <img src="<%=request.getContextPath()%>/websites/images/menu.png" class="menu-icon" onclick="menutoggle()">
        </div>

</div>
<!-- ----------single product details----------- -->
<div class="small-container single-product">
    <div class="row">
        <div class="col-2">
            <img src="images/gallery-1.jpg" width="100%" id="ProductImg">
            <div class="small-img-row">
                <div class="small-img-col">
                    <img src="<%=request.getContextPath()%>/websites/images/gallery-1.jpg" width="=100%" class="small-img">
                </div>
                <div class="small-img-col">
                    <img src="<%=request.getContextPath()%>/websites/images/gallery-2.jpg" width="=100%" class="small-img">
                </div>
                <div class="small-img-col">
                    <img src="<%=request.getContextPath()%>/websites/images/gallery-3.jpg" width="=100%" class="small-img">
                </div>
                <div class="small-img-col">
                    <img src="<%=request.getContextPath()%>/websites/images/gallery-4.jpg" width="=100%" class="small-img">
                </div>
            </div>
    </div>
    <div class="col-2">
        <p>Home / T-Shirt</p>
        <h1>Red Printed T-Shirt by HRX</h1>
        <h4>$50.00</h4>
        <select>
            <option select disabled>Select Size</option>
            <option value="">XXL</option>
            <option value="">XL</option>
            <option value="">Large</option>
            <option value="">Medium</option>
            <option value="">small</option>
        </select>
        <input type="number" value="1">
        <a href="" class="btn">Add To Cart</a>
        <h3>Product Details <i class="fa fa-indent"></i></h3>
        <br>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quis sit saepe fugiat veniam aliquid possimus quasi totam praesentium 
            suscipit qui asperiores corrupti, quo sequi necessitatibus? Tempore itaque magnam commodi velit!</p>
    </div>
</div>
</div>
<!-- ---------title----------- -->
<div class="small-container">
    <div class="row row-2">
        <h2>Related Products</h2>
        <p>View More</p>
    </div>

</div>

<!-- --------------products-------------- -->
<div class="small-container">
<div class="row">
    <div class="col-4">
        <img src="<%=request.getContextPath()%>/websites/images/product-9.jpg">
        <h4>Red Printed T-Shirt</h4>
        <div class="rating">
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star-half-o"></i>
            <i class="fa fa-star-o"></i>
            <i class="fa fa-star-o"></i>
        </div>
        <p>$50.00</p>
    </div>
    <div class="col-4">
        <img src="<%=request.getContextPath()%>/websites/images/product-10.jpg">
        <h4>Red Printed T-Shirt</h4>
        <div class="rating">
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star-half-o"></i>
            <i class="fa fa-star-o"></i>
        </div>
        <p>$50.00</p>
    </div>
    <div class="col-4">
        <img src="<%=request.getContextPath()%>/websites/images/product-11.jpg">
        <h4>Red Printed T-Shirt</h4>
        <div class="rating">
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star-half-o"></i>
            <i class="fa fa-star-o"></i>
        </div>
        <p>$70.00</p>
    </div>
    <div class="col-4">
        <img src="<%=request.getContextPath()%>/websites/images/product-12.jpg">
        <h4>Red Printed T-Shirt</h4>
        <div class="rating">
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star-o"></i>
        </div>
        <p>$40.00</p>
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
<!-- --------js for product gallery------- -->
<script>
    var ProductImg=document.getElementById("ProductImg");
    var SmallImg=document.getElementsByClassName("small-img");
    SmallImg[0].onclick=function(){
        ProductImg.src= SmallImg[0].src;
    }
    SmallImg[1].onclick=function(){
        ProductImg.src= SmallImg[1].src;
    }
    SmallImg[2].onclick=function(){
        ProductImg.src= SmallImg[2].src;
    }
    SmallImg[3].onclick=function(){
        ProductImg.src= SmallImg[3].src;
    }
</script>
</body>
</html>