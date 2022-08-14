<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>

<title>ClothesOnSearch</title>
<!-- SEO Meta Tags-->

<meta name="keywords"
	content="shop, e-commerce, modern, flat style, responsive, online store, business, mobile, blog, bootstrap 4, html5, css3, jquery, js, gallery, slider, touch, creative, clean">

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

	<jsp:include page="/WEB-INF/header.jsp" />
	<div class="item">
		<div class="container padding-top-3x">
			<div class="row justify-content-center align-items-center">
				<div
					class="col-lg-5 col-md-6 padding-bottom-2x text-md-left text-center">
					<div class="from-bottom">
						<img class="d-inline-block mb-4" src="img/hero-slider/logo03.png"
							style="width: 125px;" alt="Motorola">
						<div class="h2 text-body text-normal mb-2 pt-1">Smart Watch
							Moto 360 2nd</div>
						<div class="h2 text-body text-normal mb-4 pb-1">
							for only <span class="text-bold">$299.99</span>
						</div>
					</div>
					<a class="btn btn-primary scale-up delay-1" href="shop-single.html">Shop
						Now</a>
				</div>
				<div class="col-md-6 padding-bottom-2x mb-3">
					<img class="d-block mx-auto" src="img/hero-slider/03.png"
						alt="Moto 360">
				</div>
			</div>
		</div>
	</div>
	</div>
	</section>
	<!-- Top Categories-->
	<section class="container padding-top-3x">
		<h3 class="text-center mb-30">Top Categories</h3>
		<div class="row">
			<div class="col-md-6 col-sm-6">
				<div class="card mb-30">
					<a class="card-img-tiles" href="shop-grid-ls.html">
						<div class="inner">
							<div class="main-img">
								<img src="img/shop/categories/01.jpg" alt="Category">
							</div>
							<div class="thumblist">
								<img src="img/shop/categories/02.jpg" alt="Category"><img
									src="img/shop/categories/03.jpg" alt="Category">
							</div>
						</div>
					</a>
					<div class="card-body text-center">
						<h4 class="card-title">Men's</h4>
						<p class="text-muted">Starting from $49.99</p>
						<a class="btn btn-outline-primary btn-sm" href="shop-grid-ls.html">View
							Products</a>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-sm-6">
				<div class="card mb-30">
					<a class="card-img-tiles" href="shop-grid-ls.html">
						<div class="inner">
							<div class="main-img">
								<img src="img/shop/categories/04.jpg" alt="Category">
							</div>
							<div class="thumblist">
								<img src="img/shop/categories/05.jpg" alt="Category"><img
									src="img/shop/categories/06.jpg" alt="Category">
							</div>
						</div>
					</a>
					<div class="card-body text-center">
						<h4 class="card-title">Women's</h4>
						<p class="text-muted">Starting from $56.00</p>
						<a class="btn btn-outline-primary btn-sm" href="shop-grid-ls.html">View
							Products</a>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-sm-6">
				<div class="card mb-30">
					<a class="card-img-tiles" href="shop-grid-ls.html">
						<div class="inner">
							<div class="main-img">
								<img src="img/shop/categories/07.jpg" alt="Category">
							</div>
							<div class="thumblist">
								<img src="img/shop/categories/08.jpg" alt="Category"><img
									src="img/shop/categories/09.jpg" alt="Category">
							</div>
						</div>
					</a>
					<div class="card-body text-center">
						<h4 class="card-title">Kid's</h4>
						<p class="text-muted">Starting from $27.00</p>
						<a class="btn btn-outline-primary btn-sm" href="shop-grid-ls.html">View
							Products</a>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-sm-6">
				<div class="card mb-30">
					<a class="card-img-tiles" href="shop-grid-ls.html">
						<div class="inner">
							<div class="main-img">
								<img src="img/shop/categories/07.jpg" alt="Category">
							</div>
							<div class="thumblist">
								<img src="img/shop/categories/08.jpg" alt="Category"><img
									src="img/shop/categories/09.jpg" alt="Category">
							</div>
						</div>
					</a>
					<div class="card-body text-center">
						<h4 class="card-title">New Arrivals</h4>
						<p class="text-muted">Starting from $27.00</p>
						<a class="btn btn-outline-primary btn-sm" href="shop-grid-ls.html">View
							Products</a>
					</div>
				</div>
			</div>
		</div>

	</section>
	<!-- Promo #1-->
	<section class="container-fluid padding-top-3x">
		<div class="row justify-content-center">
			<div class="col-xl-5 col-lg-6 mb-30">
				<div
					class="rounded bg-faded position-relative padding-top-3x padding-bottom-3x">
					<span class="product-badge text-danger"
						style="top: 24px; left: 24px;">Limited Offer</span>
					<div class="text-center">
						<h3 class="h2 text-normal mb-1">New</h3>
						<h2 class="display-2 text-bold mb-2">Hawaai Chappals</h2>
						<h4 class="h3 text-normal mb-4">collection at discounted
							price!</h4>
						<div class="countdown mb-3" data-date-time="07/30/2018 12:00:00">
							<div class="item">
								<div class="days">00</div>
								<span class="days_ref">Days</span>
							</div>
							<div class="item">
								<div class="hours">00</div>
								<span class="hours_ref">Hours</span>
							</div>
							<div class="item">
								<div class="minutes">00</div>
								<span class="minutes_ref">Mins</span>
							</div>
							<div class="item">
								<div class="seconds">00</div>
								<span class="seconds_ref">Secs</span>
							</div>
						</div>
						<br> <a class="btn btn-primary margin-bottom-none" href="#">View
							Offers</a>
					</div>
				</div>
			</div>
			<div class="col-xl-5 col-lg-6 mb-30" style="min-height: 270px;">
				<div class="img-cover rounded"
					style="background-image: url(img/banners/home01.jpg);"></div>
			</div>
		</div>
	</section>
	<!-- Promo #2-->
	<section class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-xl-10 col-lg-12">
				<div class="fw-section rounded padding-top-4x padding-bottom-4x"
					style="background-image: url(img/banners/home02.jpg);">
					<span class="overlay rounded" style="opacity: .35;"></span>
					<div class="text-center">
						<h3 class="display-4 text-normal text-white text-shadow mb-1">Old
							Collection</h3>
						<h2 class="display-2 text-bold text-white text-shadow">HUGE
							SALE!</h2>
						<h4
							class="d-inline-block h2 text-normal text-white text-shadow border-default border-left-0 border-right-0 mb-4">at
							our outlet stores</h4>
						<br> <a class="btn btn-primary margin-bottom-none"
							href="contacts.html">Locate Stores</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Featured Products Carousel-->
	<section class="container padding-top-3x padding-bottom-3x">
		<h3 class="text-center mb-30">Featured Products</h3>
		<div class="owl-carousel"
			data-owl-carousel="{ &quot;nav&quot;: false, &quot;dots&quot;: true, &quot;margin&quot;: 30, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:1},&quot;576&quot;:{&quot;items&quot;:2},&quot;768&quot;:{&quot;items&quot;:3},&quot;991&quot;:{&quot;items&quot;:4},&quot;1200&quot;:{&quot;items&quot;:4}} }">
			<!-- Product-->
			<div class="grid-item">
				<div class="product-card">
					<div class="product-badge text-danger">22% Off</div>
					<a class="product-thumb" href="shop-single.html"><img
						src="img/shop/products/09.jpg" alt="Product"></a>
					<h3 class="product-title">
						<a href="shop-single.html">Rocket Dog</a>
					</h3>
					<h4 class="product-price">
						<del>$44.95</del>
						$34.99
					</h4>
					<div class="product-buttons">
						<button class="btn btn-outline-secondary btn-sm btn-wishlist"
							data-toggle="tooltip" title="Whishlist">
							<i class="icon-heart"></i>
						</button>
						<button class="btn btn-outline-primary btn-sm" data-toast
							data-toast-type="success" data-toast-position="topRight"
							data-toast-icon="icon-circle-check" data-toast-title="Product"
							data-toast-message="successfuly added to cart!">Add to
							Cart</button>
					</div>
				</div>
			</div>
			<!-- Product-->
			<div class="grid-item">
				<div class="product-card">
					<div class="rating-stars">
						<i class="icon-star filled"></i><i class="icon-star filled"></i><i
							class="icon-star filled"></i><i class="icon-star filled"></i><i
							class="icon-star"></i>
					</div>
					<a class="product-thumb" href="shop-single.html"><img
						src="img/shop/products/03.jpg" alt="Product"></a>
					<h3 class="product-title">
						<a href="shop-single.html">Oakley Kickback</a>
					</h3>
					<h4 class="product-price">$155.00</h4>
					<div class="product-buttons">
						<button class="btn btn-outline-secondary btn-sm btn-wishlist"
							data-toggle="tooltip" title="Whishlist">
							<i class="icon-heart"></i>
						</button>
						<button class="btn btn-outline-primary btn-sm" data-toast
							data-toast-type="success" data-toast-position="topRight"
							data-toast-icon="icon-circle-check" data-toast-title="Product"
							data-toast-message="successfuly added to cart!">Add to
							Cart</button>
					</div>
				</div>
			</div>
			<!-- Product-->
			<div class="grid-item">
				<div class="product-card">
					<a class="product-thumb" href="shop-single.html"><img
						src="img/shop/products/12.jpg" alt="Product"></a>
					<h3 class="product-title">
						<a href="shop-single.html">Vented Straw Fedora</a>
					</h3>
					<h4 class="product-price">$49.50</h4>
					<div class="product-buttons">
						<button class="btn btn-outline-secondary btn-sm btn-wishlist"
							data-toggle="tooltip" title="Whishlist">
							<i class="icon-heart"></i>
						</button>
						<button class="btn btn-outline-primary btn-sm" data-toast
							data-toast-type="success" data-toast-position="topRight"
							data-toast-icon="icon-circle-check" data-toast-title="Product"
							data-toast-message="successfuly added to cart!">Add to
							Cart</button>
					</div>
				</div>
			</div>
			<!-- Product-->
			<div class="grid-item">
				<div class="product-card">
					<div class="rating-stars">
						<i class="icon-star filled"></i><i class="icon-star filled"></i><i
							class="icon-star filled"></i><i class="icon-star filled"></i><i
							class="icon-star filled"></i>
					</div>
					<a class="product-thumb" href="shop-single.html"><img
						src="img/shop/products/11.jpg" alt="Product"></a>
					<h3 class="product-title">
						<a href="shop-single.html">Top-Sider Fathom</a>
					</h3>
					<h4 class="product-price">$90.00</h4>
					<div class="product-buttons">
						<button class="btn btn-outline-secondary btn-sm btn-wishlist"
							data-toggle="tooltip" title="Whishlist">
							<i class="icon-heart"></i>
						</button>
						<button class="btn btn-outline-primary btn-sm" data-toast
							data-toast-type="success" data-toast-position="topRight"
							data-toast-icon="icon-circle-check" data-toast-title="Product"
							data-toast-message="successfuly added to cart!">Add to
							Cart</button>
					</div>
				</div>
			</div>
			<!-- Product-->
			<div class="grid-item">
				<div class="product-card">
					<a class="product-thumb" href="shop-single.html"><img
						src="img/shop/products/04.jpg" alt="Product"></a>
					<h3 class="product-title">
						<a href="shop-single.html">Waist Leather Belt</a>
					</h3>
					<h4 class="product-price">$47.00</h4>
					<div class="product-buttons">
						<button class="btn btn-outline-secondary btn-sm btn-wishlist"
							data-toggle="tooltip" title="Whishlist">
							<i class="icon-heart"></i>
						</button>
						<button class="btn btn-outline-primary btn-sm" data-toast
							data-toast-type="success" data-toast-position="topRight"
							data-toast-icon="icon-circle-check" data-toast-title="Product"
							data-toast-message="successfuly added to cart!">Add to
							Cart</button>
					</div>
				</div>
			</div>
			<!-- Product-->
			<div class="grid-item">
				<div class="product-card">
					<div class="product-badge text-danger">50% Off</div>
					<a class="product-thumb" href="shop-single.html"><img
						src="img/shop/products/01.jpg" alt="Product"></a>
					<h3 class="product-title">
						<a href="shop-single.html">Unionbay Park</a>
					</h3>
					<h4 class="product-price">
						<del>$99.99</del>
						$49.99
					</h4>
					<div class="product-buttons">
						<button class="btn btn-outline-secondary btn-sm btn-wishlist"
							data-toggle="tooltip" title="Whishlist">
							<i class="icon-heart"></i>
						</button>
						<button class="btn btn-outline-primary btn-sm" data-toast
							data-toast-type="success" data-toast-position="topRight"
							data-toast-icon="icon-circle-check" data-toast-title="Product"
							data-toast-message="successfuly added to cart!">Add to
							Cart</button>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Product Widgets-->
	<section class="container padding-bottom-2x">
		<div class="row">
			<div class="col-md-4 col-sm-6">
				<div class="widget widget-featured-products">
					<h3 class="widget-title">Top Sellers</h3>
					<!-- Entry-->
					<div class="entry">
						<div class="entry-thumb">
							<a href="shop-single.html"><img src="img/shop/widget/01.jpg"
								alt="Product"></a>
						</div>
						<div class="entry-content">
							<h4 class="entry-title">
								<a href="shop-single.html">Oakley Kickback</a>
							</h4>
							<span class="entry-meta">$155.00</span>
						</div>
					</div>
					<!-- Entry-->
					<div class="entry">
						<div class="entry-thumb">
							<a href="shop-single.html"><img src="img/shop/widget/03.jpg"
								alt="Product"></a>
						</div>
						<div class="entry-content">
							<h4 class="entry-title">
								<a href="shop-single.html">Vented Straw Fedora</a>
							</h4>
							<span class="entry-meta">$49.50</span>
						</div>
					</div>
					<!-- Entry-->
					<div class="entry">
						<div class="entry-thumb">
							<a href="shop-single.html"><img src="img/shop/widget/04.jpg"
								alt="Product"></a>
						</div>
						<div class="entry-content">
							<h4 class="entry-title">
								<a href="shop-single.html">Big Wordmark Tote</a>
							</h4>
							<span class="entry-meta">$29.99</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4 col-sm-6">
				<div class="widget widget-featured-products">
					<h3 class="widget-title">New Arrivals</h3>
					<!-- Entry-->
					<div class="entry">
						<div class="entry-thumb">
							<a href="shop-single.html"><img src="img/shop/widget/05.jpg"
								alt="Product"></a>
						</div>
						<div class="entry-content">
							<h4 class="entry-title">
								<a href="shop-single.html">Union Park</a>
							</h4>
							<span class="entry-meta">$49.99</span>
						</div>
					</div>
					<!-- Entry-->
					<div class="entry">
						<div class="entry-thumb">
							<a href="shop-single.html"><img src="img/shop/widget/06.jpg"
								alt="Product"></a>
						</div>
						<div class="entry-content">
							<h4 class="entry-title">
								<a href="shop-single.html">Cole Haan Crossbody</a>
							</h4>
							<span class="entry-meta">$200.00</span>
						</div>
					</div>
					<!-- Entry-->
					<div class="entry">
						<div class="entry-thumb">
							<a href="shop-single.html"><img src="img/shop/widget/07.jpg"
								alt="Product"></a>
						</div>
						<div class="entry-content">
							<h4 class="entry-title">
								<a href="shop-single.html">Skagen Holst Watch</a>
							</h4>
							<span class="entry-meta">$145.00</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4 col-sm-6">
				<div class="widget widget-featured-products">
					<h3 class="widget-title">Best Rated</h3>
					<!-- Entry-->
					<div class="entry">
						<div class="entry-thumb">
							<a href="shop-single.html"><img src="img/shop/widget/08.jpg"
								alt="Product"></a>
						</div>
						<div class="entry-content">
							<h4 class="entry-title">
								<a href="shop-single.html">Jordan's City Hoodie</a>
							</h4>
							<span class="entry-meta">$65.00</span>
						</div>
					</div>
					<!-- Entry-->
					<div class="entry">
						<div class="entry-thumb">
							<a href="shop-single.html"><img src="img/shop/widget/09.jpg"
								alt="Product"></a>
						</div>
						<div class="entry-content">
							<h4 class="entry-title">
								<a href="shop-single.html">Palace Shell Track Jacket</a>
							</h4>
							<span class="entry-meta">$36.99</span>
						</div>
					</div>
					<!-- Entry-->
					<div class="entry">
						<div class="entry-thumb">
							<a href="shop-single.html"><img src="img/shop/widget/10.jpg"
								alt="Product"></a>
						</div>
						<div class="entry-content">
							<h4 class="entry-title">
								<a href="shop-single.html">Off the Shoulder Top</a>
							</h4>
							<span class="entry-meta">$128.00</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Popular Brands-->
	<section class="bg-faded padding-top-3x padding-bottom-3x">
		<div class="container">
			<h3 class="text-center mb-30 pb-2">Popular Brands</h3>
			<div class="owl-carousel"
				data-owl-carousel="{ &quot;nav&quot;: false, &quot;dots&quot;: false, &quot;loop&quot;: true, &quot;autoplay&quot;: true, &quot;autoplayTimeout&quot;: 4000, &quot;responsive&quot;: {&quot;0&quot;:{&quot;items&quot;:2}, &quot;470&quot;:{&quot;items&quot;:3},&quot;630&quot;:{&quot;items&quot;:4},&quot;991&quot;:{&quot;items&quot;:5},&quot;1200&quot;:{&quot;items&quot;:6}} }">
				<img class="d-block w-110 opacity-75 m-auto" src="img/brands/01.png"
					alt="Adidas"> <img class="d-block w-110 opacity-75 m-auto"
					src="img/brands/02.png" alt="Brooks"> <img
					class="d-block w-110 opacity-75 m-auto" src="img/brands/03.png"
					alt="Valentino"> <img class="d-block w-110 opacity-75 m-auto"
					src="img/brands/04.png" alt="Nike"> <img
					class="d-block w-110 opacity-75 m-auto" src="img/brands/05.png"
					alt="Puma"> <img class="d-block w-110 opacity-75 m-auto"
					src="img/brands/06.png" alt="New Balance"> <img
					class="d-block w-110 opacity-75 m-auto" src="img/brands/07.png"
					alt="Dior">
				<h3 class="d-block w-110 opacity-75 m-auto">Aircity</h3>
			</div>
		</div>
	</section>
	<!-- Services-->
	<section class="container padding-top-3x padding-bottom-2x">
		<div class="row">
			<div class="col-md-3 col-sm-6 text-center mb-30">
				<img class="d-block w-90 img-thumbnail rounded-circle mx-auto mb-3"
					src="img/services/01.png" alt="Shipping">
				<h6>Free Worldwide Shipping</h6>
				<p class="text-muted margin-bottom-none">Free shipping for all
					orders over Rs 30K</p>
			</div>
			<div class="col-md-3 col-sm-6 text-center mb-30">
				<img class="d-block w-90 img-thumbnail rounded-circle mx-auto mb-3"
					src="img/services/02.png" alt="Money Back">
				<h6>Money Back Guarantee</h6>
				<p class="text-muted margin-bottom-none">We return money within
					30 days</p>
			</div>
			<div class="col-md-3 col-sm-6 text-center mb-30">
				<img class="d-block w-90 img-thumbnail rounded-circle mx-auto mb-3"
					src="img/services/03.png" alt="Support">
				<h6>24/7 Customer Support</h6>
				<p class="text-muted margin-bottom-none">Friendly 24/7 customer
					support</p>
			</div>
			<div class="col-md-3 col-sm-6 text-center mb-30">
				<img class="d-block w-90 img-thumbnail rounded-circle mx-auto mb-3"
					src="img/services/04.png" alt="Payment">
				<h6>Secure Online Payment</h6>
				<p class="text-muted margin-bottom-none">We posess SSL / Secure
					Certificate</p>
			</div>
		</div>
	</section>
	<!-- Site Footer-->
	<footer class="site-footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<!-- Contact Info-->
					<section class="widget widget-light-skin">
						<h3 class="widget-title">Get In Touch With Us</h3>
						<p class="text-white">Phone: +91 9873872531</p>
						<ul class="list-unstyled text-sm text-white">
							<li><span class="opacity-50">Monday-Friday:</span>10.00 am -
								7.00 pm</li>
							<li><span class="opacity-50">Saturday:</span>10.00 am - 6.00
								pm</li>
						</ul>
						<p class="text-white">Email Us: abhinav6302@gmail.com</p>
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
			<p class="footer-copyright">© Garg Footwear. All rights
				reserved.</p>
		</div>
	</footer>
	</div>
	<!-- Back To Top Button-->
	<a class="scroll-to-top-btn" href="#"><i class="icon-arrow-up"
		style="margin-top: -20px"></i></a>
	<!-- Backdrop-->
	<div class="site-backdrop"></div>
	<!-- JavaScript (jQuery) libraries, plugins and custom scripts-->
	<script src="js/vendor.min.js"></script>
	<script src="js/scripts.min.js"></script>
	<!-- Customizer scripts-->
	<script src="customizer/customizer.min.js"></script>
</body>

<!-- Mirrored from themes.rokaux.com/unishop/v3.0/template-1/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 16 Jun 2018 11:00:21 GMT -->
</html>