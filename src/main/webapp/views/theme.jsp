<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding = "UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<!--
Template Name: Safety - Vuejs, HTML & Laravel Admin Dashboard Template
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
  
<!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/horizontal-menu-template/table-datatable-basic.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:37:16 GMT -->
<head>
   
<style>
.mdl-grid{
	display: flex !important;
    padding: 4px;
    justify-content: space-between;
    height: 4.5rem;
} 
.dt-table{
display: block !important;
height: 100%;
}
.modal {
    width: 100% !important;
}
.required{
	color:red;
}
.my-error-class {
 	 color:red;
}
.my-valid-class {
 	 color:green;
}
.select2-container--default .select2-selection--single .select2-selection__arrow b {
     left: -25% !important;
    margin-top: 1p% !important;
}
body {
    font-family: var(--bs-body-font-family) !important;
}
.dark-layout h1, .dark-layout h2, .dark-layout h3, .dark-layout h4, .dark-layout h5, .dark-layout h6, .dark-layout span  {
    color: #D0D2D6;
}
.select2-container--classic .select2-selection--single .select2-selection__arrow b, .select2-container--default .select2-selection--single .select2-selection__arrow b {
    background-image: url(data:image/svg+xml,%3Csvg xmlns=\'http://www.w3.org/2000/svg\' viewBox=\'0 0 24 24\' fill=\'none\' stroke=\'%23d8d6de\' stroke-width=\'2\' stroke-linecap=\'round\' stroke-linejoin=\'round\' class=\'feather feather-chevron-down\'%3E%3Cpolyline points=\'6 9 12 15 18 9\'%3E%3C/polyline%3E%3C/svg%3E);
    background-size: 18px 14px,18px 14px !important;
    background-repeat: no-repeat !important;
    height: 1rem !important;
    padding-right: 1.5rem !important;
    margin-left: 0 !important;
    margin-top: 0 !important;
    left: -8px !important;
    border-style: none !important;
}
</style>
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <meta name="description" content="Safety admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 Theme with unlimited possibilities.">
    <meta name="keywords" content="admin template,Theme, Safety admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
  <title>Theme</title>
        <link rel="icon" type="image/png" sizes="96x96" href="/brainbox/resources/images/protect-favicon.png" >

	<script src="/brainbox/resources/js/jQuery-v.3.5.min.js"  ></script>
    <!-- BEGIN: Vendor CSS-->
      <link rel="apple-touch-icon" href="/brainbox/resources/images/ico/apple-icon-120.html">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">
    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/tables/datatable/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/tables/datatable/responsive.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/tables/datatable/buttons.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/tables/datatable/rowGroup.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/pickers/flatpickr/flatpickr.min.css">
    <!-- END: Vendor CSS-->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
	  <link rel="stylesheet" href="<c:url value="/resources/css/font-awesome-v.4.7.css" />">
    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/bootstrap-extended.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/colors.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/components.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/themes/dark-layout.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/themes/bordered-layout.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/themes/semi-dark-layout.min.css">
   <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/forms/select/select2.min.css">
    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/core/menu/menu-types/horizontal-menu.min.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/style.css">
    <!-- END: Custom CSS-->

  </head>
  <!-- END: Head-->

  <!-- BEGIN: Body-->
  <body class="horizontal-layout horizontal-menu  navbar-floating footer-static  " data-open="hover" data-menu="horizontal-menu" data-col="">

    <!-- BEGIN: Header-->
	<jsp:include page="../views/layout/header.jsp"></jsp:include> 


    <!-- END: Header-->
    <!-- BEGIN: Main Menu-->
    <div class="horizontal-menu-wrapper">
      <div class="header-navbar navbar-expand-sm navbar navbar-horizontal floating-nav navbar-light navbar-shadow menu-border container-xxl" role="navigation" data-menu="menu-wrapper" data-menu-type="floating-nav">
        <div class="navbar-header">
          <ul class="nav navbar-nav flex-row">
            <li class="nav-item me-auto"><a class="navbar-brand" href="#"><span class="brand-logo">
                  <svg viewbox="0 0 139 95" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" height="24">
                    <defs>
                      <lineargradient id="linearGradient-1" x1="100%" y1="10.5120544%" x2="50%" y2="89.4879456%">
                        <stop stop-color="#000000" offset="0%"></stop>
                        <stop stop-color="#FFFFFF" offset="100%"></stop>
                      </lineargradient>
                      <lineargradient id="linearGradient-2" x1="64.0437835%" y1="46.3276743%" x2="37.373316%" y2="100%">
                        <stop stop-color="#EEEEEE" stop-opacity="0" offset="0%"></stop>
                        <stop stop-color="#FFFFFF" offset="100%"></stop>
                      </lineargradient>
                    </defs>
                    <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                      <g id="Artboard" transform="translate(-400.000000, -178.000000)">
                                             			         <img src="<%=request.getContextPath() %>/resources/images/logo/protect-main.png" width="50" height="40" class="card-img">

                      </g>
                    </g>
                  </svg></span>
                <h2 class="brand-text mb-0"></h2></a></li>
            <li class="nav-item nav-toggle"><a class="nav-link modern-nav-toggle pe-0" data-bs-toggle="collapse"><i class="d-block d-xl-none text-primary toggle-icon font-medium-4" data-feather="x"></i></a></li>
          </ul>
        </div>
        <div class="shadow-bottom"></div>
        <!-- Horizontal menu content-->
 			<jsp:include page="../views/layout/menu.jsp"></jsp:include> 
      </div>
    </div>
    <!-- END: Main Menu-->

    <!-- BEGIN: Content-->
    <div class="app-content content ">
      <div class="content-overlay"></div>
      <div class="header-navbar-shadow"></div>
      <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
              <div class="content-header-left col-md-9 col-12 mb-2">
            <div class="row breadcrumbs-top">
              <div class="col-12">
                <h2 class="content-header-title float-start mb-0">Theme </h2>
                <div class="breadcrumb-wrapper">
                  <ol class="breadcrumb">
                   <%--   <li class="breadcrumb-item"><a href="<%=request.getContextPath() %>/home">Home</a>
                    </li> --%>
                    <li class="breadcrumb-item">Masters
                    </li>
                    <li class="breadcrumb-item active">Theme
                    </li>
                  </ol>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="content-body"><!-- Dashboard Analytics Start -->
<section id="dashboard-analytics">
<div class="row match-height" >
<div class="col-lg-6 col-sm-6 col-12"  style="box-sizing:border-box; display:table;">
  <div class="col-lg-3 col-sm-3 col-6"  style="padding: 1rem;display:table-cell;">
       <div class="col-md-12 mb-1">
              <select class="select2 form-select" id="select2-theme_filter-container" name="theme_code" >
                <option value="">Select Theme</option>
              </select>
 	   </div>
          <h2 class="fw-bolder mt-1"></h2>
    </div>
      <div class="col-lg-3 col-sm-3 col-6"  style="padding: 1rem;display:table-cell;">
       <div class="col-md-12 mb-1">
              <select class="select2 form-select" id="select2-status_filter-container" name="status" >
                <option value="">Select Status</option>
              </select>
 				          </div>
          <h2 class="fw-bolder mt-1"></h2> 
    </div>

</div>
<div class="col-lg-2 col-sm-2 col-12"  style="box-sizing:border-box; display:table;">
    <div class="col-lg-3 col-sm-3 col-6"  style="padding: .5rem;display:table-cell;">
     <button class="btn btn-primary col-md-12" style="margin-top: 10px; width: 45%;     background-color: gainsboro"  onclick="getThemeList();"><i class="fa fa-search" aria-hidden="true"></i></button>
         <button class="btn btn-primary col-md-12" style="margin-top: 10px; width: 45%;     background-color: gainsboro"  onclick="clearFilter();"><i class="fa fa-undo" aria-hidden="true"></i></button>
     </div>
</div>
  <div class="col-lg-4 col-sm-4 col-12"style="
    display: flex;
    align-items: center;
">
    <div class="col-lg-4 col-sm-6 col-6">
    <button type="button" class="btn " data-bs-toggle="modal" data-bs-target="#addTheme"style="margin-top: 17px; color: white !important; background-color: orange !important; width: 42%;"><i class="fa fa-add" aria-hidden="true"></i></button>
         <button class="btn col-md-12" style="margin-top: 17px; width: 42%;     background-color: #14e014 !important;color: white !important;"  onclick="exportTheme();"><i class="fa fa-download" aria-hidden="true"></i></button>
     </div>
  
  </div>
     
</div> 
  <div class="row match-height" style=" display: flex;  justify-content: left ">
    <!-- Greetings Card starts -->

    <!-- Greetings Card ends -->
    <!-- Subscribers Chart Card starts -->

    <div class="col-lg-3 col-sm-3 col-6">
      <div class="card">
        <div class="card-header flex-column align-items-start pb-0">
          <div class="avatar bg-light-primary p-50 m-0">
            <div class="avatar-content">
              <i data-feather="users" class="font-medium-5"></i>
            </div>
          </div>
          <h3 class="fw-bolder mt-1"><span id= "allTheme"><%-- ${sessionScope.ALL_COMPANIES} --%></span></h3>
          <p class="card-text">Total Theme</p>
        </div>
      </div>
    </div>
    <!-- Subscribers Chart Card starts -->
    <div class="col-lg-3 col-sm-3 col-6">
      <div class="card">
        <div class="card-header flex-column align-items-start pb-0">
          <div class="avatar bg-light-primary p-50 m-0">
            <div class="avatar-content">
              <i data-feather="zap" class="font-medium-5"></i>
            </div>
          </div>
          <h3 class="fw-bolder mt-1"><span id= "activeTheme"><%-- ${sessionScope.ACTIVE_COMPANIES} --%></span></h3>
          <p class="card-text">Active Theme</p>
        </div>
      </div>
    </div>
    <!-- Subscribers Chart Card ends -->

    <!-- Orders Chart Card starts -->
    <div class="col-lg-3 col-sm-3 col-6">
      <div class="card">
        <div class="card-header flex-column align-items-start pb-0">
          <div class="avatar bg-light-warning p-50 m-0">
            <div class="avatar-content">
              <i data-feather="zap-off" class="font-medium-5"></i>
            </div>
          </div>
          <h3 class="fw-bolder mt-1"><span id= "inActiveTheme"><%-- ${sessionScope.INACTIVE_COMPANIES} --%></span></h3>
          <p class="card-text">Inactive Theme</p>
        </div>
      </div>
    </div>
    
    <!-- Orders Chart Card ends -->
  </div>
  <!-- List DataTable -->
  <div>
  	
  </div>
  <div class="row">
  
    <div class="col-12">
    
      <div class="card invoice-list-wrapper">
        <div class="card-datatable table-responsive">
       <div class="dt-buttons" style="height : 0.5em;">
      
        </div>
          <table id="datatable-theme" class="invoice-list-table table">
            <thead>
              <tr>
                <th>#</th>
                <th>Action</th>
                <th>Theme Code</th>
                <th class="text-truncate">Theme Name</th>
                <th>Status</th>
                 <th>Description</th>
                 <th>Created Date</th>
                 <th>Modified Date</th>
              </tr>
            </thead>
          </table>
        </div>
      </div>
    </div>
  </div>
  <!--/ List DataTable -->
  




  																				 <!--  model -->
    
<div class="modal fade" id="addTheme" tabindex="-1" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered modal-edit-user">
    <div class="modal-content">
      <div class="modal-header bg-transparent">
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body pb-5 px-sm-5 pt-50">
        <div class="text-center mb-2">
          <h1 class="mb-1">Add Theme</h1>
        </div>
        <form id="addThemeForm" class="row gy-1 pt-75" action="<%=request.getContextPath() %>/add-theme" method="post" class="form-horizontal" role="form" >
		<div class="col-12 col-md-12">
            <label class="form-label" for="modalEditUserFirstName">Theme Name</label><span class="required"> *</span>
            <input
              type="text"
              id="theme_name_add"
              name="theme_name"
              class="form-control"
              placeholder="eg : Re Sustainablity"
              value=""
              data-msg="Please enter your first name"
            />
             <span id="theme_name_addError" class="error-msg" ></span>
          </div>
          <div class="col-12 col-md-6">
            <label class="form-label" for="modalEditUserLastName">Theme Code</label><span class="required"> *</span>
            <input
              type="text"
              id="theme_code_add"
              name="theme_code"
              class="form-control"
              placeholder="eg : RE" onkeyup="checkUniqueId();"
              value=""
              data-msg="Please enter your last name"
            />
             <span id="theme_code_addError" class="error-msg" ></span>
          </div>
          <div class="col-12 col-md-6">
            <label class="form-label" for="select2-basic">Status</label><span class="required"> *</span>
            <select 
              id="select2-status_add-container"
              name="status"
              class="select2 form-select"
              aria-label="Default select example"
            >
              <option value="Active">Active</option>
              <option value="Inactive">Inactive</option>
            </select> 
             <span id="select2-status_add-containerError" class="error-msg" ></span>
          </div>
          <div class="col-12 col-md-12">
            <label class="form-label" for="select2-basic">Description</label><span class="required"> </span>
    		 <div class="row">                         
		    <div class="col-12">
		          <div class="row">
		            <div class="col-12">
		              <div class="mb-1">
		                <textarea
		                  class="form-control"
		                  id="description_add"
		                  name="description"
		                  rows="3"
		                  placeholder="description"
		                ></textarea>
		              </div>
		            </div>
		   
		      </div>
		    </div>
		  </div>
             <span id="select2-description_add-containerError" class="error-msg" ></span>
          </div>
          <div class="col-12 text-center mt-2 pt-50">
            <button type="submit" class="btn btn-primary me-1" id="addBtn" onclick="addTheme();">Add</button>
            <button type="reset" class="btn btn-outline-secondary" data-bs-dismiss="modal" aria-label="Close">
              Discard
            </button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
 																					<!--  model end -->
 																					
 																					
 																			
 																			
 																			

  																				 <!-- Update model -->
    
<div class="modal fade" id="updateTheme" tabindex="-1" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered modal-edit-user">
    <div class="modal-content">
      <div class="modal-header bg-transparent">
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body pb-5 px-sm-5 pt-50">
        <div class="text-center mb-2">
          <h1 class="mb-1">Edit Theme</h1>
        </div>
        <form id="updateThemeForm" class="row gy-1 pt-75" action="<%=request.getContextPath() %>/update-theme" method="post" class="form-horizontal" role="form" >
        <input type="hidden" id="id" name="id" />
		<div class="col-12 col-md-12">
            <label class="form-label" for="modalEditUserFirstName">Theme Name</label><span class="required"> *</span>
            <input
              type="text"
              id="theme_name_edit"
              name="theme_name"
              class="form-control"
              placeholder="eg : Re Sustainablity"
              value=""
              data-msg="Please enter your first name"
            />
             <span id="theme_name_editError" class="error-msg" ></span>
          </div>
          <div class="col-12 col-md-6">
            <label class="form-label" for="modalEditUserLastName">Theme Code</label><span class="required"> *</span>
            <input
              type="text"
              id="theme_code_edit"
              name="theme_code"
              class="form-control"
              placeholder="eg : RE"
              value="" 
              data-msg="Please enter your last name"
            />
             <span id="theme_code_editError" class="error-msg" ></span>
          </div>
          <div class="col-12 col-md-6">
            <label class="form-label" for="select2-basic">Status</label><span class="required"> *</span>
            <select
            	class="select2 form-select" id="select2-status_edit-container"
              name="status"
              aria-label="Default select example"
            >
              <option value="">select</option>
              <option value="Active">Active</option>
              <option value="Inactive">Inactive</option>
            </select>
             <span id="select2-status_edit-containerError" class="error-msg" ></span>
          </div>
          <div class="col-12 col-md-12">
            <label class="form-label" for="select2-basic">Description</label><span class="required"> </span>
    		 <div class="row">
		    <div class="col-12">
		          <div class="row">
		            <div class="col-12">
		              <div class="mb-1">
		                <textarea
		                  class="form-control"
		                  id="description_edit"
		                  name="description"
		                  rows="3"
		                  placeholder="description"
		                ></textarea>
		              </div>
		            </div>
		   
		      </div>
		    </div>
		  </div>
             <span id="select2-description_add-containerError" class="error-msg" ></span>
          </div>
          <div class="col-12 text-center mt-2 pt-50">
            <button type="submit" class="btn btn-primary me-1" onclick="updateTheme();">Update</button>
            <button type="reset" class="btn btn-outline-secondary" data-bs-dismiss="modal" aria-label="Close">
              Discard
            </button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
 																					<!--  model end -->		
 																					
 																					
 																					
 										
</section>

											
 																					
 																					
 																					
<!-- Dashboard Analytics end -->

        </div>
      </div>
    </div>
    <!-- END: Content-->


    <!-- BEGIN: Customizer-->     <!--
    <div class="customizer d-none d-md-block"><a class="customizer-toggle d-flex align-items-center justify-content-center" href="#"><i class="spinner" data-feather="settings"></i></a><div class="customizer-content">
  <!-- Customizer header -->
  <!-- <div class="customizer-header px-2 pt-1 pb-0 position-relative">
    <h4 class="mb-0">Theme Customizer</h4>
    <p class="m-0">Customize & Preview in Real Time</p>

    <a class="customizer-close" href="#"><i data-feather="x"></i></a>
  </div>

  <hr />

  <!-- Styling & Text Direction -->
  <!-- <div class="customizer-styling-direction px-2">
    <p class="fw-bold">Skin</p>
    <div class="d-flex">
      <div class="form-check me-1">
        <input
          type="radio"
          id="skinlight"
          name="skinradio"
          class="form-check-input layout-name"
          checked
          data-layout=""
        />
        <label class="form-check-label" for="skinlight">Light</label>
      </div>
      <div class="form-check me-1">
        <input
          type="radio"
          id="skinbordered"
          name="skinradio"
          class="form-check-input layout-name"
          data-layout="bordered-layout"
        />
        <label class="form-check-label" for="skinbordered">Bordered</label>
      </div>
      <div class="form-check me-1">
        <input
          type="radio"
          id="skindark"
          name="skinradio"
          class="form-check-input layout-name"
          data-layout="dark-layout"
        />
        <label class="form-check-label" for="skindark">Dark</label>
      </div>
      <div class="form-check">
        <input
          type="radio"
          id="skinsemidark"
          name="skinradio"
          class="form-check-input layout-name"
          data-layout="semi-dark-layout"
        />
        <label class="form-check-label" for="skinsemidark">Semi Dark</label>
      </div>
    </div>
  </div>

  <hr />

  <!-- Menu --> <!--
  <div class="customizer-menu px-2">
    <div id="customizer-menu-collapsible" class="d-flex">
      <p class="fw-bold me-auto m-0">Menu Collapsed</p>
      <div class="form-check form-check-primary form-switch">
        <input type="checkbox" class="form-check-input" id="collapse-sidebar-switch" />
        <label class="form-check-label" for="collapse-sidebar-switch"></label>
      </div>
    </div>
  </div>
  <hr />

  --> <!-- Layout Width --> <!--
  <div class="customizer-footer px-2">
    <p class="fw-bold">Layout Width</p>
    <div class="d-flex">
      <div class="form-check me-1">
        <input type="radio" id="layout-width-full" name="layoutWidth" class="form-check-input" checked />
        <label class="form-check-label" for="layout-width-full">Full Width</label>
      </div>
      <div class="form-check me-1">
        <input type="radio" id="layout-width-boxed" name="layoutWidth" class="form-check-input" />
        <label class="form-check-label" for="layout-width-boxed">Boxed</label>
      </div>
    </div>
  </div>
  <hr />

  <!-- Navbar --> <!-- 
  <div class="customizer-navbar px-2">
    <div id="customizer-navbar-colors">
      <p class="fw-bold">Navbar Color</p>
      <ul class="list-inline unstyled-list">
        <li class="color-box bg-white border selected" data-navbar-default=""></li>
        <li class="color-box bg-primary" data-navbar-color="bg-primary"></li>
        <li class="color-box bg-secondary" data-navbar-color="bg-secondary"></li>
        <li class="color-box bg-success" data-navbar-color="bg-success"></li>
        <li class="color-box bg-danger" data-navbar-color="bg-danger"></li>
        <li class="color-box bg-info" data-navbar-color="bg-info"></li>
        <li class="color-box bg-warning" data-navbar-color="bg-warning"></li>
        <li class="color-box bg-dark" data-navbar-color="bg-dark"></li>
      </ul>
    </div>

    <p class="navbar-type-text fw-bold">Navbar Type</p>
    <div class="d-flex">
      <div class="form-check me-1">
        <input type="radio" id="nav-type-floating" name="navType" class="form-check-input" checked />
        <label class="form-check-label" for="nav-type-floating">Floating</label>
      </div>
      <div class="form-check me-1">
        <input type="radio" id="nav-type-sticky" name="navType" class="form-check-input" />
        <label class="form-check-label" for="nav-type-sticky">Sticky</label>
      </div>
      <div class="form-check me-1">
        <input type="radio" id="nav-type-static" name="navType" class="form-check-input" />
        <label class="form-check-label" for="nav-type-static">Static</label>
      </div>
      <div class="form-check">
        <input type="radio" id="nav-type-hidden" name="navType" class="form-check-input" />
        <label class="form-check-label" for="nav-type-hidden">Hidden</label>
      </div>
    </div>
  </div>
  <hr />

  --> <!-- Footer --> <!-- 
  <div class="customizer-footer px-2">
    <p class="fw-bold">Footer Type</p>
    <div class="d-flex">
      <div class="form-check me-1">
        <input type="radio" id="footer-type-sticky" name="footerType" class="form-check-input" />
        <label class="form-check-label" for="footer-type-sticky">Sticky</label>
      </div>
      <div class="form-check me-1">
        <input type="radio" id="footer-type-static" name="footerType" class="form-check-input" checked />
        <label class="form-check-label" for="footer-type-static">Static</label>
      </div>
      <div class="form-check me-1">
        <input type="radio" id="footer-type-hidden" name="footerType" class="form-check-input" />
        <label class="form-check-label" for="footer-type-hidden">Hidden</label>
      </div>
    </div>
  </div>
</div>

    </div>
    --> <!-- End: Customizer-->

    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>

    <!-- BEGIN: Footer-->
    <footer class="footer footer-static footer-light">
      <p class="clearfix mb-0"><span class="float-md-start d-block d-md-inline-block mt-25">COPYRIGHT  &copy;  <span id="currentYear"></span> | Powered by<a class="ms-25" href="https://resustainability.com/" target="_blank">Re Sustainability Limited</a><span class="d-none d-sm-inline-block"> . All Rights Reserved.</span></span></p>
    </footer>
    <button class="btn btn-primary btn-icon scroll-top" type="button"><i data-feather="arrow-up"></i></button>
    <!-- END: Footer-->

 
    <!-- BEGIN: Vendor JS-->
    <script src="/brainbox/resources/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="/brainbox/resources/vendors/js/ui/jquery.sticky.js"></script>
    <script src="/brainbox/resources/vendors/js/forms/select/select2.full.min.js"></script>
    <script src="/brainbox/resources/vendors/js/charts/apexcharts.min.js"></script>
    <script src="/brainbox/resources/vendors/js/extensions/toastr.min.js"></script>
    <script src="/brainbox/resources/vendors/js/extensions/moment.min.js"></script>
    <script src="/brainbox/resources/vendors/js/tables/datatable/jquery.dataTables.min.js"></script>
    <script src="/brainbox/resources/vendors/js/tables/datatable/datatables.buttons.min.js"></script>
    <script src="/brainbox/resources/vendors/js/tables/datatable/dataTables.bootstrap5.min.js"></script>
    <script src="/brainbox/resources/vendors/js/tables/datatable/dataTables.responsive.min.js"></script>
    <script src="/brainbox/resources/vendors/js/tables/datatable/responsive.bootstrap5.js"></script>
    <!-- END: Page Vendor JS-->
 <script src="/brainbox/resources/js/materialize-v.1.0.min.js "  ></script>
    <script src="/brainbox/resources/js/jquery-validation-1.19.1.min.js"  ></script>
    <script src="/brainbox/resources/js/jquery.dataTables-v.1.10.min.js"  ></script>
     <script src="/brainbox/resources/js/datetime-moment-v1.10.12.js"  ></script>
         <script src="/brainbox/resources/js/dataTables.material.min.js"  ></script>
      <script src="/brainbox/resources/js/moment-v2.8.4.min.js"  ></script>
    <!-- BEGIN: Theme JS-->
    <script src="/brainbox/resources/js/core/app-menu.min.js"></script>
    <script src="/brainbox/resources/js/core/app.min.js"></script>
    <script src="/brainbox/resources/js/scripts/customizer.min.js"></script>
     <script src="/brainbox/resources/js/scripts/forms/form-select2.min.js"></script>
    <!-- END: Theme JS-->
   <script src="/brainbox/resources/js/scripts/pages/modal-add-new-cc.min.js"></script>
    <script src="/brainbox/resources/js/scripts/pages/page-pricing.min.js"></script>
    <script src="/brainbox/resources/js/scripts/pages/modal-add-new-address.min.js"></script>
    <script src="/brainbox/resources/js/scripts/pages/modal-create-app.min.js"></script>
    <script src="/brainbox/resources/js/scripts/pages/modal-two-factor-auth.min.js"></script>
    <script src="/brainbox/resources/js/scripts/pages/modal-edit-user.min.js"></script>
    <script src="/brainbox/resources/js/scripts/pages/modal-share-project.min.js"></script>
    <!-- BEGIN: Page JS-->
     <script src="/brainbox/resources/js/scripts/pages/dashboard-analytics.min.js"></script>
    <script src="/brainbox/resources/js/scripts/pages/app-invoice-list.min.js"></script>
    <!-- END: Page JS-->
    
  <form action="<%=request.getContextPath()%>/export-theme" name="exportThemeForm" id="exportThemeForm" target="_blank" method="post">	
      
        <input type="hidden" name="theme_code" id="exportTheme_filter" />
        <input type="hidden" name="status" id="exportStatus_filter" />
	</form>
    <script>
      $(window).on("load",(function(){
    	  
          if (feather) {
            feather.replace({ width: 14, height: 14 });
          }
          $('.modal').modal({ dismissible: false });
          getThemeList();
         }));
      document.getElementById("currentYear").innerHTML = new Date().getFullYear();
      
      function clearFilter(){
		    	$("#select2-theme_filter-container").val("");
		    	$("#select2-status_filter-container").val("");
		    	window.location.href= "<%=request.getContextPath()%>/theme";
	    }
      
      function getThemeFilterList() {
	        var theme_code = $("#select2-theme_filter-container").val();
	        var status = $("#select2-status_filter-container").val();
	        if ($.trim(theme_code) == "") {
	        	$("#select2-theme_filter-container option:not(:first)").remove();
	        	var myParams = { theme_code: theme_code, status: status };
	            $.ajax({
	                url: "<%=request.getContextPath()%>/ajax/getThemeFilterList",
	                data: myParams, cache: false,async: false,
	                success: function (data) {
	                    if (data.length > 0) {
	                        $.each(data, function (i, val) {
	                             $("#select2-theme_filter-container").append('<option value="' + val.theme_code + '">'+ "[ "+$.trim(val.theme_code) +" ]"+" - " + $.trim(val.theme_name) +'</option>');
	                        });
	                    }
	                },error: function (jqXHR, exception) {
	    	   			      $(".page-loader").hide();
	       	          	  getErrorMessage(jqXHR, exception);
	       	     	  }
	            });
	        }
	    }
      function getStatusFilterList() {
    	  var theme_code = $("#select2-theme_filter-container").val();
	        var status = $("#select2-status_filter-container").val();
	        if ($.trim(status) == "") {
	        	$("#select2-status_filter-container option:not(:first)").remove();
	        	var myParams = { theme_code: theme_code, status: status };
	            $.ajax({
	                url: "<%=request.getContextPath()%>/ajax/getStatusFilterListInThemes",
	                data: myParams, cache: false,async: false,
	                success: function (data) {
	                    if (data.length > 0) {
	                        $.each(data, function (i, val) {
	                             $("#select2-status_filter-container").append('<option value="' + val.status + '">' + $.trim(val.status) +'</option>');
	                        });
	                    }
	                },error: function (jqXHR, exception) {
	    	   			      $(".page-loader").hide();
	       	          	  getErrorMessage(jqXHR, exception);
	       	     	  }
	            });
	        }
	    }

	    function exportTheme(){
	    	 var theme_code = $("#select2-theme_filter-container").val();
	         var status = $("#select2-status_filter-container").val();
	    	
	    	 $("#exportTheme_filter").val(theme_code);
	     	 $("#exportStatus_filter").val(status);
	     	 $("#exportThemeForm ").submit();
	  	}
	    
	    function getThemeList(){
	    	getThemeFilterList('');
	    	getStatusFilterList('');
	    	var theme_code = $("#select2-theme_filter-container").val();
	        var status = $("#select2-status_filter-container").val();
	        $('#allTheme').html(0)
    		$('#activeTheme').html(0)
    		$('#inActiveTheme').html(0)
	     	table = $('#datatable-theme').DataTable();
			table.destroy();
			$.fn.dataTable.moment('DD-MMM-YYYY');
			table = $('#datatable-theme').DataTable({
				"bStateSave": true,  
	     		fixedHeader: true,
	         	//Default: Page display length
					"iDisplayLength" : 10,
					"iData" : {
						"start" : 52
					},"iDisplayStart" : 0,
					"drawCallback" : function() {
					},
	            columnDefs: [],
	            // "ScrollX": true,
	            //"scrollCollapse": true,
	            "sScrollX": "100%",
	            "sScrollXInner": "100%",
	            "bScrollCollapse": true,
	            "initComplete" : function() {
				/* 		$('.dataTables_filter input[type="search"]')
								.attr('placeholder', 'Search')
								.css({
									'width' : '300px ',
									'display' : 'inline-block'
								});
						var input = $('.dataTables_filter input')
								.unbind()
								.bind('keyup',function(e){
							    if (e.which == 13){
							    	self.search(input.val()).draw();
							    }
							}), self = this.api(), $searchButton = $('<i class="fa fa-search" title="Go" >')
						.click(function() {
							self.search(input.val()).draw();
						}), 
						$clearButton = $('<i class="fa fa-close" title="Reset">')
						.click(function() {
							input.val('');
							$searchButton.click();
						})
						$('.dataTables_filter').append( '<div class="right-btns"></div>');
						$('.dataTables_filter div').append( $searchButton, $clearButton); */ 					
					}
	        }).rows().remove().draw();
			table.state.clear();		
		 	var myParams = {theme_code: theme_code, status: status};
			$.ajax({url : "<%=request.getContextPath()%>/ajax/getThemes",type:"POST",data:myParams,success : function(data){    				
					if(data != null && data != '' && data.length > 0){    					
		         		$.each(data,function(key,val){
		         			var theme_data = "'"+val.theme_code+"','"+val.description+"','"+val.status+"','"+val.theme_name+"','"+val.id+"'";
		                    var actions = '<a href="javascript:void(0);"  onclick="getTheme('+theme_data+');" class="btn btn-primary"  title="Edit"><i class="fa fa-pencil"></i></a>';    	                   	
		                   	var rowArray = [];    	                 
		            		$('#allTheme').html(val.all_themes)
		            		$('#activeTheme').html(val.active_themes)
		            		$('#inActiveTheme').html(val.inActive_themes)
		                   	rowArray.push($.trim(val.id));
		                	rowArray.push($.trim(actions));  
		                   	rowArray.push($.trim(val.theme_code));
		                   	rowArray.push($.trim(val.theme_name));
		                   	rowArray.push($.trim(val.status));
		                   	rowArray.push($.trim(val.description));  
		                   	rowArray.push($.trim(val.created_date));
		                   	rowArray.push($.trim(val.modified_date));
		                    table.row.add(rowArray).draw( true );
						});
					}
				},error: function (jqXHR, exception) {
		         	getErrorMessage(jqXHR, exception);
		     }});
	    } 
	    
	    function getTheme(theme_code,description,status,theme_name,id){
	    	 $('#theme_name_edit').val('');
			 $('#theme_code_edit').val('');
			 $('select[name^="status"] option:selected').removeAttr("selected");
		      $('#id').val($.trim(id));
		      $('#updateTheme').modal('show');
		      $('#updateTheme #theme_name_edit').val($.trim(theme_name)).focus();
		      $('#updateTheme #theme_code_edit').val($.trim(theme_code)).focus();
		      $('#updateTheme #description_edit').val($.trim(description)).focus();
		      if(status != null && status != ''  && status != "undefined"){
		    	  $('select[name^="status"] option[value="'+ status +'"]').attr("selected",true);
		    	  $('select').select2();
		      }
	   }
	    
	    function getErrorMessage(jqXHR, exception) {
	  	    var msg = '';
	  	    if (jqXHR.status === 0) {
	  	        msg = 'Not connect.\n Verify Network.';
	  	    } else if (jqXHR.status == 404) {
	  	        msg = 'Requested page not found. [404]';
	  	    } else if (jqXHR.status == 500) {
	  	        msg = 'Internal Server Error [500].';
	  	    } else if (exception === 'parsererror') {
	  	        msg = 'Requested JSON parse failed.';
	  	    } else if (exception === 'timeout') {
	  	        msg = 'Time out error.';
	  	    } else if (exception === 'abort') {
	  	        msg = 'Ajax request aborted.';
	  	    } else {
	  	        msg = 'Uncaught Error.\n' + jqXHR.responseText;
	  	    }
	  	    console.log(msg);
        }
	    
	    function addTheme(){
	    	if(validator.form()){ // validation perform
	        	document.getElementById("addThemeForm").submit();	
	    	}
	    }
	    function updateTheme(){
	    	if(validator1.form()){ // validation perform
	        	document.getElementById("updateThemeForm").submit();	
	    	}
	    }
	    var validator1 =	$('#updateThemeForm').validate({
		   	 errorClass: "my-error-class",
		   	 validClass: "my-valid-class",
		   	 ignore: ":hidden:not(.select2 form-select)",
		   		    rules: {
		   		 		  "theme_name": {
		   			 			required: true
		   			 	  },"theme_code": {										
		   			 			required: true
		   			 	  },"status": {
		   	                 	required: true,
		   			 	  },"description": {
		   			 			required: false,
		   		 	  	  }
		   		 	},
		   		    messages: {
		   		 		 "theme_name": {
		   				 	required: 'Required',
		   			 	  },"theme_code": {
		   			 		required: 'Required'
		   			 	  },"status": {
		   		 			required: 'Required'
		   		 	  	  },"description": {
			   		 			required: 'Required'
		   		 	  	  }
		      		},
		      		errorPlacement:function(error, element){
		      		 	if (element.attr("id") == "theme_name_edit" ){
		   				 document.getElementById("theme_name_editError").innerHTML="";
		   		 		 error.appendTo('#theme_name_editError');
		   			}else if(element.attr("id") == "theme_code_edit" ){
		   			   document.getElementById("theme_code_editError").innerHTML="";
		   		 	   error.appendTo('#theme_code_editError');
		   			}else if(element.attr("id") == "select2-status_edit-container" ){
		   				document.getElementById("select2-status_edit-containerError").innerHTML="";
		   			 	error.appendTo('#select2-status_edit-containerError');
		   			}else if(element.attr("id") == "select2-description_edit-container" ){
		   				document.getElementById("select2-description_edit-containerError").innerHTML="";
		   			 	error.appendTo('#select2-description_edit-containerError');
		   			}else{
		   					error.insertAfter(element);
		   	        } 
		      		},invalidHandler: function (form, validator) {
		               var errors = validator.numberOfInvalids();
		               if (errors) {
		                   var position = validator.errorList[0].element;
		                   jQuery('html, body').animate({
		                       scrollTop:jQuery(validator.errorList[0].element).offset().top - 100
		                   }, 1000);
		               }
		           },submitHandler:function(form){
		   	    	//form.submit();
		   	    }
		   	});
	    var validator =	$('#addThemeForm').validate({
	   	 errorClass: "my-error-class",
	   	 validClass: "my-valid-class",
	   	 ignore: ":hidden:not(.select2 form-select)",
	   		    rules: {
	   		 		  "theme_name": {
	   			 			required: true
	   			 	  },"theme_code": {										
	   			 			required: true
	   			 	  },"status": {
	   	                 	required: true,
	   			 	  },"description": {
	   			 		   required: false,
	   		 	  	  }
	   		 	},
	   		    messages: {
	   		 		 "theme_name": {
	   				 	required: 'Required',
	   			 	  },"theme_code": {
	   			 		required: 'Required'
	   			 	  },"status": {
	   		 			required: 'Required'
	   		 	  	  },"description": {
	   		 			required: 'Required'
	   		 	  	  }
	      		},
	      		errorPlacement:function(error, element){
	      		 	if (element.attr("id") == "theme_name_add" ){
	   				 document.getElementById("theme_name_addError").innerHTML="";
	   		 		 error.appendTo('#theme_name_addError');
	   			}else if(element.attr("id") == "theme_code_add" ){
	   			   document.getElementById("theme_code_addError").innerHTML="";
	   		 	   error.appendTo('#theme_code_addError');
	   			}else if(element.attr("id") == "select2-status_add-container" ){
	   				document.getElementById("select2-status_add-containerError").innerHTML="";
	   			 	error.appendTo('#select2-status_add-containerError');
	   			}else if(element.attr("id") == "select2-description_add-container" ){
	   				document.getElementById("select2-description_add-containerError").innerHTML="";
	   			 	error.appendTo('#select2-description_add-containerError');
	   			}else{
	   					error.insertAfter(element);
	   	        } 
	      		},invalidHandler: function (form, validator) {
	               var errors = validator.numberOfInvalids();
	               if (errors) {
	                   var position = validator.errorList[0].element;
	                   jQuery('html, body').animate({
	                       scrollTop:jQuery(validator.errorList[0].element).offset().top - 100
	                   }, 1000);
	               }
	           },submitHandler:function(form){
	   	    	//form.submit();
	   	    }
	   	}); 
	   	$('.formSelect').change(function(){
	   	    if ($(this).val() != ""){
	   	        $(this).valid();
	   	    }
	   	});
	   	
	   	$('input').change(function(){
	   	    if ($(this).val() != ""){
	   	        $(this).valid();
	   	    }
	   	});
	   	
	   	function checkUniqueId(){
	   		var theme_code = $('#theme_code_add').val();
	        if ($.trim(theme_code) != "" ) {
	        	var myParams = {theme_code: theme_code };
	            $.ajax({
	                url: "<%=request.getContextPath()%>/ajax/checkUniqueIfForTheme",
	                data: myParams, cache: false,async: false,
	                success: function (data) {
	                    if (data.length > 0) {
	                        $.each(data, function (i, val) {
		                      $("#theme_code_addError").html(theme_code+" Already Exists!").css("color","red");
		                      $('#theme_code_add').removeClass("is-valid")
		                      $('#theme_code_add').addClass("is-invalid")
		                      $("#addBtn").prop("disabled",true);
	                    	});
	                     }else{
	                    	  $("#theme_code_addError").text("");
	                    	  $('#theme_code_add').removeClass("is-invalid")
		                      $('#theme_code_add').addClass("is-valid")
		                      $("#addBtn").prop("disabled",false);
	                     }           
	                    
	                    },error: function (jqXHR, exception) {
	    	   			      $(".page-loader").hide();
	       	          	  getErrorMessage(jqXHR, exception);
	       	     	  }
	            });
	        }
	   		
	   	}
    </script>
  </body>
  <!-- END: Body-->

<!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/horizontal-menu-template/dashboard-analytics.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:36:10 GMT -->
</html>