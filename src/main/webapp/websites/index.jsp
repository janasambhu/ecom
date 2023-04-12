<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - ecom</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/websites/style.css">
    <link 
  href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css" 
  rel="stylesheet"  type='text/css'>
</head>
<body>
<div class="header">

    <div class="container">

        <div class="navbar">
            <div class="logo">
               <a href="index.html"><img src="<%=request.getContextPath()%>/websites/images/logo.png" width="125px"></a>
            </div>
            <nav>
                <ul id="MenuItems">
                    <li><a href="#">Home</a></li>                    
                    <li><a href="<%=request.getContextPath()%>/websites/about us.jsp">About</a></li>
                    <li><a href="<%=request.getContextPath()%>/websites/contact us.jsp">Contact</a></li>
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
<div class="row">
<div class="col">
    <h1>Give Your Workout <br> A New Style!</h1>
    <p>Success isn't always about greatness. It's about consistency. Consistent <br> hard work gains success. greatness will come.</p>
    <a href="" class="btn">Explore Now &#8594;</a>
</div>
<div class="col-2">
<img src="<%=request.getContextPath()%>/websites/images/image1.png">
</div>
</div>

</div>
</div>

<!---------featured categories-------->
<div class="categories">
    <div class="small-container">
    <div class="row">
        <div class="col-3">
            <img src="<%=request.getContextPath()%>/websites/images/category-1.jpg">
        </div>
        <div class="col-3">
            <img src="<%=request.getContextPath()%>/websites/images/category-2.jpg">
        </div>
        <div class="col-3">
            <img src="<%=request.getContextPath()%>/websites/images/category-3.jpg">
        </div>
    </div>
</div>
</div>
<!---------featured Products-------->
<div class="small-container">
    <h2 class="title">Featured Products</h2>
    <div class="row">
        <div class="col-4">
           <a href="productdetail.html"><img src="<%=request.getContextPath()%>/websites/images/product-1.jpg"></a>
           <a href="productdetail.html"><h4>Red Printed T-Shirt</h4></a>
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
            <img src="<%=request.getContextPath()%>/websites/images/product-2.jpg">
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
            <img src="<%=request.getContextPath()%>/websites/images/product-3.jpg">
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
            <img src="<%=request.getContextPath()%>/websites/images/product-4.jpg">
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
    <h2 class="title">Latest Products</h2>
    <div class="row">
        <div class="col-4">
            <img src="<%=request.getContextPath()%>/websites/images/product-5.jpg">
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
            <img src="<%=request.getContextPath()%>/websites/images/product-6.jpg">
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
            <img src="<%=request.getContextPath()%>/websites/images/product-7.jpg">
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
            <img src="<%=request.getContextPath()%>/websites/images/product-8.jpg">
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
        <div class="col-4">
            <img src="<%=request.getContextPath()%>/websites/images/product-9.jpg">
            <h4>Red Printed T-Shirt</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p>$60.00</p>
        </div>
        <div class="col-4">
            <img src="<%=request.getContextPath()%>/websites/images/product-10.jpg">
            <h4>Red Printed T-Shirt</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p>$100.00</p>
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
            <p>$90.00</p>
        </div>
        <div class="col-4">
            <img src="<%=request.getContextPath()%>/websites/images/product-12.jpg">
            <h4>Red Printed T-Shirt</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o"></i>
                <i class="fa fa-star-o"></i>
            </div>
            <p>$95.00</p>
        </div>
    </div>

</div>
<!---------offer-------->
<div class="offer">
    <div class="small-container">
        <div class="row">
            <div class="col-2">
                <img src="<%=request.getContextPath()%>/websites/images/exclusive.png" class="offer-img">
            </div>
            
            <div class="col-2">
                <p>Exclusive Available on HitStore</p>
                <h1>Smart Band 4</h1>
                <small>The Mi Smart Band 4 features a 39.9% larger (than Mi Band 3) Amoled color full-touch display width
                    adjustable brightness, so everything is clear as can be.
                </small>
                <a href="" class="btn">Buy Now &#8594;</a>
            </div>
        </div>
</div></div>
<!------testimonial------->
    <div class="testimonial">
        <div class="small-container">
            <div class="row">
                <div class="col-3">
                    <i class="fa fa-quote-left"></i>
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum earum, possimus,
                         ipsam velit sed ut quae pariatur iste amet quibusdam explicabo, aliquam laboriosam 
                         cum commodi iusto a vitae illo sequi!
                    </p>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i>
                    </div>
                    <img src="<%=request.getContextPath()%>/websites/images/user-1.png" >
                    <h3>Sean Parker</h3>
                </div>
                <div class="col-3">
                    <i class="fa fa-quote-left"></i>
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum earum, possimus,
                         ipsam velit sed ut quae pariatur iste amet quibusdam explicabo, aliquam laboriosam 
                         cum commodi iusto a vitae illo sequi!
                    </p>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i>
                    </div>
                    <img src="<%=request.getContextPath()%>/websites/images/user-2.png" >
                    <h3>Mike Smith</h3>
                </div>
                <div class="col-3">
                    <i class="fa fa-quote-left"></i>
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum earum, possimus,
                         ipsam velit sed ut quae pariatur iste amet quibusdam explicabo, aliquam laboriosam 
                         cum commodi iusto a vitae illo sequi!
                    </p>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i>
                    </div>
                    <img src="<%=request.getContextPath()%>/websites/images/user-3.png" >
                    <h3>Mabel joe</h3>
                </div>

            </div>
        </div>
    </div>

<!-- ----------brands---------- -->
<div class="brands">
    <div class="small-container">
        <div class="row">
            <div class="col-5">
                <img src="<%=request.getContextPath()%>/websites/images/logo-godrej.png">
            </div>
            <div class="col-5">
                <img src="<%=request.getContextPath()%>/websites/images/logo-oppo.png">
            </div>
            <div class="col-5">
                <img src="<%=request.getContextPath()%>/websites/images/logo-coca-cola.png">
            </div>
            <div class="col-5">
                <img src="<%=request.getContextPath()%>/websites/images/logo-paypal.png">
            </div>
            <div class="col-5">
                <img src="<%=request.getContextPath()%>/websites/images/logo-philips.png">
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
</body>
</html>