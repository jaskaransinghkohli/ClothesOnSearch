
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from themes.rokaux.com/unishop/v3.0/template-1/account-login.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 16 Jun 2018 11:06:41 GMT -->
<head>
<meta charset="utf-8">
<title>Clothes On Search / Login or Register Account</title>
<!-- SEO Meta Tags-->
<meta name="description"
	content="Unishop - Universal E-Commerce Template">
<meta name="keywords"
	content="shop, e-commerce, modern, flat style, responsive, online store, business, mobile, blog, bootstrap 4, html5, css3, jquery, js, gallery, slider, touch, creative, clean">
<meta name="author" content="Rokaux">
<!-- Mobile Specific Meta Tag-->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<!-- Favicon and Apple Icons-->
<link rel="icon" type="image/x-icon" href="favicon.ico">
<link rel="icon" type="image/png" href="favicon.png">
<link rel="apple-touch-icon" href="touch-icon-iphone.png">
<link rel="apple-touch-icon" sizes="152x152" href="touch-icon-ipad.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="touch-icon-iphone-retina.png">
<link rel="apple-touch-icon" sizes="167x167"
	href="touch-icon-ipad-retina.png">
<!-- Vendor Styles including: Bootstrap, Font Icons, Plugins, etc.-->
<link rel="stylesheet" media="screen" href="css/vendor.min.css">
<!-- Main Template Styles-->
<link id="mainStyles" rel="stylesheet" media="screen"
	href="css/styles.min.css">
<!-- Customizer Styles-->
<link rel="stylesheet" media="screen"
	href="customizer/customizer.min.css">
<!-- Google Tag Manager-->
<script>
	(function(w, d, s, l, i) {
		w[l] = w[l] || [];
		w[l].push({
			'gtm.start' : new Date().getTime(),
			event : 'gtm.js'
		});
		var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l='
				+ l
				: '';
		j.async = true;
		j.src = '../../../../www.googletagmanager.com/gtm5445.html?id=' + i
				+ dl;
		f.parentNode.insertBefore(j, f);
	})(window, document, 'script', 'dataLayer', 'GTM-T4DJFPZ');
</script>
<!-- Modernizr-->
<script src="js/modernizr.min.js"></script>
</head>
<!-- Body-->
<body>
	<!-- Off-Canvas Category Menu-->
	<div class="offcanvas-container" id="shop-categories">
		<div class="offcanvas-header">
			<h3 class="offcanvas-title">Shop Categories</h3>
		</div>
		<nav class="offcanvas-menu">
			<ul class="menu">
				<li class="has-children"><span><a href="#">Men's
							Wear</a><span class="sub-menu-toggle"></span></span>
					<ul class="offcanvas-submenu">
						<li><a href="#">Shirts</a></li>
						<li><a href="#">T-Shirts</a></li>
						<li><a href="#">Payjama's</a></li>
						<li><a href="#">Trousers</a></li>
						<li><a href="#">Denims</a></li>
						<li><a href="#">Casuals</a></li>
						<li><a href="#">Graphic T's</a></li>
						<li><a href="#">View All</a></li>
					</ul></li>
				<li class="has-children"><span><a href="#">Women's
							Wear</a><span class="sub-menu-toggle"></span></span>
					<ul class="offcanvas-submenu">
						<li><a href="#">Tops and Jeans</a></li>
						<li><a href="#">Leggings</a></li>
						<li><a href="#">Kurtas and Suits</a></li>
						<li><a href="#">Sarees</a></li>
						<li><a href="#">View All</a></li>
					</ul></li>


				<li class="has-children"><span><a href="#">Kid's
							Shoes</a><span class="sub-menu-toggle"></span></span>
					<ul class="offcanvas-submenu">
						<li><a href="#">T-Shirts</a></li>
						<li><a href="#">Shirts</a></li>
						<li><a href="#">Jeans and Trousers</a></li>
						<li><a href="#">TrackPants and Payjamas</a></li>
						<li><a href="#">View All</a></li>
					</ul></li>

			</ul>
		</nav>
	</div>

	<!-- Topbar-->
	<div class="topbar">
		<div class="topbar-column">
			<a class="hidden-md-down" href="mailto:abhinav6302@gmail.com"><i
				class="icon-mail"></i>&nbsp; abhinav6302@gmail.com</a><a
				class="hidden-md-down" href="tel:(+91) 9873872531"><i
				class="icon-bell"></i>&nbsp; (+91) 9873872531</a> <a
				class="social-button sb-facebook shape-none sb-dark" href="#"
				target="_blank"><i class="socicon-facebook"></i></a><a
				class="social-button sb-twitter shape-none sb-dark" href="#"
				target="_blank"><i class="socicon-twitter"></i></a><a
				class="social-button sb-instagram shape-none sb-dark" href="#"
				target="_blank"><i class="socicon-instagram"></i></a><a
				class="social-button sb-pinterest shape-none sb-dark" href="#"
				target="_blank"><i class="socicon-pinterest"></i></a>
		</div>

	</div>
	<!-- Navbar-->
	<!-- Remove "navbar-sticky" class to make navigation bar scrollable with the page.-->
	<header class="navbar navbar-sticky">
		<!-- Search-->
		<form class="site-search" method="get">
			<input type="text" name="site_search" placeholder="Type to search...">
			<div class="search-tools">
				<span class="clear-search">Clear</span><span class="close-search"><i
					class="icon-cross"></i></span>
			</div>
		</form>
		<div class="site-branding">
			<div class="inner">
				<!-- Off-Canvas Toggle (#shop-categories)-->
				<a class="offcanvas-toggle cats-toggle" href="#shop-categories"
					data-toggle="offcanvas"></a>
				<!-- Off-Canvas Toggle (#mobile-menu)-->
				<a class="offcanvas-toggle menu-toggle" href="#mobile-menu"
					data-toggle="offcanvas"></a>
				<!-- Site Logo-->
				<a class="site-logo" href="index.html"><h3>
						<b>GARG FOOTWEAR</b>
					</h3></a>
			</div>
		</div>
		<!-- Main Navigation-->
		<nav class="site-menu">
			<ul>
				<li class="has-megamenu active"><a href="index.html"><span>Home</span></a>

				</li>
				<li><a href="shop-categories.html"><span>Shop</span></a></li>
				<li class="has-megamenu"><a href="#"><span>Collection</span></a>
					<ul class="mega-menu">
						<li><span class="mega-menu-title">Men's Collection</span>
							<ul class="sub-menu">
								<li><a href="#">Shoes</a></li>
								<li><a href="#">Sandals</a></li>
								<li><a href="#">Slippers</a></li>
								<li><a href="#">Flip-Flops</a></li>
								<li><a href="#">Hawaii Chappals</a></li>
								<li><a href="#">New Arrivals</a></li>
							</ul></li>
						<li><span class="mega-menu-title">Women's Collection </span>
							<ul class="sub-menu">
								<li><a href="#">Shoes</a></li>
								<li><a href="#">Sandals</a></li>
								<li><a href="#">Slippers</a></li>
								<li><a href="#">Flip-Flops</a></li>
								<li><a href="#">Hawaii Chappals</a></li>
								<li><a href="#">New Arrivals</a></li>
							</ul></li>
						<li><span class="mega-menu-title">Kid's Collection </span>
							<ul class="sub-menu">
								<li><a href="#">Shoes</a></li>
								<li><a href="#">Sandals</a></li>
								<li><a href="#">Slippers</a></li>
								<li><a href="#">Flip-Flops</a></li>
								<li><a href="#">Hawaii Chappals</a></li>
								<li><a href="#">New Arrivals</a></li>
							</ul></li>
						<li>
							<section class="promo-box"
								style="background-image: url(img/banners/02.jpg);">
								<span class="overlay-dark" style="opacity: .4;"></span>
								<div
									class="promo-box-content text-center padding-top-2x padding-bottom-2x">
									<h4 class="text-light text-thin text-shadow">New
										Collection of</h4>
									<h3 class="text-bold text-light text-shadow">Footwears</h3>
									<a class="btn btn-sm btn-primary" href="#">Shop Now</a>
								</div>
							</section>
						</li>

					</ul></li>
				<li><a href="account-orders.html"><span>Account</span></a>
					<ul class="sub-menu">
						<!-- <li><a href="customer-login">Login / Register</a></li> -->
						<li class="has-megamenu"><a href="#"><span>Sell
									With Us</span></a>
							<ul class="mega-menu">
								<!-- 	<li><span class="mega-menu-title">Men's Collection</span> -->
								<ul class="sub-menu">
									<li><a href="user-login">Login</a></li>
									<li><a href="seller-register-final">Signup</a></li>
								</ul>
							</ul></li>


						<li><a href="account-password-recovery.html">Password
								Recovery</a></li>
						<li><a href="account-orders.html">Orders List</a></li>
						<li><a href="account-wishlist.html">Wishlist</a></li>
						<li><a href="account-profile.html">Profile Page</a></li>
						<li><a href="account-address.html">Contact / Shipping
								Address</a></li>
						<li><a href="account-tickets.html">My Tickets</a></li>
						<li><a href="account-single-ticket.html">Single Ticket</a></li>
					</ul></li>

				<li><a href="#"><span>Pages</span></a>
					<ul class="sub-menu">
						<li><a href="about.html">About Us</a></li>
						<li><a href="contacts.html">Contacts</a></li>
						<li><a href="faq.html">Help / FAQ</a></li>
						<li><a href="order-tracking.html">Order Tracking</a></li>
						<li><a href="search-results.html">Search Results</a></li>
					</ul></li>

			</ul>
		</nav>
		<!-- Toolbar-->
		<div class="toolbar">
			<div class="inner">
				<div class="tools">
					<div class="search">
						<i class="icon-search"></i>
					</div>
					<div class="account">
						<a href="account-orders.html"></a><i class="icon-head"></i>
						<ul class="toolbar-dropdown">
							<li class="sub-menu-user">
								<div class="user-ava">
									<img src="img/account/user-ava-sm.jpg" alt="Daniel Adams">
								</div>
								<div class="user-info">
									<h6 class="user-name">Daniel Adams</h6>
									<span class="text-xs text-muted">290 Reward points</span>
								</div>
							</li>
							<li><a href="account-profile.html">My Profile</a></li>
							<li><a href="account-orders.html">Orders List</a></li>
							<li><a href="account-wishlist.html">Wishlist</a></li>
							<li class="sub-menu-separator"></li>
							<li><a href="#"> <i class="icon-unlock"></i>Logout
							</a></li>
						</ul>
					</div>
					<div class="cart">
						<a href="cart.html"></a><i class="icon-bag"></i><span
							class="count">3</span><span class="subtotal">$289.68</span>
						<div class="toolbar-dropdown">
							<div class="dropdown-product-item">
								<span class="dropdown-product-remove"><i
									class="icon-cross"></i></span><a class="dropdown-product-thumb"
									href="shop-single.html"><img src="img/cart-dropdown/01.jpg"
									alt="Product"></a>
								<div class="dropdown-product-info">
									<a class="dropdown-product-title" href="shop-single.html">Unionbay
										Park</a><span class="dropdown-product-details">1 x $43.90</span>
								</div>
							</div>
							<div class="dropdown-product-item">
								<span class="dropdown-product-remove"><i
									class="icon-cross"></i></span><a class="dropdown-product-thumb"
									href="shop-single.html"><img src="img/cart-dropdown/02.jpg"
									alt="Product"></a>
								<div class="dropdown-product-info">
									<a class="dropdown-product-title" href="shop-single.html">Daily
										Fabric Cap</a><span class="dropdown-product-details">2 x
										$24.89</span>
								</div>
							</div>
							<div class="dropdown-product-item">
								<span class="dropdown-product-remove"><i
									class="icon-cross"></i></span><a class="dropdown-product-thumb"
									href="shop-single.html"><img src="img/cart-dropdown/03.jpg"
									alt="Product"></a>
								<div class="dropdown-product-info">
									<a class="dropdown-product-title" href="shop-single.html">Haan
										Crossbody</a><span class="dropdown-product-details">1 x
										$200.00</span>
								</div>
							</div>
							<div class="toolbar-dropdown-group">
								<div class="column">
									<span class="text-lg">Total:</span>
								</div>
								<div class="column text-right">
									<span class="text-lg text-medium">$289.68&nbsp;</span>
								</div>
							</div>
							<div class="toolbar-dropdown-group">
								<div class="column">
									<a class="btn btn-sm btn-block btn-secondary" href="cart.html">View
										Cart</a>
								</div>
								<div class="column">
									<a class="btn btn-sm btn-block btn-success"
										href="checkout-address.html">Checkout</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Off-Canvas Wrapper-->
	<div class="offcanvas-wrapper">
		<!-- Page Title-->
		<div class="page-title">
			<div class="container">
				<div class="column">
					<h1>Login / Register Account</h1>
				</div>
				<div class="column">
					<ul class="breadcrumbs">
						<li><a href="index.html">Home</a></li>
						<li class="separator">&nbsp;</li>
						<li><a href="account-orders.html">Account</a></li>
						<li class="separator">&nbsp;</li>
						<li>Login / Register</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- Page Content-->
		<div class="container padding-bottom-3x mb-2">
			<div class="row">
				<div class="col-md-6">
					<form class="login-box" action="user-login" method="post">


						<div class="form-group input-group">
							<input class="form-control" name="userEmail" type="email"
								placeholder="Email" required><span
								class="input-group-addon"><i class="icon-mail"></i></span>
						</div>
						<div class="form-group input-group">
							<input class="form-control" name="userPassword" type="password"
								placeholder="Password" required><span
								class="input-group-addon"><i class="icon-lock"></i></span>
						</div>
						<div
							class="d-flex flex-wrap justify-content-between padding-bottom-1x">
							<div class="custom-control custom-checkbox">
								<input class="custom-control-input" type="checkbox"
									id="remember_me" checked> <label
									class="custom-control-label" for="remember_me">Remember
									me</label>
							</div>
							<a class="navi-link" href="account-password-recovery.html">Forgot
								password?</a>
						</div>
						<div class="text-center text-sm-right">
							<button class="btn btn-primary margin-bottom-none" type="submit">Login</button>
						</div>
					</form>
				</div>
				<!-- 	<div class="col-md-6">
					<div class="padding-top-3x hidden-md-up"></div>
					<h3 class="margin-bottom-1x">No Account? Register</h3>
					<p>Registration takes less than a minute but gives you full
						control over your orders.</p>
					<form class="row" action="register-seller" method="post">
						<div class="col-sm-6">
							<div class="form-group">
								<label for="reg-fn">Your Name</label> <input
									class="form-control" name ="sellerName" type="text" id="reg-fn" required>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label for="reg-ln">Last Name</label> <input
									class="form-control" type="text" id="reg-ln" required>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label for="reg-email" >E-mail Address</label> <input
									class="form-control" name="userEmail" type="email" id="reg-email" required>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label for="reg-phone">Contact Number</label> <input
									class="form-control" type="text" name ="mobileNumber" id="reg-phone" required>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label for="reg-pass">Password</label> <input
									class="form-control" name="userPassword" type="password" id="reg-pass" required>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label for="reg-pass-confirm">Confirm Password</label> <input
									class="form-control" name="userPassword" type="password" id="reg-pass-confirm"
									required>
							</div>
						</div>
						<div class="col-12 text-center text-sm-right">
							<button class="btn btn-primary margin-bottom-none" type="submit">Next</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	
			<div class="container padding-bottom-3x mb-2">
			<div class="row">
				<div class="col-md-6">
					<form class="login-box" action="user-login" method="POST">


						<div class="form-group input-group">
							<input class="form-control" name="userEmail" type="email" placeholder="Email"
								required><span class="input-group-addon"><i
								class="icon-mail"></i></span>
						</div>
						<div class="form-group input-group">
							<input class="form-control" name="userPassword" type="password"
								placeholder="Password" required><span
								class="input-group-addon"><i class="icon-lock"></i></span>
						</div>
						<div
							class="d-flex flex-wrap justify-content-between padding-bottom-1x">
							<div class="custom-control custom-checkbox">
								<input class="custom-control-input" type="checkbox"
									id="remember_me" checked> <label
									class="custom-control-label" for="remember_me">Remember
									me</label>
							</div>
							<a class="navi-link" href="account-password-recovery.html">Forgot
								password?</a>
						</div>
						<div class="text-center text-sm-right">
							<button class="btn btn-primary margin-bottom-none" type="submit">Login</button>
						</div>
					</form>
				</div>
 -->

				<!-- Site Footer-->
				<footer class="site-footer">
					<div class="container">
						<div class="row">
							<div class="col-lg-3 col-md-6">
								<!-- Contact Info-->
								<section class="widget widget-light-skin">
									<h3 class="widget-title">Get In Touch With Us</h3>
									<p class="text-white">Phone: +91 9876333141</p>
									<ul class="list-unstyled text-sm text-white">
										<li><span class="opacity-50">Monday-Friday:</span>10.00
											am - 7.00 pm</li>
										<li><span class="opacity-50">Saturday:</span>10.00 am -
											6.00 pm</li>
									</ul>
									<p class="text-white">Email Us: jaskarans880@gmail.com</p>
									<a class="social-button shape-circle sb-facebook sb-light-skin"
										href="#"><i class="socicon-facebook"> </i></a><a
										class="social-button shape-circle sb-twitter sb-light-skin"
										href="#"> <i class="socicon-twitter"></i></a><a
										class="social-button shape-circle sb-instagram sb-light-skin"
										href="#"> <i class="socicon-instagram"></i></a><a
										class="social-button shape-circle sb-google-plus sb-light-skin"
										href="#"> <i class="socicon-googleplus"></i></a>
								</section>
							</div>


							<div class="col-lg-3 col-md-6">
								<!-- Account / Shipping Info-->
								<section class="widget widget-links widget-light-skin">
									<h3 class="widget-title">Account &amp; Shipping Info</h3>
									<ul>
										<li><a href="#">Your Account</a></li>
										<li><a href="#">Shipping Rates & Policies</a></li>
										<li><a href="#">Refunds & Replacements</a></li>
										<li><a href="#">Taxes</a></li>
										<li><a href="#">Delivery Info</a></li>

									</ul>
								</section>
							</div>
							<div class=" col-lg-6 col-md-6 ">
								<section class="widget widget-links widget-light-skin">
									<h2 class="widget-title">
										<b>SEND US MESSAGE</b>
									</h2>

									<div class="row">
										<div class="col-md-6 form-group">
											<input class="form-control" id="name" name="name"
												placeholder="Name" type="text" required>
										</div>
										<div class="col-md-6 form-group">
											<input class="form-control" id="email" name="email"
												placeholder="Email" type="email" required>
										</div>
									</div>
									<textarea class="form-control" id="comments" name="comments"
										placeholder="Comment" rows="5"></textarea>
									<br>
									<div class="row">
										<div class="col-md-12 form-group">
											<button class="btn btn-outline-primary btn-sm" type="submit">Send</button>
										</div>
									</div>
								</section>
							</div>
						</div>
						<hr class="hr-light mt-2 margin-bottom-2x">

						<!-- Copyright-->
						<p class="footer-copyright">© ClothesOnSearch. All rights
							reserved.</p>
					</div>
				</footer>
			</div>
			<!-- Back To Top Button-->
			<a class="scroll-to-top-btn" href="#"><i class="icon-arrow-up"></i></a>
			<!-- Backdrop-->
			<div class="site-backdrop"></div>
			<!-- JavaScript (jQuery) libraries, plugins and custom scripts-->
			<script src="js/vendor.min.js"></script>
			<script src="js/scripts.min.js"></script>
			<!-- Customizer scripts-->
			<script src="customizer/customizer.min.js"></script>
</body>

<!-- Mirrored from themes.rokaux.com/unishop/v3.0/template-1/account-login.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 16 Jun 2018 11:06:41 GMT -->
</html>