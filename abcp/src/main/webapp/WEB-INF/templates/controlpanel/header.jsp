<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%-- <%@ page import="org.springframework.security.core.context.SecurityContextHolder" %> --%>

<!DOCTYPE html>

<c:url value="/" var="homeUrl" />
<c:url value="categorylist" var="categorylistUrl" />
<c:url value="subcategorylist" var="subcategorylistUrl" />
<c:url value="productlist" var="productlistUrl" />
<c:url value="test" var="testUrl" />
<%-- <c:url value="logout" var="logoutUrl"/> --%>


<div class="leftpanel">

	<div class="logopanel">
	    <h1><span>[</span> ABR Industries <span>]</span></h1>
	</div><!-- logopanel -->
	
	<div class="leftpanelinner">
	
	    <!-- This is only visible to small devices -->
	    <div class="visible-xs hidden-sm hidden-md hidden-lg">
	        <div class="media userlogged">
	            <img alt="" src="images/photos/loggeduser.png" class="media-object">
	            <div class="media-body">
	                <h4>Admin</h4>
	                <span>"Life is so..."</span>
	            </div>
	        </div>
	
	        <h5 class="sidebartitle actitle">Account</h5>
	        <ul class="nav nav-pills nav-stacked nav-bracket mb30">
	            <li><a href="profile.html"><i class="fa fa-user"></i> <span>Profile</span></a></li>
	            <li><a href="#"><i class="fa fa-cog"></i> <span>Account Settings</span></a></li>
	            <li><a href="#"><i class="fa fa-question-circle"></i> <span>Help</span></a></li>
	            <li><a href="signout.html"><i class="fa fa-sign-out"></i> <span>Sign Out</span></a></li>
	        </ul>
	    </div>
	
	    <h5 class="sidebartitle">Navigation</h5>
	    <ul class="nav nav-pills nav-stacked nav-bracket">
	        <li class="nav-parent nav-active active"><a href="/dashboard"><i class="fa fa-home"></i> <span>Dashboard</span></a></li>
	        <li><a href="${categorylistUrl}"><span class="pull-right badge badge-success">2</span><i class="fa fa-envelope-o"></i> <span>Category</span></a></li>
	        <li><a href="${subcategorylistUrl }"><i class="fa fa-caret-right"></i> <span>Sub Category</span></a></li>
	        <li><a href="${productlistUrl }"><i class="fa fa-suitcase"></i> <span>Product</span></a></li>
	        <li class="nav-parent">
	            <a href="${productlistUrl }"><i class="fa fa-suitcase"></i> <span>Extra</span></a>
	            <ul class="children">
	                <li><a href="${productlistUrl }"><i class="fa fa-caret-right"></i> Extra</a></li>
	                
	            </ul>
	        </li>
	        <li><a href="#"><i class="fa fa-th-list"></i> <span>About Us</span></a></li>
	        
	        <li><a href="location.aspx"><i class="fa fa-th-list"></i> <span>Contact Us</span></a></li>
	        
	        
	    </ul>
	
	</div><!-- leftpanelinner -->
</div><!-- leftpanel -->

