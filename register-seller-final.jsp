<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

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
	<c:choose>
		<c:when test="${BASIC_DETAILS}">
			<div class="row">
				<div class="col-md-6">
					<div class="padding-top-3x hidden-md-up"></div>
					<h3 class="margin-bottom-1x">No Account? Register</h3>
					<p>Registration takes less than a minute but gives you full
						control over your orders.</p>
					<form class="row" action="register-seller" method="post">
						<div class="col-sm-6">
							<div class="form-group">
								<label for="reg-fn">Your Name</label> <input
									class="form-control" name="sellerName" type="text" id="reg-fn"
									required>
							</div>
							<div class="col-sm-12">
								<div class="form-group">
									<label for="reg-email">E-mail Address</label> <input
										class="form-control" name="userEmail" type="email"
										id="reg-email" required>
								</div>
							</div>
							<div class="col-sm-12">
								<div class="form-group">
									<label for="reg-phone">Contact Number</label> <input
										class="form-control" type="text" name="mobileNumber"
										id="reg-phone" required>
								</div>
							</div>
							<div class="col-sm-12">
								<div class="form-group">
									<label for="reg-pass">Password</label> <input
										class="form-control" name="userPassword" type="password"
										id="reg-pass" required>
								</div>
							</div>

							<div class="col-12 text-center text-sm-right">
								<button class="btn btn-primary margin-bottom-none" type="submit">Continue</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</c:when>

		<c:when test="${BUSINESS_DETAILS}">
			<form action='<c:url value="/register-seller/business-details"/>'
				method="post">
				<div class="offcanvas-wrapper">
					<h2 style="color: orange">Tell us about your businesss</h2>
					<div class="col-sm-6">
						<div class="form-group">
							<label for="store-name">Store name</label> <input
								class="form-control" name="storeName" type="text"
								id="store-name" required>
						</div>

					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label for="reg-pinCode">Pin Code</label> <input
								class="form-control" type="text" name="userPinCode"
								id="reg-pinCode" required>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label for="reg-add">Address Lne 1(Required)</label> <input
								class="form-control" name="userAddressLine1" type="text"
								id="reg-add" required>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label for="reg-add-2">Address Line 2</label> <input
								class="form-control" name="userAddressLine2" type="text"
								id="reg-add-2">
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label for="reg-city">city</label> <input class="form-control"
								name="userCity" type="text" id="reg-city">
						</div>
					</div>


					<div class="col-12 text-center text-sm-right">
						<button class="btn btn-primary margin-bottom-none" type="submit">Continue</button>
					</div>
				</div>
			</form>
		</c:when>

		<c:when test="${TAX_DETAILS}">
			<form class="detail-box"
				action='<c:url value="/register-seller/tax-details"/>' method="post">

				<h1 style="color: orange">Update Your Tax Details</h1>
				<div
					class="d-flex flex-wrap justify-content-between padding-bottom-1x">
					<div class="custom-control custom-checkbox">
						<input class="custom-control-input" type="checkbox" id="gst"
							checked disabled> i have a GST number
					</div>
				</div>
				<textarea class="form-control" id="comments" name="userGstNumber"
					placeholder="Gst number.." rows="1" required></textarea>
				<br>
				<textarea class="form-control" id="comments" name="userPanNumber"
					placeholder="Pan number.." rows="1" required></textarea>
				<div class="checkbox">
					<label><input type="radio" value="">I sell in Gst
						Exempted Category</label>
				</div>
				<div class="checkbox">
					<label><input type="radio" value="">I dont have it
						handly and will update later</label>
				</div>
				<div class="checkbox">
					<label><input type="radio" value="">I have never
						registered for GST</label>
				</div>
				<div class="col-12 text-center text-sm-right">
					<button class="btn btn-primary margin-bottom-none" type="submit">Next</button>
				</div>
			</form>
		</c:when>


		<c:when test="${CATEGORIES_DETAILS}">
			<form class="login-box"
				action='<c:url value="/register-seller/categories-details"/>'
				method="post">

				<h1 style="color: orange">Choose Categories You Wish To Sell</h1>
				<c:forEach var="cate" items="${CATEGORY_LIST}">
					<%-- 				<c:out value="${cate.productGender}"/> --%>
					<c:if test="${cate.productGender eq 1}">
					
	Mens:

				<div class="row">
							<div class="col-md-4">
								<c:forEach var="subCategory" items="${cate.subCategories}">
									<div
										class="d-flex flex-wrap justify-content-between padding-bottom-1x">
										<div class="custom-control custom-checkbox">
											<input class="custom-control-input"
												name="subCategoryIds"
												value="${subCategory.subCategoryId}" type="checkbox"> <label
												class="custom-control-label" for="Men">${subCategory.subCategoryName}</label>
										</div>
									</div>
								</c:forEach>
							</div>
							<!-- <div class="row">
								<div class="col-md-4">
									<div class="custom-control custom-checkbox">
										<input class="custom-control-input" type="checkbox"> <label
											class="custom-control-label" for="Men">Casuals</label>
									</div>
								</div>
								<div class="col-md-4">
									<div class="custom-control custom-checkbox">
										<input class="custom-control-input" type="checkbox"> <label
											class="custom-control-label" for="Men">Graphic T's</label>
									</div>
								</div>
								<div class="col-md-4">
									<div class="custom-control custom-checkbox">
										<input class="custom-control-input" type="checkbox"> <label
											class="custom-control-label" for="Men">Shirts</label>
									</div>
								</div>
							</div> -->

						</div>
					</c:if>
					<c:if test="${cate.productGender eq 2}">


							women:

				<div class="d-flex flex-wrap justify-content-between padding-bottom-1x">

							<div class="row">
								<div class="col-md-4">
									<c:forEach var="subCategory" items="${cate.subCategories}">
										<div
											class="d-flex flex-wrap justify-content-between padding-bottom-1x">
											<div class="custom-control custom-checkbox">
												<input class="custom-control-input"
													name="subCategoryIds"
													value="${subCategory.subCategoryId }" type="checkbox">
												<label class="custom-control-label" for="Men">${subCategory.subCategoryName}</label>
											</div>
										</div>

									</c:forEach>
								</div>
								<!-- 	<div class="custom-control custom-checkbox">
										<input class="custom-control-input" type="checkbox"> <label
											class="custom-control-label" for="Women">Shirts</label>
									</div>
								</div>
								<div class="col-md-4">
									<div class="custom-control custom-checkbox">
										<input class="custom-control-input" type="checkbox"> <label
											class="custom-control-label" for="Women">Tops</label>
									</div>
								</div>
								<div class="col-md-4">
									<div class="custom-control custom-checkbox">
										<input class="custom-control-input" type="checkbox"> <label
											class="custom-control-label" for="Women">Jeans</label>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4">
									<div class="custom-control custom-checkbox">
										<input class="custom-control-input" type="checkbox"> <label
											class="custom-control-label" for="Women">Casuals</label>
									</div>
								</div>
								<div class="col-md-4">
									<div class="custom-control custom-checkbox">
										<input class="custom-control-input" type="checkbox"> <label
											class="custom-control-label" for="Women">Leggings</label>
									</div>
								</div>
								<div class="col-md-4">
									<div class="custom-control custom-checkbox">
										<input class="custom-control-input" type="checkbox"> <label
											class="custom-control-label" for="Women">Kurtas</label>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4">
									<div class="custom-control custom-checkbox">
										<input class="custom-control-input" type="checkbox"> <label
											class="custom-control-label" for="Women">Suits</label>
									</div>
									<div class="col-md-4">
										<div class="custom-control custom-checkbox">
											<input class="custom-control-input" type="checkbox">
											<label class="custom-control-label" for="Women">Sarees</label>
										</div>
									</div>

								</div>
							</div>
 -->
							</div>
						</div>
					</c:if>
					<c:if test="${cate.productGender eq 3}">
		
				Kids:
				<div
							class="d-flex flex-wrap justify-content-between padding-bottom-1x">

							<div class="row">
								<div class="col-md-4">
									<c:forEach var="subCategory" items="${cate.subCategories}">
										<div
											class="d-flex flex-wrap justify-content-between padding-bottom-1x">
											<div class="custom-control custom-checkbox">
												<input class="custom-control-input"
													name="subCategoryIds"
													value="${subCategory.subCategoryId }" type="checkbox">
												<label class="custom-control-label" for="Men">${subCategory.subCategoryName}</label>
											</div>

										</div>
									</c:forEach>
									<!-- <div class="custom-control custom-checkbox">
										<input class="custom-control-input" type="checkbox"> <label
											class="custom-control-label" for="Kids">T-Shirts</label>
									</div>
								</div> -->
									<!-- <div class="col-md-4">
									<div class="custom-control custom-checkbox">
										<input class="custom-control-input" type="checkbox"> <label
											class="custom-control-label" for="Kids">Shirts</label>
									</div>
								</div>
								<div class="col-md-4">
									<div class="custom-control custom-checkbox">
										<input class="custom-control-input" type="checkbox"> <label
											class="custom-control-label" for="Kids">Jeans</label>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4">
									<div class="custom-control custom-checkbox">
										<input class="custom-control-input" type="checkbox"> <label
											class="custom-control-label" for="Kids">Trousers</label>
									</div>
								</div>
								<div class="col-md-4">
									<div class="custom-control custom-checkbox">
										<input class="custom-control-input" type="checkbox"> <label
											class="custom-control-label" for="Kids">TrackPants</label>
									</div>
								</div>
								<div class="col-md-4">
									<div class="custom-control custom-checkbox">
										<input class="custom-control-input" type="checkbox"> <label
											class="custom-control-label" for="Kids">Payjamas</label>
									</div>
								</div> -->
									<div class="col-12 text-center text-sm-right">
										<button class="btn btn-primary margin-bottom-none"
											type="submit">Continue</button>
									</div>
								</div>
							</div>
						</div>
					</c:if>
				</c:forEach>
			</form>
		</c:when>
	</c:choose>