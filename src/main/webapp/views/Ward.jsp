<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
tr[role="row"] th {
    background-color: #66962c !important;
    color: white !important;
}


tbody, td, tfoot, th, thead, tr {
    border-color: #66962c!important;
    border-style: solid;
    border-width: 0;
}
td{
    font-size: 12px!important;
    color: black!important;

}
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
.input-field .searchable_label{
      		font-size:0.85rem;
        } 
        td,th{
        	box-sizing:content-box !important;
        }
 	 .dataTables_filter label{
         	content:'';
         }
         .right-btns .fa{
         	position:relative;
         	top:-35px;
         	right: 32px !important;
         }
         .right-btns .fa+.fa{
         	right: 18px !important;
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
.mdl-grid {
	display: flex !important;
	padding: 4px;
	justify-content: space-between;
	height: 4.5rem;
}

.dt-table {
	display: block !important;
	height: 100%;
}

.modal {
	width: 100% !important;
}

.required {
	color: red;
}

.my-error-class {
	color: red;
}

.my-valid-class {
	color: green;
}

.select2-container--default .select2-selection--single .select2-selection__arrow b
	{
	left: -25% !important;
	margin-top: 1p% !important;
}

body {
	font-family: var(--bs-body-font-family) !important;
}

.dark-layout h1, .dark-layout h2, .dark-layout h3, .dark-layout h4,
	.dark-layout h5, .dark-layout h6, .dark-layout span {
	color: #D0D2D6;
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
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
<meta name="description"
	content="Safety admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 complaintTypeId with unlimited possibilities.">
<meta name="keywords"
	content="admin template,complaintTypeId, Safety admin template, dashboard template, flat admin template, responsive admin template, web app">
<meta name="author" content="PIXINVENT">
<title>Ramky - Complaint Registration</title>
<link rel="icon" type="image/png" sizes="96x96"
	href="/reirm/resources/images/logo/top_right_logo.jpg">

<script src="/reirm/resources/js/jQuery-v.3.5.min.js"></script>
<!-- BEGIN: Vendor CSS-->
<link rel="apple-touch-icon"
	href="/reirm/resources/images/ico/apple-icon-120.html">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600"
	rel="stylesheet">
<!-- BEGIN: Vendor CSS-->
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/vendors/css/vendors.min.css">
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/vendors/css/tables/datatable/dataTables.bootstrap5.min.css">
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/vendors/css/tables/datatable/responsive.bootstrap5.min.css">
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/vendors/css/tables/datatable/buttons.bootstrap5.min.css">
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/vendors/css/tables/datatable/rowGroup.bootstrap5.min.css">
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/vendors/css/pickers/flatpickr/flatpickr.min.css">
<!-- END: Vendor CSS-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
<link rel="stylesheet"
	href="<c:url value="/resources/css/font-awesome-v.4.7.css" />">
<!-- BEGIN: Theme CSS-->
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/vendors/css/extensions/toastr.min.css">
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/css/plugins/extensions/ext-component-toastr.min.css">
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/css/bootstrap-extended.min.css">
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/css/colors.min.css">
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/css/components.min.css">
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/css/themes/dark-layout.min.css">
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/css/themes/bordered-layout.min.css">
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/css/themes/semi-dark-layout.min.css">
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/vendors/css/forms/select/select2.min.css">
<!-- BEGIN: Page CSS-->
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/css/core/menu/menu-types/horizontal-menu.min.css">
<!-- END: Page CSS-->
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/app-assets/vendors/css/pickers/pickadate/pickadate.css">
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/app-assets/vendors/css/pickers/flatpickr/flatpickr.min.css">
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/app-assets/css/plugins/forms/pickers/form-flat-pickr.min.css">
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/app-assets/css/plugins/forms/pickers/form-pickadate.min.css">
<!-- BEGIN: Custom CSS-->
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/css/style.css">
<!-- END: Custom CSS-->

</head>
<!-- END: Head-->

<!-- BEGIN: Body-->
<body
	class="horizontal-layout horizontal-menu  navbar-floating footer-static  "
	data-open="hover" data-menu="horizontal-menu" data-col="">

	<!-- BEGIN: Header-->
	<jsp:include page="../views/layout/header.jsp"></jsp:include>


	<!-- END: Header-->
	<!-- BEGIN: Main Menu-->
	<div class="horizontal-menu-wrapper">
		<div
			class="header-navbar navbar-expand-sm navbar navbar-horizontal floating-nav navbar-light navbar-shadow menu-border container-xxl"
			role="navigation" data-menu="menu-wrapper"
			data-menu-type="floating-nav">
			<div class="navbar-header">
				<ul class="nav navbar-nav flex-row">
					<li class="nav-item me-auto"><a class="navbar-brand" href="#"><span
							class="brand-logo"> <svg viewbox="0 0 139 95"
									version="1.1" xmlns="http://www.w3.org/2000/svg"
									xmlns:xlink="http://www.w3.org/1999/xlink" height="24">
                    <defs>
                      <lineargradient id="linearGradient-1" x1="100%"
										y1="10.5120544%" x2="50%" y2="89.4879456%">
                        <stop stop-color="#000000" offset="0%"></stop>
                        <stop stop-color="#FFFFFF" offset="100%"></stop>
                      </lineargradient>
                      <lineargradient id="linearGradient-2"
										x1="64.0437835%" y1="46.3276743%" x2="37.373316%" y2="100%">
                        <stop stop-color="#EEEEEE" stop-opacity="0"
										offset="0%"></stop>
                        <stop stop-color="#FFFFFF" offset="100%"></stop>
                      </lineargradient>
                    </defs>
                    <g id="Page-1" stroke="none" stroke-width="1"
										fill="none" fill-rule="evenodd">
                      <g id="Artboard"
										transform="translate(-400.000000, -178.000000)">
                       			         <img
										src="<%=request.getContextPath()%>/resources/images/logo/protect-main.png"
										width="50" height="40" class="card-img">

                      </g>
                    </g>
                  </svg></span>
							<h2 class="brand-text mb-0"></h2></a></li>
					<li class="nav-item nav-toggle"><a
						class="nav-link modern-nav-toggle pe-0" data-bs-toggle="collapse"><i
							class="d-block d-xl-none text-primary toggle-icon font-medium-4"
							data-feather="x"></i></a></li>
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
							<h2 class="content-header-title float-start mb-0">Home</h2>
							<div class="breadcrumb-wrapper">
								<ol class="breadcrumb">
									<%--   <li class="breadcrumb-item"><a href="<%=request.getContextPath() %>/home">Home</a>
                    </li>--%>
									<li class="breadcrumb-item">Master</li>
									<li class="breadcrumb-item active">Ward</li>
								</ol>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="content-body">
				<!-- Dashboard Analytics Start -->
				<section id="dashboard-analytics">

					<div class="row match-height">
						<div class="row align-items-end g-2">

    <!-- Zone Dropdown -->
    <div class="col-lg-2 col-md-3 col-sm-6">
        <div class="form-group">
            <label for="zone">Zone <span class="required">*</span></label>
            <select class="select2 form-select" id="zone" name="zoneId" required>
                <option value="">--Select Zone--</option>
                <c:forEach var="obj" items="${zoneType}">
                    <option value="${obj.zoneId}">${obj.zoneName}</option>
                </c:forEach>
            </select>
        </div>
    </div>

    <!-- Circle/Unit/Cluster Dropdown -->
    <div class="col-lg-2 col-md-3 col-sm-6">
        <div class="form-group">
            <label for="circle">Circle/Unit/Cluster <span class="required">*</span></label>
            <select class="select2 form-select" id="circle" name="circleId" required>
                <option value="">--Select Circle--</option>
                <c:forEach var="obj" items="${zoneType}">
                    <option value="${obj.zoneId}">${obj.zoneName}</option>
                </c:forEach>
            </select>
        </div>
    </div>

    <!-- Ward Code -->
    <div class="col-lg-2 col-md-3 col-sm-6">
        <div class="form-group">
            <label for="wardCode">Ward Code <span class="required">*</span></label>
            <input type="text" class="form-control" id="wardCode" name="wardCode" required>
        </div>
    </div>

    <!-- Ward Name -->
    <div class="col-lg-2 col-md-3 col-sm-6">
        <div class="form-group">
            <label for="wardName">Ward Name <span class="required">*</span></label>
            <input type="text" class="form-control" id="wardName" name="wardName" required>
        </div>
    </div>

    <!-- Search & Reset Buttons -->
    <div class="col-lg-2 col-md-6 col-sm-6 d-flex gap-2">
        <button class="btn btn-secondary w-50" onclick="getcomplaintTypeIdList();">
            <i class="fa fa-search"></i>
        </button>
        <button class="btn btn-secondary w-50" onclick="clearFilter();">
            <i class="fa fa-undo"></i>
        </button>
    </div>

    <!-- New & Export Buttons -->
    <div class="col-lg-2 col-md-6 col-sm-6 d-flex gap-2">
         <button type="button" class="btn btn-outline-primary waves-effect" data-bs-toggle="modal" data-bs-target="#inlineForm">
             + New
              </button>
        <button class="btn btn-success w-50" onclick="exportcomplaintTypeId();">
            Export <i class="fa fa-download"></i>
        </button>
        
                          <div class="modal fade text-start" id="inlineForm" tabindex="-1" aria-labelledby="myModalLabel33" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel33">New Ward Creation</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form action="#">
        <div class="modal-body">
         
          <!-- Zone Dropdown -->
          <label>Zone</label>
          <span class="required">*</span>
          <div class="mb-1">
            <select class="form-control">
              <option value="">--Select Zone--</option>
              <option value="1">1</option>
              <option value="2">2</option>
              <!-- Add more options dynamically as needed -->
            </select>
          </div>
          
           <!-- Circle/Unit/Cluster Dropdown -->
          <label>Circle/Unit/Cluster</label>
          <span class="required">*</span>
          <div class="mb-1">
            <select class="form-control">
              <option value="">--Select Circle/Unit/Cluster--</option>
              <option value="1">1</option>
              <option value="2">2</option>
              <!-- Add more options dynamically as needed -->
            </select>
          </div>
          
           <!-- Ward Code -->
          <label>Circle/Unit/Cluster Code <span class="required">*</span></label>
          <div class="mb-1">
            <input type="text" placeholder="Enter Ward Code" class="form-control">
          </div>

          <!-- Ward Name -->
          <label>Circle/Unit/Cluster Name <span class="required">*</span></label>
          <div class="mb-1">
            <input type="text" placeholder="Enter Ward Code" class="form-control">
          </div>
          
          <!-- Ward Supervisor -->
          <label>Ward Supervisor </label>
          <span class="required">*</span>
          <div class="mb-1">
            <select class="form-control">
              <option value="">--Select Ward Supervisor --</option>
              <option value="1">1</option>
              <option value="2">2</option>
              <!-- Add more options dynamically as needed -->
            </select>
          </div>
          
        </div>

        <!-- Action Buttons -->
        <div class="modal-footer justify-content-center">
          <button type="submit" class="btn btn-success">Save</button>
          <button type="reset" class="btn btn-success">Reset</button>
          <button type="button" class="btn btn-success" data-bs-dismiss="modal">Close</button>
        </div>
      </form>
    </div>
  </div>
</div>
        
    </div>

</div>



					<!-- List DataTable -->
					<div></div>
					<div class="row" style="
    margin-top: 1rem;
">
						<div class="col-12">

							<div class="card invoice-list-wrapper">
								<div class="card-datatable table-responsive">
									<div class="dt-buttons" style="height: 0.5em;"></div>
									<table id="datatable-complaints"
										class="invoice-list-table table" >
										<thead >
											<tr style="color : White; background-color : #66962c !important;">
												<th scope="col">S No</th>
												<th scope="col">Ward Code</th>											
												<th scope="col">Ward Name</th>
												<th scope="col">Zone</th>		
												<th scope="col">Circle/Unit/Cluster</th>	
												<th scope="col">Ward Supervisor</th>												
												<th scope="col">Update</th>
												<th scope="col">Delete</th>
												
											</tr>
										</thead>
									</table>
								</div>
							</div>
						</div>
					</div>


				</section>





			</div>
		</div>
	</div>
	<!-- END: Content-->




	<div class="sidenav-overlay"></div>
	<div class="drag-target"></div>

	<!-- BEGIN: Footer-->
	<footer class="footer footer-static footer-light">
		<p class="clearfix mb-0">
			<span class="float-md-start d-block d-md-inline-block mt-25">COPYRIGHT
				&copy; <span id="currentYear"></span> | Powered by<a class="ms-25"
				href="https://resustainability.com/" target="_blank">Re
					Sustainability Limited</a><span class="d-none d-sm-inline-block">
					. All Rights Reserved.</span>
			</span>
		</p>
	</footer>
	<button class="btn btn-primary btn-icon scroll-top" type="button">
		<i data-feather="arrow-up"></i>
	</button>
	<!-- END: Footer-->


	<!-- BEGIN: Vendor JS-->
	<script src="/reirm/resources/vendors/js/vendors.min.js"></script>
	<!-- BEGIN Vendor JS-->
	<script
		src="/reirm/resources/app-assets/vendors/js/ui/jquery.sticky.js"></script>
	<script
		src="/reirm/resources/app-assets/vendors/js/pickers/pickadate/picker.js"></script>
	<script
		src="/reirm/resources/app-assets/vendors/js/pickers/pickadate/picker.date.js"></script>
	<script
		src="/reirm/resources/app-assets/vendors/js/pickers/pickadate/picker.time.js"></script>
	<script
		src="/reirm/resources/app-assets/vendors/js/pickers/pickadate/legacy.js"></script>
	<script
		src="/reirm/resources/app-assets/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>
	<script
		src="/reirm/resources/app-assets/js/scripts/forms/pickers/form-pickers.min.js"></script>
	<!-- END: Page Vendor JS-->
	<!-- BEGIN: Page Vendor JS-->
	<script src="/reirm/resources/vendors/js/ui/jquery.sticky.js"></script>
	<script
		src="/reirm/resources/vendors/js/forms/select/select2.full.min.js"></script>
	<script src="/reirm/resources/vendors/js/charts/apexcharts.min.js"></script>
	<script src="/reirm/resources/vendors/js/extensions/toastr.min.js"></script>
	<script src="/reirm/resources/vendors/js/extensions/moment.min.js"></script>
	<script
		src="/reirm/resources/vendors/js/tables/datatable/jquery.dataTables.min.js"></script>
	<script
		src="/reirm/resources/vendors/js/tables/datatable/datatables.buttons.min.js"></script>
	<script
		src="/reirm/resources/vendors/js/tables/datatable/dataTables.bootstrap5.min.js"></script>
	<script
		src="/reirm/resources/vendors/js/tables/datatable/dataTables.responsive.min.js"></script>
	<script
		src="/reirm/resources/vendors/js/tables/datatable/responsive.bootstrap5.js"></script>
	<!-- END: Page Vendor JS-->
	<script src="/reirm/resources/js/materialize-v.1.0.min.js "></script>
	<script src="/reirm/resources/js/jquery-validation-1.19.1.min.js"></script>
	<script src="/reirm/resources/js/jquery.dataTables-v.1.10.min.js"></script>
	<script src="/reirm/resources/js/datetime-moment-v1.10.12.js"></script>
	<script src="/reirm/resources/js/dataTables.material.min.js"></script>
	<script src="/reirm/resources/js/moment-v2.8.4.min.js"></script>
	<!-- BEGIN: Theme JS-->
	<script src="/reirm/resources/js/core/app-menu.min.js"></script>
	<script src="/reirm/resources/js/core/app.min.js"></script>
	<script src="/reirm/resources/js/scripts/customizer.min.js"></script>
	<script src="/reirm/resources/js/scripts/forms/form-select2.min.js"></script>
	<!-- END: Theme JS-->
	<script src="/reirm/resources/js/scripts/pages/modal-add-new-cc.min.js"></script>
	<script src="/reirm/resources/js/scripts/pages/page-pricing.min.js"></script>
	<script
		src="/reirm/resources/js/scripts/pages/modal-add-new-address.min.js"></script>
	<script src="/reirm/resources/js/scripts/pages/modal-create-app.min.js"></script>
	<script
		src="/reirm/resources/js/scripts/pages/modal-two-factor-auth.min.js"></script>
	<script src="/reirm/resources/js/scripts/pages/modal-edit-user.min.js"></script>
	<script
		src="/reirm/resources/js/scripts/pages/modal-share-project.min.js"></script>
	<!-- BEGIN: Page JS-->
	<script
		src="/reirm/resources/js/scripts/pages/dashboard-analytics.min.js"></script>
	<script src="/reirm/resources/js/scripts/pages/app-invoice-list.min.js"></script>
	<!-- END: Page JS-->

	<form action="<%=request.getContextPath()%>/export-complaints"
		name="exportcomplaintTypeIdForm" id="exportcomplaintTypeIdForm"
		target="_blank" method="post">

		    <input type="hidden" name="complaintTypeId"
			id="exportcomplaintTypeId_filter" /> 
			<input type="hidden"
			name="complaintId" id="exportComplaint_Code_filter" /> 
			<input
			type="hidden" name="complaintStatusId"
			id="exportcomplaintStatusId_filter" />
			<input
			type="hidden" name="transactionDate"
			id="exporttransactionDate" />
	</form>
	
	<form action="<%=request.getContextPath()%>/compliants-history"
		 id="ch"
		target="_blank" method="post">
		    <input type="hidden" name="complaintId"
			id="complaintId2" /> 
	</form>
	
	<script>

      $(window).on("load",(function(){
    	  getcomplaintTypeIdList();
    	  
          if (feather) {
            feather.replace({ width: 14, height: 14 });
          }
          $('.modal').modal({ dismissible: false });
         
         }));
      document.getElementById("currentYear").innerHTML = new Date().getFullYear();
      
      function clearFilter(){
		    	$("#select2-complaintTypeId_filter-container").val(""); 
		    	$("#select2-complaintId_filter-container").val("");
		    	$("#select2-complaintStatusId_filter-container").val("");
		    	window.location.href= "<%=request.getContextPath()%>/compliants";
	    }
      
      function getcomplaintTypeIdFilterList() {
	        var complaintTypeId = $("#select2-complaintTypeId_filter-container").val();
	        var complaintId = $("#select2-complaintId_filter-container").val();
	        var complaintStatusId = $("#select2-complaintStatusId_filter-container").val();
	        let transactionDate = $("input[name='transactionDate']").map(function() {
	            return $(this).val().trim(); // Trim to remove spaces
	        }).get().filter(transactionDate => transactionDate !== ""); // Rem
	        if ($.trim(complaintTypeId) == "") {
	        	$("#select2-complaintTypeId_filter-container option:not(:first)").remove();
	        	var myParams = { complaintTypeId: complaintTypeId,  complaintStatusId :complaintStatusId, transactionDate : transactionDate };
	            $.ajax({
	                url: "<%=request.getContextPath()%>/ajax/getcomplaintTypeIdFilterList",
	                data: myParams, cache: false,async: false,
	                success: function (data) {
	                    if (data.length > 0) {
	                        $.each(data, function (i, val) {
	                             $("#select2-complaintTypeId_filter-container").append('<option value="' + val.complaintTypeId + '">'+ "[ "+$.trim(val.complaintTypeCode) +" ]"+" - " + $.trim(val.complaintTypeName) +'</option>');
	                        });
	                    }
	                },error: function (jqXHR, exception) {
	    	   			      $(".page-loader").hide();
	       	          	  getErrorMessage(jqXHR, exception);
	       	     	  }
	            });
	        }
	    }
      function getComplaintFilterList() {
    	  var complaintTypeId = $("#select2-complaintTypeId_filter-container").val();
	        var complaintId = $("#select2-complaintId_filter-container").val();
	        var complaintStatusId = $("#select2-complaintStatusId_filter-container").val();
	        let transactionDate = $("input[name='transactionDate']").map(function() {
	            return $(this).val().trim(); // Trim to remove spaces
	        }).get().filter(transactionDate => transactionDate !== ""); // Rem
	        if ($.trim(complaintId) == "") {
	        	$("#select2-complaintId_filter-container option:not(:first)").remove();
	        	var myParams = { complaintTypeId: complaintTypeId,  complaintStatusId : complaintStatusId, transactionDate : transactionDate };
	            $.ajax({
	                url: "<%=request.getContextPath()%>/ajax/getComplaintFilterListFromcomplaintTypeId",
	                data: myParams, cache: false,async: false,
	                success: function (data) {
	                    if (data.length > 0) {
	                        $.each(data, function (i, val) {
	                             $("#select2-complaintId_filter-container").append('<option value="' + val.complaintId + '">' +$.trim(val.complaintId) +'</option>');
	                        });
	                    }
	                },error: function (jqXHR, exception) {
	    	   			      $(".page-loader").hide();
	       	          	  getErrorMessage(jqXHR, exception);
	       	     	  }
	            });
	        }
	    }

      function getcomplaintStatusIdFilterList() {
    	  var complaintTypeId = $("#select2-complaintTypeId_filter-container").val();
	        var complaintId = $("#select2-complaintId_filter-container").val();
	        var complaintStatusId = $("#select2-complaintStatusId_filter-container").val();
	        let transactionDate = $("input[name='transactionDate']").map(function() {
	            return $(this).val().trim(); // Trim to remove spaces
	        }).get().filter(transactionDate => transactionDate !== ""); // Rem
	        if ($.trim(complaintStatusId) == "") {
	        	$("#select2-complaintStatusId_filter-container option:not(:first)").remove();
	        	var myParams = { complaintTypeId: complaintTypeId,  complaintStatusId : complaintStatusId, transactionDate : transactionDate };
	            $.ajax({
	                url: "<%=request.getContextPath()%>/ajax/getcomplaintStatusIdFilterListFromcomplaintTypeId",
	                data: myParams, cache: false,async: false,
	                success: function (data) {
	                    if (data.length > 0) {
	                        $.each(data, function (i, val) {
	                             $("#select2-complaintStatusId_filter-container").append('<option value="' + val.complaintStatusId + '">' + $.trim(val.complaintStatusName) +'</option>');
	                        });
	                    }
	                },error: function (jqXHR, exception) {
	    	   			      $(".page-loader").hide();
	       	          	  getErrorMessage(jqXHR, exception);
	       	     	  }
	            });
	        }
	    }

      
	    function exportcomplaintTypeId(){
	    	 var complaintTypeId = $("#select2-complaintTypeId_filter-container").val();
	         var complaintId = $("#select2-complaintId_filter-container").val();
	         var complaintStatusId = $("#select2-complaintStatusId_filter-container").val();
	         let transactionDate = $("input[name='transactionDate']").map(function() {
		            return $(this).val().trim(); // Trim to remove spaces
		        }).get().filter(transactionDate => transactionDate !== ""); // Rem
		       
	    	
	    	 $("#exportcomplaintTypeId_filter").val(complaintTypeId);
	     	 $("#exportComplaint_Code_filter").val(complaintId);
	     	 $("#exportcomplaintStatusId_filter").val(complaintId);
	     	 $("#exporttransactionDate").val(transactionDate);
	     	 $("#exportcomplaintTypeIdForm ").submit();
	  	}
	    
	    function getcomplaintTypeIdList(){
	    	getcomplaintTypeIdFilterList('');
	    //	getComplaintFilterList('');
	    	getcomplaintStatusIdFilterList('');
	    	var complaintTypeId = $("#select2-complaintTypeId_filter-container").val();
	        var complaintId = $("#select2-complaintId_filter-container").val();
	        var complaintStatusId = $("#select2-complaintStatusId_filter-container").val();
	        let transactionDate = $("input[name='transactionDate']").map(function() {
	            return $(this).val().trim(); // Trim to remove spaces
	        }).get().filter(transactionDate => transactionDate !== ""); // Rem
	       
	        
	     	table = $('#datatable-complaints').DataTable();
    		table.destroy();
			var i = 1;
    		$.fn.dataTable.moment('DD-MMM-YYYY');
    		var rowLen = 0;
    		var myParams =  "transactionDate="
    				+ transactionDate + "&complaintTypeId="+ complaintTypeId+ "&complaintStatusId="+ complaintStatusId;

    		/***************************************************************************************************/

    		$("#datatable-complaints")
    				.DataTable(
    						{
    							"bProcessing" : true,
    							"bServerSide" : true,
    							"sort" : "position",
    							//bStateSave variable you can use to save state on client cookies: set value "true" 
    							"bStateSave" : false,
    							 stateSave: true,
    							 "fnStateSave": function (oSettings, oData) {
    							 	localStorage.setItem('MRVCDataTables', JSON.stringify(oData));
    							},
    							 "fnStateLoad": function (oSettings) {
    								return JSON.parse(localStorage.getItem('MRVCDataTables'));
    							 },
    							//Default: Page display length
    							"iDisplayLength" : 10,
    							"iData" : {
    								"start" : 52
    							},
    							//We will use below variable to track page number on server side(For more information visit: http://legacy.datatables.net/usage/options#iDisplayStart)
    							"iDisplayStart" : 0,
    							"fnDrawCallback" : function() {
    								//Get page numer on client. Please note: number start from 0 So
    								//for the first page you will see 0 second page 1 third page 2...
    								//Un-comment below alert to see page number
    								//alert("Current page number: "+this.fnPagingInfo().iPage);
    							},
    							//"sDom": 'l<"toolbar">frtip',
    							"initComplete" : function() {
    								$('.dataTables_filter input[type="search"]')
    										.attr('placeholder', ' Enter Registration No:')
    										.css({
    											'width' : '350px ',
    											'display' : 'inline-block'
    										});

    								var input = $('.dataTables_filter input')
    										.unbind()
    										.bind('keyup',function(e){
    										    if (e.which == 13){
    										    	self.search(input.val()).draw();
    										    }
    										}), self = this.api(), $searchButton = $(
    										'<i class="fa fa-search" title="Go" >')
    								//.text('Go')
    								.click(function() {
    									self.search(input.val()).draw();
    								}), $clearButton = $(
    										'<i class="fa fa-close" title="Reset">')
    								//.text('X')
    								.click(function() {
    									input.val('');
    									$searchButton.click();
    								})
    								$('.dataTables_filter').append(
    										'<div class="right-btns"></div>');
    								$('.dataTables_filter div').append(
    										$searchButton, $clearButton);
    								rowLen = $('#datatable-user tbody tr:visible').length
    								/* var input = $('.dataTables_filter input').unbind(),
    								self = this.api(),
    								$searchButton = $('<i class="fa fa-search">')
    								           //.text('Go')
    								           .click(function() {			   	                    	 
    								              self.search(input.val()).draw();
    								           })			   	        
    								  $('.dataTables_filter label').append($searchButton); */
    							}
    							,
    							columnDefs : [ {
    								"targets" : '',
    								"orderable" : false,
    							}
    			                ],
    							"sScrollX" : "100%",
    							"sScrollXInner" : "100%",
    							"ordering":false,
    							"bScrollCollapse" : true,
    							"language" : {
    								"info" : "_START_ - _END_ of _TOTAL_",
    								paginate : {
    									next : '<i class="fa fa-angle-right"></i>', 
    									previous : '<i class="fa fa-angle-left"></i>'  
    								}
    							},
    							
    							"bDestroy" : true,
    							"sAjaxSource" : "	<%=request.getContextPath()%>/ajax/getCList?"+myParams,
    		        "aoColumns": [
    		        
      		         	{ "mData": function(data,type,row){
      		         	 		if($.trim(data.complaintId) == ''){ return i++; }else{ return i++ ; };
      		            } },
      		         
    		         	{ "mData": function(data,type,row){
	                             if($.trim(data.complaintId) == ''){ return '-'; }else{ return data.complaintId ; }
    		            } },
    		            { "mData": function(data,type,row){
	                             if($.trim(data.registrationTypeName) == ''){ return '-'; }else{ return data.registrationTypeName ; }
    		            } },
    		            { "mData": function(data,type,row){
                            if($.trim(data.transactionDate) == ''){ return '-'; }else{ return data.transactionDate ; }
		            	} },
		            	 { "mData": function(data,type,row){
	                            if($.trim(data.complaintTypeName) == ''){ return '-'; }else{ return data.complaintTypeName ; }
			            	} },
		            	 { "mData": function(data,type,row){
	                            if($.trim(data.zoneName) == ''){ return '-'; }else{ return data.zoneName ; }
			            	} },
		            	 { "mData": function(data,type,row){
	                            if($.trim(data.clusterName) == ''){ return '-'; }else{ return data.clusterName ; }
		            	    } },
		            	 { "mData": function(data,type,row){
			                     if($.trim(data.wardName) == ''){ return '-'; }else{ return data.wardName ; }
			            	} },
		            	 { "mData": function(data,type,row){
	                            if($.trim(data.locationName) == ''){ return '-'; }else{ return data.locationName ; }
			            	} },
		            	 { "mData": function(data,type,row){
	                            if($.trim(data.complaintStatusName) == ''){ return '-'; }else{ return data.complaintStatusName ; }
			            	} },
		            	 { "mData": function(data,type,row){
	                            if($.trim(data.citizenName) == ''){ return '-'; }else{ return data.citizenName ; }
			            	} },
		            	 { "mData": function(data,type,row){
	                            if($.trim(data.mobileNo) == ''){ return '-'; }else{ return data.mobileNo ; }
			            	} },
		            	 { "mData": function(data,type,row){
	                            if($.trim(data.citizenEmailId) == ''){ return '-'; }else{ return data.citizenEmailId ; }
			            	} },
		            	 { "mData": function(data,type,row){
	                            if($.trim(data.complaintAddress) == ''){ return '-'; }else{ return data.complaintAddress ; }
			            	} },
		            	 { "mData": function(data,type,row){
	                            if($.trim(data.closingTime) == ''){ return '-'; }else{ return data.closingTime ; }
			            	} },
			            	 { "mData": function(data,type,row){
		    		            	var user_data = "'"+data.complaintId+"'";
				                    var actions = '<a href="javascript:void(0);"  onclick="getHistory('+user_data+');"  title="Edit"><img  src="/reirm/resources/images/logo/CompHistory.gif" align="absmiddle" style="border-width:0px;"></a>';    	                   	
		    		            	return actions;
		    		            } }
													            	
    		        ]
    		    });
    	
    	
	  $(".page-loader-2").hide();  		     
  	
 }
		function getHistory(data){
			$('#complaintId2').val(data)
			$("#ch").submit();
		}

		function getErrorMessage(jqXHR, exception) {
			var msg = '';
			if (jqXHR.complaintId === 0) {
				msg = 'Not connect.\n Verify Network.';
			} else if (jqXHR.complaintId == 404) {
				msg = 'Requested page not found. [404]';
			} else if (jqXHR.complaintId == 500) {
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
	</script>
</body>
<!-- END: Body-->

<!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/horizontal-menu-template/dashboard-analytics.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:36:10 GMT -->
</html>