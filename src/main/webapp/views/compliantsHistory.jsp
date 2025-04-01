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
    body {
        font-family: Arial, sans-serif;
    }
    .table-container {
        position: relative;
        margin-top: 10px;
    }
    .export-btn {
        position: absolute;
        top: -40px;
        right: 0;
        background-color: #6d9e31;
        color: white;
        padding: 8px 12px;
        border: none;
        cursor: pointer;
        border-radius: 2px;
    }
    .export-btn:hover {
        background-color: #5a8728;
    }
    table {
        width: 100%;
        border-collapse: collapse; /* Ensures single solid borders */
        margin-top: 10px;
    }
    th, td {
        border: 2px solid black !important; /* Stronger border rule */
        padding: 10px;
        text-align: center;
    }
    th {
        background-color: #6d9e31;
        color: white;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2; /* Alternating row colors */
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.17.2/xlsx.full.min.js"></script>

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
									<li class="breadcrumb-item">Call Center</li>
									<li class="breadcrumb-item active"><a href="<%=request.getContextPath() %>/compliants">Complaint Registration</a></li>
									<li class="breadcrumb-item active">Complaint History</li>
								</ol>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="content-body">
				<!-- Dashboard Analytics Start -->
				<section id="dashboard-analytics">
					<h3>Total Records: ${fn:length(objsList)}</h3>
					
					<div class="table-container">
					    <button class="export-btn" onclick="exportToExcel()">Export to Excel</button>
					    <table id="dataTable">
					        <thead>
					            <tr>
					                <th>S No</th>
					                <th>Comp No</th>
					                <th>Status</th>
					                <th>Remarks</th>
					                <th>Created Date</th>
					                <th>Modified Date</th>
					                <th>Elapsed Time (hh:mm:ss)</th>
					            </tr>
					        </thead>
					        <tbody>
					             <c:forEach var="obj" items="${objsList}" varStatus="index">
									<tr>
										<td>${index.count }</td>
										<td>${obj.complaintId }</td>
										<td>${obj.complaintStatusName }</td>
										<td>${obj.remarks }</td>
										<td>${obj.createdDate }</td>
										<td>${obj.modifiedDate }</td>
										<td>${obj.time_difference }</td>
									</tr>
								</c:forEach>
					        </tbody>
					    </table>
					</div>
					
					<!-- List DataTable -->
					<div></div>
					

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

	<script>
	function exportToExcel() {
	    if (typeof XLSX === 'undefined') {
	        alert("XLSX library is not loaded!");
	        return;
	    }

	    let table = document.getElementById("dataTable");
	    let worksheet = XLSX.utils.table_to_sheet(table);

	    // Define the date columns (0-based index)
	    const dateColumns = [4, 5]; // Created Date & Modified Date
	    const range = XLSX.utils.decode_range(worksheet['!ref']);

	    for (let row = range.s.r + 1; row <= range.e.r; row++) { // Skip header row
	        dateColumns.forEach(colIndex => {
	            let cellAddress = XLSX.utils.encode_cell({ r: row, c: colIndex });

	            if (worksheet[cellAddress] && worksheet[cellAddress].v) {
	                let dateValue = worksheet[cellAddress].v;

	                // Convert non-string values to a string
	                if (typeof dateValue !== "string") {
	                    dateValue = String(dateValue);
	                }

	                let dateObj = new Date(dateValue);

	                if (!isNaN(dateObj.getTime())) { // Check if it's a valid date
	                    // Convert date to Excel-compatible serial number
	                    let excelDate = (dateObj - new Date("1899-12-30")) / (24 * 60 * 60 * 1000);

	                    worksheet[cellAddress].v = excelDate;
	                    worksheet[cellAddress].t = 'n'; // Set type as number for correct formatting
	                    worksheet[cellAddress].z = "mm/dd/yyyy hh:mm:ss AM/PM"; // Excel format for date-time
	                }
	            }
	        });
	    }

	    let workbook = XLSX.utils.book_new();
	    XLSX.utils.book_append_sheet(workbook, worksheet, "Sheet1");
	    XLSX.writeFile(workbook, "table_data.xlsx");
	}

      $(window).on("load",(function(){
    	  getcomplaintTypeIdList();
    	  
          if (feather) {
            feather.replace({ width: 14, height: 14 });
          }
          $('.modal').modal({ dismissible: false });
         
         }));
      document.getElementById("currentYear").innerHTML = new Date().getFullYear();
 
	 
	</script>
</body>
<!-- END: Body-->

<!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/horizontal-menu-template/dashboard-analytics.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:36:10 GMT -->
</html>