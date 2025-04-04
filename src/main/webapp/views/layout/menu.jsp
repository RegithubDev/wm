<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>menu</title>
<style>


div.main-menu-content {
  position: -webkit-sticky;
  position: sticky;
 
}
</style>
</head>
<body>
		<div class="navbar-container main-menu-content" data-menu="menu-container" id="menu">
          <ul class="nav navbar-nav" id="main-menu-navigation" data-menu="menu-navigation" >
             <li class="dropdown nav-item "  data-menu id="home"  url ="/home">
					    <a class="dropdown-item d-flex align-items-center" href="<%=request.getContextPath() %>/home" data-bs-toggle=""
					    data-i18n="Analytics"> <i data-feather="home"></i>
					      <span data-i18n="Dashboards">Home</span></a>
			</li>
			<%-- <li class="dropdown nav-item " data-menu="dropdown" id="masters1"><a
				class="dropdown-toggle nav-link d-flex align-items-center" href="#"
				data-bs-toggle="dropdown"><i data-feather="package"></i><span
					data-i18n="Masters">Masters</span></a>
				<ul class="dropdown-menu" data-bs-popper="none">
					<li class="" data-menu id="mastersChildZone" onClick="exFunction('mastersChildZone')">
        <a class="dropdown-item d-flex align-items-center" href="<%=request.getContextPath()%>/Masters/Zone" data-bs-toggle="" data-i18n="Zone">
            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-circle">
                <circle cx="12" cy="12" r="10"></circle>
            </svg>
            <span data-i18n="Zone">Zone</span>
        </a>
    </li>
    <li class="" data-menu id="mastersChildCluster" onClick="exFunction('mastersChildCluster')">
        <a class="dropdown-item d-flex align-items-center" href="<%=request.getContextPath()%>/Masters/Cluster" data-bs-toggle="" data-i18n="Circle/Unit/Cluster">
            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-circle">
                <circle cx="12" cy="12" r="10"></circle>
            </svg>
            <span data-i18n="Circle/Unit/Cluster">Circle/Unit/Cluster</span>
        </a>
    </li>
    <li class="" data-menu id="mastersChildWard" onClick="exFunction('mastersChildWard')">
        <a class="dropdown-item d-flex align-items-center" href="<%=request.getContextPath()%>/Masters/Ward" data-bs-toggle="" data-i18n="Ward">
            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-circle">
                <circle cx="12" cy="12" r="10"></circle>
            </svg>
            <span data-i18n="Ward">Ward</span>
        </a>
    </li>
    <li class="" data-menu id="mastersChildGarbageLocation" onClick="exFunction('mastersChildGarbageLocation')">
        <a class="dropdown-item d-flex align-items-center" href="<%=request.getContextPath()%>/Masters/Location" data-bs-toggle="" data-i18n="Garbage Location">
            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-circle">
                <circle cx="12" cy="12" r="10"></circle>
            </svg>
            <span data-i18n="Garbage Location">Garbage Location</span>
        </a>
    </li>
    <li class="" data-menu id="mastersChildGarbageType" onClick="exFunction('mastersChildGarbageType')">
        <a class="dropdown-item d-flex align-items-center" href="<%=request.getContextPath()%>/Masters/Garbagetype" data-bs-toggle="" data-i18n="Garbage Type">
            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-circle">
                <circle cx="12" cy="12" r="10"></circle>
            </svg>
            <span data-i18n="Garbage Type">Garbage Type</span>
        </a>
    </li>
    <li class="" data-menu id="mastersChildComplaintType" onClick="exFunction('mastersChildComplaintType')">
        <a class="dropdown-item d-flex align-items-center" href="<%=request.getContextPath()%>/Masters/ComplaintType" data-bs-toggle="" data-i18n="Complaint Type">
            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-circle">
                <circle cx="12" cy="12" r="10"></circle>
            </svg>
            <span data-i18n="Complaint Type">Complaint Type</span>
        </a>
    </li>
    <li class="" data-menu id="mastersChildUserRegistration" onClick="exFunction('mastersChildUserRegistration')">
        <a class="dropdown-item d-flex align-items-center" href="<%=request.getContextPath()%>/Masters/UserRegistration" data-bs-toggle="" data-i18n="User Registration">
            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-circle">
                <circle cx="12" cy="12" r="10"></circle>
            </svg>
            <span data-i18n="User Registration">User Registration</span>
        </a>
    </li>
				</ul></li> --%>
			<li class="dropdown nav-item " data-menu="dropdown" id="masters"><a class="dropdown-toggle nav-link d-flex align-items-center" href="#" data-bs-toggle="dropdown"><i data-feather="package"></i><span data-i18n="Masters">Call Center</span></a>
              <ul class="dropdown-menu" data-bs-popper="none">
					<li class="" data-menu  id="mastersChildComplaintRegistration"  onClick="exFunction('mastersChildComplaintRegistration')">
					    <a class="dropdown-item d-flex align-items-center" href="<%=request.getContextPath() %>/compliants" data-bs-toggle=""
					     data-i18n="Complaint Registration"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-circle"><circle cx="12" cy="12" r="10"></circle></svg>
					      <span data-i18n="Complaint Registration">Complaint Registration</span></a> 
					</li>
            </ul>
           </li>
		
          </ul>
        </div>
        <script>
        var option = window.localStorage.getItem("selectedOption");
        var child_option = window.localStorage.getItem("selectedOptionChild");
        $( document ).ready(function() {
        	
        	var url = $(location).attr('href');
        	//var url = 	$("#"+option).attr('url')
        		if(option != 'undefined' && option != null){
            		$('li.active').removeClass('active');
            		 if(url.indexOf('/home') != -1){
	           			$('#home').addClass('active');
	           		}else if(url.indexOf('/bb-dashboard') != -1){
	           			$('#bbd').addClass('active');
	           		}else if(url.indexOf('/dashboardbbnew') != -1){
	           			$('#bbd').addClass('active');
	           		}
	           		else if(url.indexOf('/home') != -1){
	           			$('#home').addClass('active');
	           		}else if(url.indexOf('/help') != -1){
	           			$('#help').addClass('active');
	           		}else if(option.indexOf('masters') != -1 ){
	           			$('#masters').addClass('active');
	           			$('#'+option+'li.active').removeClass('active');
	       	            $('#'+child_option).addClass('active');
	           		}else if(option.indexOf('masters1') != -1 ){
	           			$('#masters').addClass('active');
	           			$('#'+option+'li.active').removeClass('active');
	       	            $('#'+child_option).addClass('active');
	           		}else{
	           			$('#home').addClass('active');
	           		}
            	}else{
            		$('li.active').removeClass('active');
            		if(url.indexOf('/home') != -1){
	           			$('#home').addClass('active');
	           		}else if(url.indexOf('/bb-dashboard') != -1){
	           			$('#bbd').addClass('active');
	           		}else if(url.indexOf('/home') != -1){
	           			$('#home').addClass('active');
	           		}else if(url.indexOf('/help') != -1){
	           			$('#help').addClass('active');
	           		}else if(option.indexOf('masters') != -1){
	           			$('#masters').addClass('active');
	           			$('#'+option+'li.active').removeClass('active');
	       	            $('#'+child_option).addClass('active');
	           		}else if(option.indexOf('masters1') != -1 ){
	           			$('#masters').addClass('active');
	           			$('#'+option+'li.active').removeClass('active');
	       	            $('#'+child_option).addClass('active');
	           		}else{
	           			$('#home').addClass('active');
	           		}
            	}
  	        <%--  window.location.href= "<%=request.getContextPath()%>"+"/"+url;  --%>
        	
        });
        $('#menu ul li ').on('click', function(){
            $('li.active').removeClass('active');
            $(this).addClass('active');
            
            window.localStorage.setItem("selectedOption", $(this).attr('id'));
        }); 
        function exFunction(id) {  window.localStorage.setItem("selectedOptionChild", id);  }
        </script>
</body>
</html>