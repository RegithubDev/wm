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

.select2-container{
	color: red;
}
 .input-container {
        display: flex;
        align-items: center;
        gap: 8px; /* Space between input and button */
    }

    .input-container input {
        flex: 1; /* Input takes full available space */
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    .input-container button {
        padding: 8px 12px;
        border: none;
        background-color: #007bff;
        color: white;
        border-radius: 4px;
        cursor: pointer;
    }

    .input-container button:hover {
        background-color: #0056b3;
    }
 .hidden {
        display: none;
    }
h2{
	color: #1c8d35 !important
}
  .required {
            color: red;
        }

        .form-group {
            margin-bottom: 15px;
        }

        input, select, textarea {
            width: 100%;
            padding: 8px;
            border: 2px solid #ccc;
            border-radius: 5px;
            outline: none;
        }

        .error {
            color: red;
            font-size: 14px;
        }

        .error-border {
            border-color: red !important;
        }

        .success-border {
            border-color: green !important;
        }

        .form-buttons {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .back {
            background-color: gray;
            color: white;
            padding: 10px 15px;
            border: none;
            cursor: pointer;
        }

        .save {
            background-color: blue;
            color: white;
            padding: 10px 15px;
            border: none;
            cursor: pointer;
        }

        .reset {
            background-color: red;
            color: white;
            padding: 10px 15px;
            border: none;
            cursor: pointer;
        }
.checkbox-group {
    display: flex;
    flex-wrap: wrap;
    gap: 15px;
}

.checkbox-group label {
    display: flex;
    align-items: center;
    gap: 5px;
    white-space: nowrap;
}

body {
    background-color: #f4f4f4;
}

.form-container {
    background: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
    width: 83%;
    margin: 50px auto;
    text-align: center;
}

h2 {
    margin-bottom: 15px;
}

form {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 15px;
    text-align: left;
}

.full-width {
    grid-column: span 2;
}

.hidden {
    display: none;
}

.form-group {
    display: flex;
    flex-direction: column;
}

.form-group label {
    font-weight: bold;
    margin-bottom: 5px;
}

input, select {
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 5px;
    width: 100%;
}

.form-buttons {
    grid-column: span 2;
    text-align: center;
}

button {
    padding: 10px 15px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin: 5px;
    font-weight: bold;
}

.save {
    background-color: #4CAF50;
    color: white;
}

.reset {
    background-color: #ffcc00;
    color: black;
}

button:hover {
    opacity: 0.8;
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
.btn-upload {
    padding: 10px 20px;
    margin-left: 10px;
}
.upload-input-group {
    margin-bottom: 10px;
}

.input-group>.custom-select:not(:last-child), .input-group>.form-control:not(:last-child) {
  height: 45px;
}
#container {
  width: 100%;
  display: flex;
}
.box {
  flex: 1;
}
/* Style for required field asterisk */
label:has(span.required) {
    font-weight: bold;
}

span.required {
    color: red;
    font-size: 16px;
    margin-left: 5px;
}

/* Style for error messages */
.error-message {
    color: red;
    font-size: 12px;
    display: none; /* Initially hidden */
    margin-top: 5px;
}


</style>
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <meta name="description" content="Safety admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 IRM with unlimited possibilities.">
    <meta name="keywords" content="admin template,IRM, Safety admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
 <title>Ramky - Complaint Registration</title>
<link rel="icon" type="image/png" sizes="96x96"
	href="/recom/resources/images/logo/top_right_logo.jpg">

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
     <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/bootstrap-extended.min.css">
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
      <link rel="stylesheet" type="text/css" href="/brainbox/resources/vendors/css/file-uploaders/dropzone.min.css">
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/plugins/forms/form-file-uploader.min.css">
    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="/brainbox/resources/css/style.css">
    <!-- END: Custom CSS-->
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/app-assets/vendors/css/pickers/pickadate/pickadate.css">
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/app-assets/vendors/css/pickers/flatpickr/flatpickr.min.css">
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/app-assets/css/plugins/forms/pickers/form-flat-pickr.min.css">
<link rel="stylesheet" type="text/css"
	href="/reirm/resources/app-assets/css/plugins/forms/pickers/form-pickadate.min.css">
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
							<h2 class="content-header-title float-start mb-0">Home</h2>
							<div class="breadcrumb-wrapper">
								<ol class="breadcrumb">
									<%--   <li class="breadcrumb-item"><a href="<%=request.getContextPath() %>/home">Home</a>
                    </li>--%>
									<li class="breadcrumb-item">Call Center</li>
									<li class="breadcrumb-item active ">Complaint Registration</li>
								</ol>
							</div>
						</div>
            </div>
          </div>
        </div>
        <div class="content-body"><!-- Dashboard Analytics Start -->
<section id="dashboard-analytics">
<div class="row match-height" >
<div class="col-lg-4 col-sm-6 col-12"  style="box-sizing:border-box; display:table;">
</div>

<div class="col-lg-4 col-sm-6 col-12"  style="box-sizing:border-box; display:table;">
</div>
     
</div> 


<section id="multiple-column-form">
   <div class="form-container">
        <h2 class="mb-4">Complaint Registration</h2>
 
 				 <c:if test="${add eq 'add' }">
               		<form id="complaintForm"  action="<%=request.getContextPath() %>/c-submit"  novalidate>
                </c:if>
               
                <c:if test="${edit eq 'edit' }">
               		<form id="complaintForm"  action="<%=request.getContextPath() %>/c-update"  novalidate>
                </c:if>
		<c:if test="${add eq 'add' }">
		   <div class="form-group">
            <label class="form-label" for="fp-default">Registration From Date </label> 
            <input type="text" id="fp-date-time" class="form-control flatpickr-date-time flatpickr-input" name="transactionDate" placeholder="YYYY-MM-DD HH:MM" readonly="readonly">
               
                <small class="error">.</small>
            </div>
            
            
		</c:if>
         
         	<c:if test="${edit eq 'edit' }">
		   <div class="form-group">
            <label class="form-label" for="fp-default">Registration From Date </label> 
            <input type="text" id="fp-date" class="form-control flatpickr-date-time flatpickr-input" name="transactionDate" placeholder="YYYY-MM-DD HH:MM" readonly="readonly"
             value ="${cDetails.transactionDate }">
               
                <small class="error">.</small>
            </div>
             <input type="hidden" id="complaintId" name="complaintId" required  value ="${cDetails.complaintId }">
		</c:if>
         

            <div class="form-group">
                <label for="regType">Registration Type ${cDetails.registrationTypeId}w<span class="required">*</span></label>
                <select  class="select2 form-select "id="regType" required name="registrtionTypeId">
                    <option value="">--Select Registration Type--</option>
                     <c:forEach var="obj" items="${regType}">
				          <option value="${obj.registrationTypeId }" <c:if test="${cDetails.registrationTypeId eq obj.registrationTypeId }"> selected</c:if>>${obj.registrationTypeName }</option>
					 </c:forEach>
                </select>
                <small class="error">.</small>
            </div>

            <div class="form-group">
                <label for="citizenName">Citizen Name <span class="required">*</span></label>
                <input type="text" id="citizenName" name="citizenName" required  value ="${cDetails.citizenName }">
                <small class="error">.</small>
            </div>

            <div class="form-group">
                <label for="email">Citizen Email Id</label>
                <input type="email" id="email" name="citizenEmailId"  value ="${cDetails.citizenEmailId }">
            </div>

            <div class="form-group">
                <label for="contact">Contact Number <span class="required">*</span></label>
                <input type="number" id="contact" name="mobileNo" required oninput="validateNumber(this)"  value ="${cDetails.mobileNo }">
                <small class="error">.</small>
            </div>

            <div class="form-group">
                <label for="complaintType">Complaint Type <span class="required">*</span></label>
                <select  class="select2 form-select "id="complaintType" name="complaintTypeId" required>
                    <option value="">--Select Complaint Type--</option>
                     <c:forEach var="obj" items="${comType}">
				        <option value="${obj.complaintTypeId}" <c:if test="${cDetails.complaintTypeId eq obj.complaintTypeId }"> selected</c:if>>${obj.complaintTypeName }</option>
				    </c:forEach>
                </select>
                <small class="error">.</small>
            </div>

	           <div class="form-group">
			    <label>Search:</label>
			    <input type="radio" name="search" id="locationSearch" checked onclick="toggleBinSearch()"> <p>Location Wise Search</p>
			    <input type="radio" name="search" id="binSearch" onclick="toggleBinSearch()">  <p>Bin Wise Search</p>
			    
			</div>
			
			<div class="form-group hidden" id="binNumberGroup">
			    <label for="binNumber">Bin Number Search</label>
			    <div class="input-container">
			        <input type="text" id="binNumber" name="binNumber">
			        <button onclick="searchBinNumber()">🔍</button>
			    </div>
			</div>
						
			<div class="form-group">
			    <label for="location">Location Search <span class="required">*</span></label>
			       <select  class="select2 form-select "id="location" name="locationId" required onchange="wardfilter(this.value);">
                    <option value="">--Select Location--</option>
                    <c:forEach var="obj" items="${locType}">
					        <option value="${obj.locationId}" <c:if test="${cDetails.locationId eq obj.locationId }"> selected</c:if>>${obj.locationId} ${obj.locationName}</option>
					    </c:forEach>
                </select>
			    <small class="error">.</small>
			</div>

            <div class="form-group">
                <label for="ward">Ward <span class="required">*</span></label>
                <select  class="select2 form-select "id="ward" name="wardId" required onchange="wardfilter(this.value);">
                    <option value="">--Select Ward--</option>
                    <c:forEach var="obj" items="${wardType}">
				          <option value="${obj.wardId }" <c:if test="${cDetails.wardId eq obj.wardId }"> selected</c:if>>${obj.wardName }</option>
					 </c:forEach>
                </select>
                <small class="error">.</small>
            </div>

            <div class="form-group">
                <label for="cluster">Circle/Unit/Cluster <span class="required">*</span></label>
                <select  class="select2 form-select "id="cluster" name="clusterId" required>
                    <option value="">--Select Cluster--</option>
                     <c:forEach var="obj" items="${clusterType}">
				        <option value="${obj.clusterId}" <c:if test="${cDetails.clusterId eq obj.clusterId }"> selected</c:if>>${obj.clusterName }</option>
				    </c:forEach>
                </select>
                <small class="error">.</small>
            </div>

            <div class="form-group">
                <label for="zone">Zone <span class="required">*</span></label>
                <select  class="select2 form-select "id="zone" name="zoneId" required>
                    <option value="">--Select Zone--</option>
                    <c:forEach var="obj" items="${zoneType}">
				        <option value="${obj.zoneId}" <c:if test="${cDetails.zoneId eq obj.zoneId }"> selected</c:if>>${obj.zoneName }</option>
				    </c:forEach>
                </select>
                <small class="error">.</small>
            </div>

            <div class="form-group full-width">
                <label for="complaintAddress">Complaint Address <span class="required">*</span></label>
                <input type="text" id="complaintAddress" name="complaintAddress" required value ="${cDetails.complaintAddress }">
                <small class="error">.</small>
            </div>

            <div class="form-group full-width">
                <label for="complaintDesc">Complaint Description <span class="required">*</span></label>
                <textarea id="complaintDesc" rows="3" name="complaintDescription" required>${cDetails.complaintDescription }</textarea>
                <small class="error">.</small>
            </div>
<div class="demo-inline-spacing">
    <!-- Supervisor -->
    <div class="form-check form-check-inline">
        <input class="form-check-input" type="checkbox" id="smsSupervisor" value="smsSupervisor" checked>
        <label class="form-check-label" for="smsSupervisor">Send SMS to Supervisor</label>
    </div>
    <div class="form-check form-check-inline">
        <input class="form-check-input" type="checkbox" id="mailSupervisor" value="mailSupervisor" checked>
        <label class="form-check-label" for="mailSupervisor">Send Mail to Supervisor</label>
    </div>

    <!-- Unit Officer -->
    <div class="form-check form-check-inline">
        <input class="form-check-input" type="checkbox" id="smsUnitOfficer" value="smsUnitOfficer" checked>
        <label class="form-check-label" for="smsUnitOfficer">Send SMS to UnitOfficer</label>
    </div>
    <div class="form-check form-check-inline">
        <input class="form-check-input" type="checkbox" id="mailUnitOfficer" value="mailUnitOfficer" checked>
        <label class="form-check-label" for="mailUnitOfficer">Send Mail to UnitOfficer</label>
    </div>

    <!-- Citizen -->
    <div class="form-check form-check-inline">
        <input class="form-check-input" type="checkbox" id="smsCitizen" value="smsCitizen" checked>
        <label class="form-check-label" for="smsCitizen">Send SMS to Citizen</label>
    </div>
    <div class="form-check form-check-inline">
        <input class="form-check-input" type="checkbox" id="mailCitizen" value="mailCitizen" checked>
        <label class="form-check-label" for="mailCitizen">Send Mail to Citizen</label>
    </div>
</div>

		<c:if test="${edit eq 'edit' }">
		   <div class="form-group">
            <label class="form-label" for="fp-default">Closing Date </label> 
            <input type="text"  id="fp-date-time1" class="form-control flatpickr-date-time flatpickr-input" name="closingTime" placeholder="YYYY-MM-DD HH:MM"   readonly="readonly"
            <c:if test="${cDetails.closingTime ne ''  }"> value ="${cDetails.closingTime }"</c:if> >
               
                <small class="error">.</small>
            </div>
            
            <div class="form-group">
                <label for="ComplaintStatusId">Complaint Status <span class="required">*</span></label>
                <select  class="select2 form-select "id="ComplaintStatusId" name="complaintStatusId" required>
                   <option value="-- Select Complaint Status --">-- Select Complaint Status --</option>
					<option value="2" >Pending</option>
					<option value="4"  selected >Close</option>
					<option value="6" >Cancel</option>
                 
                </select>
                <small class="error">.</small>
            </div>
            
            
            <div class="form-group full-width">
                <label for="Remarks">Remarks <span class="required"></span></label>
                <textarea id="Remarks" rows="3" name="remarks">${cDetails.remarks }</textarea>
                <small class="error">.</small>
            </div>
		</c:if>
		
		
            <div class="form-buttons">
                <a type="button" class="back"  href="<%=request.getContextPath() %>/compliants" >Back</a>
                
                 <c:if test="${cDetails.complaintStatusId ne '4' }">
		                <button type="submit" class="save" >
		                <c:if test="${edit eq 'edit' }">
		                Update
		                </c:if>
		                <c:if test="${add eq 'add' }">
		                Save
		                </c:if>
		                
		                </button>
		                <button type="reset" class="reset">Reset</button>
                 </c:if>
            </div>
            
 			
        </form>
    </div>
  
</section>


        </div>
      </div>
    </div>

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
    <script src="/brainbox/resources/vendors/js/file-uploaders/dropzone.min.js"></script>
    <script src="/brainbox/resources/js/scripts/forms/form-file-uploader.min.js"></script>
    <!-- END: Page JS-->
    
  <form action="<%=request.getContextPath()%>/export-company" name="exportIRMForm" id="exportIRMForm" target="_blank" method="post">	
      
        <input type="hidden" name="company_code" id="exportIRM_filter" />
        <input type="hidden" name="status" id="exportStatus_filter" />
	</form>
    <script>
    function toggleBinSearch() {
        const binSearchDiv = document.getElementById("binNumberGroup");
        const binSearchRadio = document.getElementById("binSearch");

        if (binSearchRadio.checked) {
            binSearchDiv.classList.remove("hidden");  // Show Bin Search
        } else {
            binSearchDiv.classList.add("hidden");  // Hide Bin Search
        }
    }
function wardfilter(wardId){
	var locationId = $('#location').val();
	if ($.trim(locationId) != "") {
		wardId = '';
	}
	 if ($.trim(wardId) != "" || $.trim(locationId) != "") {
		 var myParams = { wardId: wardId, locationId : locationId };
         $.ajax({
             url: "<%=request.getContextPath()%>/ajax/getWardtypeForUser",
             data: myParams, cache: false,async: false,
             success: function (data) {
                 if (data.length > 0) {
                     $.each(data, function (i, val) {
                    	 if ($.trim(locationId) != "") {
                    			$('#ward').val(val.wardId)
                    	 }
                     	$('#cluster').val(val.clusterId)
                     	$('#zone').val(val.zoneId)
                     	$('select').select2();
                     	//$(".position-relative > .position-relative > select").next("span").hide();
                     });
                 }
             },error: function (jqXHR, exception) {
 	   			      $(".page-loader").hide();
    	          	  getErrorMessage(jqXHR, exception);
    	     	  }
         });
		 
	 }
	
}
    function searchBinNumber() {
        const binNumber = document.getElementById("binNumber").value;
        if ($.trim(binNumber) != "") {
        	var myParams = { binNumbers: binNumber };
            $.ajax({
                url: "<%=request.getContextPath()%>/ajax/getLoctypeForUser",
                data: myParams, cache: false,async: false,
                success: function (data) {
                    if (data.length > 0) {
                        $.each(data, function (i, val) {
                        	$('#ward').val(val.wardId)
                        	$('#cluster').val(val.clusterId)
                        	$('#zone').val(val.zoneId)
                        	$('#location').val(val.locationId)
                        	$(".position-relative > .position-relative > select").next("span").hide();
                        });
                    }
                },error: function (jqXHR, exception) {
    	   			      $(".page-loader").hide();
       	          	  getErrorMessage(jqXHR, exception);
       	     	  }
            });
        }
    }
    function handleBinNumberKeyUp() {
        let binValue = document.getElementById("binNumber").value;
        console.log("Bin Number Typed:", binValue);
        // Add your custom logic here
    }
    
    document.addEventListener("DOMContentLoaded", function () {
        const form = document.getElementById("complaintForm");
        const inputs = form.querySelectorAll("input[required], select[required], textarea[required]");

        // Attach input event to update validation in real-time
        inputs.forEach(input => {
            input.addEventListener("input", function () {
                validateField(input);
            });
        });

        form.addEventListener("submit", function (event) {
            let isValid = true;
                let inputVal = $("#location").val();
                let option = $("#locationList option").filter(function () {
                    return $(this).val() === inputVal;
                });

                let locationId = option.attr("data-id"); // Get data-id attribute

                if (locationId) {
                	$('#location1').val(locationId)
                    console.log("Selected Location ID:", locationId);
                }
            inputs.forEach(input => {
                if (!validateField(input)) {
                    isValid = false;
                }
            });

            if (!isValid) {
            	$("select").removeClass("select2-hidden-accessible");

                event.preventDefault(); // Stop form submission if validation fails
            } else {
                // Submit form using fetch (Replace with your API URL)
                const formData = new FormData(form);
                fetch(form.action, {
                    method: form.method,
                    body: formData
                })
                .then(response => response.json())
                .then(data => {
                    alert("Form submitted successfully!");
                    form.reset();
                    resetValidation(); // Clear validation styles
                })
                .catch(error => console.error("Error submitting form:", error));

                form.submit(); // Prevent default form submission
            }
           
        });

        form.addEventListener("reset", function () {
            setTimeout(() => resetValidation(), 0);
        });

        function validateField(input) {
            const errorMessage = input.nextElementSibling;

            if (input.value.trim() === "") {
                input.classList.add("error-border");
                input.classList.remove("success-border");
                input.classList.remove("select2-hidden-accessible");
                if (errorMessage) {
                    errorMessage.textContent = "This field is required";
                    errorMessage.style.display = "none";
                }
                return false;
            } else {
                input.classList.remove("error-border");
                input.classList.add("success-border");
                input.classList.remove("elect2-hidden-accessible");
                if (errorMessage) {
                    errorMessage.style.display = "none";
                }
                return true;
            }
        }

        function resetValidation() {
            inputs.forEach(input => {
                input.classList.remove("error-border", "success-border");
                if (input.nextElementSibling) {
                	 input.classList.remove("elect2-hidden-accessible");
                   // input.nextElementSibling.style.display = "none";
                }
            });
        } 
    });

    document.addEventListener("DOMContentLoaded", function () {
        flatpickr("#fp-date-time", {
            enableTime: true,
            dateFormat: "Y-m-d H:i",
            defaultDate: new Date() // Set current date and time
        });
    });
    
    document.addEventListener("DOMContentLoaded", function () {
    	if('${cDetails.closingTime }' != ''){
    		flatpickr("#fp-date-time1", {
                enableTime: true,
                dateFormat: "Y-m-d H:i",
                defaultDate: '${cDetails.closingTime }' // Set current date and time
            });   		
    	}else{
    		flatpickr("#fp-date-time1", {
                enableTime: true,
                dateFormat: "Y-m-d H:i",
                defaultDate: new Date() // Set current date and time
            });
    	}
        
    });
    function validateNumber(input) {
        let value = input.value.replace(/\D/g, ''); // Remove non-numeric characters
        if (value.length > 10) value = value.slice(0, 10); // Limit to 10 digits
        input.value = value;
    }


    </script>
  </body>
  <!-- END: Body-->

<!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/horizontal-menu-template/dashboard-analytics.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:36:10 GMT -->
</html>