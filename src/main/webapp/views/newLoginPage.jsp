<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<!--
Template Name: Vuexy - Vuejs, HTML & Laravel Admin Dashboard Template
Author: PixInvent
Website: http://www.pixinvent.com/
Contact: hello@pixinvent.com
Follow: www.twitter.com/pixinvents
Like: www.facebook.com/pixinvents
Purchase: https://1.envato.market/vuexy_admin
Renew Support: https://1.envato.market/vuexy_admin
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.

-->
<html class="loading" lang="en" data-textdirection="ltr">
<!-- BEGIN: Head-->

<!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/horizontal-menu-template/auth-register-cover.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:37:17 GMT -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
<meta name="description"
	content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
<meta name="keywords"
	content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
<meta name="author" content="PIXINVENT">
<title>Ramky - Waste Management System</title>
<link rel="icon" type="image/png" sizes="96x96"
	href="/reirm/resources/images/logo/top_right_logo.jpg">
<link rel="apple-touch-icon"
	href="/reirm/resources/app-assets/images/ico/apple-icon-120.html">
<link rel="shortcut icon" type="image/x-icon"
	href="https://pixinvent.com/demo/vuexy-html-bootstrap-admin-template/app-assets/images/ico/favicon.ico">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600"
	rel="stylesheet">

<!-- BEGIN: Vendor CSS-->
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/app-assets/vendors/css/vendors.min.css">
<!-- END: Vendor CSS-->

<!-- BEGIN: Theme CSS-->
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/app-assets/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/app-assets/css/bootstrap-extended.min.css">
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/app-assets/css/colors.min.css">
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/app-assets/css/components.min.css">
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/app-assets/css/themes/dark-layout.min.css">
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/app-assets/css/themes/bordered-layout.min.css">
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/app-assets/css/themes/semi-dark-layout.min.css">
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/app-assets/vendors/css/forms/select/select2.min.css">
<!-- BEGIN: Page CSS-->
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/app-assets/css/core/menu/menu-types/horizontal-menu.min.css">
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/app-assets/css/plugins/forms/form-validation.css">
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/app-assets/css/pages/authentication.css">
<!-- END: Page CSS-->

<!-- BEGIN: Custom CSS-->
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/assets/css/style.css">
<!-- END: Custom CSS-->
<style>
.cg {
	color: White !important;
}

.pxx-4 {
	padding-right: 8.5rem !important;
	padding-left: 8.5rem !important;
}

.vv {
	background: linear-gradient(to bottom, #4d7e13, #ffffff);
}

.brand-logo {
	top: 0rem !important;
	left: 0rem !important;
}

.select2-container--classic .select2-selection--single .select2-selection__arrow b,
	.select2-container--default .select2-selection--single .select2-selection__arrow b
	{
	background-image:
		url(data:image/svg+xml,%3Csvg xmlns=\'http://www.w3.org/2000/svg\' viewBox=\'0 0 24 24\' fill=\'none\' stroke=\'%23d8d6de\' stroke-width=\'2\' stroke-linecap=\'round\' stroke-linejoin=\'round\' class=\'feather feather-chevron-down\'%3E%3Cpolyline points=\'6 9 12 15 18 9\'%3E%3C/polyline%3E%3C/svg%3E);
	background-size: 18px 14px, 18px 14px !important;
	background-repeat: no-repeat !important;
	height: 1rem !important;
	padding-right: 1.5rem !important;
	margin-left: 0 !important;
	margin-top: 0 !important;
	left: -8px !important;
	border-style: none !important;
}

.select2-container--default .select2-selection--single .select2-selection__arrow b
	{
	left: -25% !important;
	margin-top: 1p% !important;
}
</style>
</head>
<!-- END: Head-->

<!-- BEGIN: Body-->
<body
	class="horizontal-layout horizontal-menu blank-page navbar-floating footer-static  "
	data-open="hover" data-menu="horizontal-menu" data-col="blank-page">
	<!-- BEGIN: Content-->
	<div class="app-content content ">
		<div class="content-overlay"></div>
		<div class="header-navbar-shadow"></div>
		<div class="content-wrapper">
			<div class="content-header row"></div>
			<div class="content-body">
				<div class="auth-wrapper auth-cover">
					<div class="auth-inner row m-0">
						<!-- Brand logo-->
						<a class="brand-logo" href="index-2.html"> <img
							src="/reirm/resources/images/logo/top_right_logo (1).jpg"
							class="" alt="card-img-left" style="width: 18rem;"></a>
						<!-- /Brand logo-->
						<!-- Left Text-->
						<div class="d-none d-lg-flex col-lg-8 align-items-center p-5">
							<div
								class="w-100 d-lg-flex align-items-center justify-content-center px-5">
								<img class="img-fluid"
									src="/reirm/resources/images/logo/loginpage_img.jpg"
									alt="Register V2" style="width: 33rem;" />
							</div>
						</div>
						<!-- /Left Text-->
						<!-- Register-->
						<div
							class="d-flex col-lg-4 align-items-center auth-bg px-2 p-lg-5 vv">
							<div class="col-12 col-sm-8 col-md-6 col-lg-12 px-xl-2 mx-auto">
								<h2 class="card-title fw-bold mb-1 cg">Welcome</h2>
								<p class="card-text mb-2 cg">Login into Waste Management
									System</p>
									${invalidEmail}
								<form class="auth-login-form mt-2"
									action="<%=request.getContextPath() %>/login" method="POST">
									<div class="mb-1">
										<label for="login-email" class="form-label">user Id</label> <input
											type="text" class="form-control" id="userId" name="userId"
											placeholder="User Id" aria-describedby="userId" tabindex="1"
											autofocus />
									</div>

									<div class="mb-1">
										<div class="d-flex justify-content-between">
											<label class="form-label" for="login-password">Password</label>
											<a href="auth-forgot-password-basic.html"> <small>Forgot
													Password?</small>
											</a>
										</div>
										<div
											class="input-group input-group-merge form-password-toggle">
											<input type="password"
												class="form-control form-control-merge" id="password"
												name="password" tabindex="2" placeholder="Password"
												aria-describedby="password" /> <span
												class="input-group-text cursor-pointer"><i
												data-feather="eye"></i></span>
										</div>
									</div>


									<%-- <div class="mb-1">
										<div class="col-md-10 mb-1" data-select2-id="46">
											<div class="position-relative" data-select2-id="45">
												<select
													class="select2 form-select select2-hidden-accessible"
													id="select2-basic" data-select2-id="select2-basic"
													tabindex="-1" aria-hidden="true">
													<option value="" data-select2-id="1">Select Center</option>
													<c:forEach var="obj" items="${objsList}" varStatus="index">
														<option value="${obj.centerId }"
															data-select2-id="${index.count }">${obj.centerName }</option>
													</c:forEach>

												</select>
											</div>
										</div>
									</div> --%>

									<div class="mb-1">
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="remember-me" tabindex="3" /> <label
												class="form-check-label" for="remember-me"> Remember
												Me </label>
										</div>
									</div>
									<button class="btn btn-primary w-100" tabindex="4">Sign
										in</button>
								</form>
								<%-- <form class="auth-register-form mt-2" action="<%=request.getContextPath() %>/login" method="POST">
                    <div class="mb-1">
                      <label class="form-label cg" for="register-username">Username</label>
                      <input class="form-control " id="register-username" type="text" name="register-username" placeholder="johndoe" aria-describedby="register-username" autofocus="" tabindex="1"/>
                    </div>
                    <div class="mb-1">
                      <label class="form-label cg" for="register-password">Password</label>
                      <div class="input-group input-group-merge form-password-toggle">
                        <input class="form-control form-control-merge" id="register-password" type="password" name="register-password" placeholder="············" aria-describedby="register-password" tabindex="3"/><span class="input-group-text cursor-pointer"><i data-feather="eye"></i></span>
                      </div>
                    </div>
                     <div class="mb-1">
                     <div class="col-md-10 mb-1" data-select2-id="46">
              <div class="position-relative" data-select2-id="45"><select class="select2 form-select select2-hidden-accessible" id="select2-basic" data-select2-id="select2-basic" tabindex="-1" aria-hidden="true">
                <option value="" data-select2-id="1">Select Center</option>
                	<c:forEach var="obj" items="${objsList}" varStatus="index">
					<option value="${obj.centerId }" data-select2-id="${index.count }">${obj.centerName }</option>
				</c:forEach>
      
              </select></div>
            </div>
                     </div>
         <div class="demo-inline-spacing">
           
            <button type="button" class="btn btn-relief-primary m-1">Sign In <i data-feather='arrow-right-circle'></i></button>
    		 </div>
            </form> --%>
								<div class="divider my-2">
									<div class="divider-text">-</div>
								</div>
								<div>Ramky Waste Management is a complete suite helps the
									organization to create a complete end to end system to monitor
									activities associated Solid/Hazardous/Bio medical waste.</div>
							</div>
						</div>
						<!-- /Register-->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- END: Content-->


	<!-- BEGIN: Vendor JS-->
	<script src="/reirm/resources/app-assets/vendors/js/vendors.min.js"></script>
	<!-- BEGIN Vendor JS-->

	<!-- BEGIN: Page Vendor JS-->
	<script
		src="/reirm/resources/app-assets/vendors/js/ui/jquery.sticky.js"></script>
	<script
		src="/reirm/resources/app-assets/vendors/js/forms/validation/jquery.validate.min.js"></script>
	<!-- END: Page Vendor JS-->

	<!-- BEGIN: Theme JS-->
	<script src="/reirm/resources/app-assets/js/core/app-menu.min.js"></script>
	<script src="/reirm/resources/app-assets/js/core/app.min.js"></script>
	<!-- END: Theme JS-->
	<script
		src="/reirm/resources/app-assets/vendors/js/forms/select/select2.full.min.js"></script>
	<script
		src="/reirm/resources/app-assets/js/scripts/forms/form-select2.min.js"></script>
	<!-- BEGIN: Page JS-->
	<script
		src="/reirm/resources/app-assets/js/scripts/pages/auth-register.min.js"></script>
	<!-- END: Page JS-->

	<script>
      $(window).on('load',  function(){
        if (feather) {
          feather.replace({ width: 14, height: 14 });
        }
      })
    </script>
</body>
<!-- END: Body-->

<!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/horizontal-menu-template/auth-register-cover.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:37:17 GMT -->
</html>