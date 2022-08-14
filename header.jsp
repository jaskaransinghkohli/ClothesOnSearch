<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Off-Canvas Category Menu-->
<div class="offcanvas-container" id="shop-categories">
	<div class="offcanvas-header">
		<h3 class="offcanvas-title">Shop Categories</h3>
	</div>
	<nav class="offcanvas-menu">
		<ul class="menu">
			<li class="has-children"><span><a href="#">Men's</a><span
					class="sub-menu-toggle"></span></span>
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
			<li class="has-children"><span><a href="#">Women's </a><span
					class="sub-menu-toggle"></span></span>
				<ul class="offcanvas-submenu">
					<li><a href="#">Tops and Jeans</a></li>
					<li><a href="#">Leggings</a></li>
					<li><a href="#">Kurtas and Suits</a></li>
					<li><a href="#">Sarees</a></li>
					<li><a href="#">View All</a></li>
				</ul></li>


			<li class="has-children"><span><a href="#">Kid's </a><span
					class="sub-menu-toggle"></span></span>
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
		<a class="hidden-md-down" href="mailto:jaskarans880@gmail.com"><i
			class="icon-mail"></i>&nbsp; jaskarans880@gmail.com</a><a
			class="hidden-md-down" href="tel:(+91) 9876333141"><i
			class="icon-bell"></i>&nbsp; (+91) 9876333141</a> <a
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
					<b>ClothesOnSearch</b>
				</h3></a>
		</div>
	</div>
	<!-- Main Navigation-->
	<nav class="site-menu">
		<ul>
			<li class="has-megamenu active"><a href="index.html"><span>Home</span></a>

			</li>
			<li><a href="shop-categories. html"><span>Shop</span></a></li>
			<li class="has-megamenu"><a href="#"><span>Collection</span></a>
				<ul class="mega-menu">
					<li><span class="mega-menu-title">Men's Collection</span>
						<ul class="sub-menu">
							<li><a href="#">Shirts</a></li>
							<li><a href="#">T-Shirts</a></li>
							<li><a href="#">Payjama's</a></li>
							<li><a href="#">Trousers</a></li>
							<li><a href="#">Denims</a></li>
							<li><a href="#">Casuals</a></li>
							<li><a href="#">Graphic T's</a></li>
							<li><a href="#">New Arrivals</a></li>
						</ul></li>
					<li><span class="mega-menu-title">Women's Collection </span>
						<ul class="sub-menu">
							<li><a href="#">Tops and Jeans</a></li>
							<li><a href="#">Leggings</a></li>
							<li><a href="#">Kurtas and Suits</a></li>
							<li><a href="#">Sarees</a></li>
							<li><a href="#">New Arrivals</a></li>
						</ul></li>
					<li><span class="mega-menu-title">Kid's Collection </span>
						<ul class="sub-menu">
							<li><a href="#">T-Shirts</a></li>
							<li><a href="#">Shirts</a></li>
							<li><a href="#">Jeans and Trousers</a></li>
							<li><a href="#">TrackPants and Payjamas</a></li>
							<li><a href="#">New Arrivals</a></li>
						</ul></li>
					<li>
						<section class="promo-box"
							style="background-image: url(img/banners/02.jpg);">
							<span class="overlay-dark" style="opacity: .4;"></span>
							<div
								class="promo-box-content text-center padding-top-2x padding-bottom-2x">
								<h4 class="text-light text-thin text-shadow">New Collection
									of</h4>
								<h3 class="text-bold text-light text-shadow">Clothes</h3>
								<a class="btn btn-sm btn-primary" href="#">Shop Now</a>
							</div>
						</section>
					</li>

				</ul></li>
			<c:if test="${empty USERS}">

				<li><a href="customer-login"><span>Login / Register</span></a>
				</li>
				<!-- <li><a href="user-login"><span>Sell With Us</span></a></li> -->
				<li ><a href="#"><span>Sell With
							Us</span></a>
					<ul class="sub-menu">
						<!-- 	<li><span class="mega-menu-title">Men's Collection</span> -->
							<li><a href="user-login">Login</a></li>
							<li><a href="register-seller">Signup</a></li>
						</ul>
					</li>




			</c:if>
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
				<c:if test="${!empty USERS}">
					<div class="account">
						<a href="account-orders.html"></a><i class="icon-head"></i>
						<ul class="toolbar-dropdown">
							<li class="sub-menu-user">
								<div class="user-ava">
									<img src="img/account/user-ava-sm.jpg" alt="Daniel Adams">
								</div>
								<div class="user-info">
									<h6 class="user-name">Jaskaran Singh</h6>
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

				</c:if>
				<div class="cart">
					<a href="cart.html"></a><i class="icon-bag"></i><span class="count">3</span><span
						class="subtotal">$289.68</span>
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