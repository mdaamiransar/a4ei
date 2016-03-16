<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="resources/themescp/assets/images/favicon.png" type="image/png">
    <title>Category</title>
    <link href="resources/themescp/assets/css/style.default.css" rel="stylesheet">
    <link href="resources/themescp/assets/css/jquery.datatables.css" rel="stylesheet">

</head>
<body>

    <!-- Preloader -->
    <div id="preloader">
        <div id="status"><i class="fa fa-spinner fa-spin"></i></div>
    </div>

    <section>

        <jsp:include page="header.jsp" />

        <div class="mainpanel">

            <%-- <jsp:include page="menu1.jsp" /> --%>
            
            <div class="pageheader">
                <h2><i class="fa fa-pencil"></i> Category <span>Subtitle goes here...</span></h2>
                <div class="breadcrumb-wrapper">
                    <span class="label">You are here:</span>
                    <ol class="breadcrumb">
                        <li><a href="index-2.html">Control Panel</a></li>
                        <li><a href="general-forms.html">State</a></li>
                        <li class="active">City</li>
                    </ol>
                </div>
            </div>

                    <div class="contentpanel">

                        <div class="row">

                            <div class="col-md-12">
                            
								<c:url var="addAction" value="/category/add"></c:url>

								<form:form action="${addAction}" commandName="category" id="form1" modelAttribute="category">
                                
                                <div class="panel panel-default">
                                
                                    <div class="panel-heading">
                                        <div class="panel-btns">
                                            
                                        </div>

                                    </div>
                                    
                                    <div class="panel-body">
                                   
					
										<c:if test="${!empty category.name}">
											<div class="row" style="margin-left: 10px;">
												<div class="col-md-12  form-group">
					
													<div class="col-md-2">
														<form:label path="id"><spring:message text="ID" /></form:label>
													</div>
													<div class="col-md-3">
														<form:input path="id" readonly="true" size="8" disabled="true" />
														<form:hidden path="id" />
													</div>
												</div>
											</div>
										</c:if>
										<div class="row" style="margin-left: 10px;">
											<div class="col-md-12  form-group">
												<div class="col-md-2">
													<form:label path="name">
														<spring:message text="Category" />
													</form:label>
												</div>
												<div class="col-md-3 col-sm-3">
													<form:input path="name" class="form-control input-sm" id="name" />
												</div>
											</div>
										</div>

                                    </div><!-- panel-body -->
                                    
                                    <div class="panel-footer">
                                        <div class="row">
                                            <div class="col-sm-9 col-sm-offset-3">
                                                <c:if test="${!empty category.name}">
													<input type="submit" value="<spring:message text="Update"/>" class="btn  btn-info" />
												</c:if>
												
												<c:if test="${empty category.name}">																	
													<button class="btn btn-success" type="submit"><i class="fa fa-save"></i>Save</button>
												</c:if>
					
												<button class="btn btn-primary" type="reset"><i class=" fa fa-refresh"></i>Reset</button>
                                            </div>
                                        </div>
                                    </div>
								
                                </div><!-- panel -->
                                
								</form:form>
                            </div><!-- col-md-12 -->

                        </div><!--row -->
            
                        <div class="row text-center">
                            <div class="col-md-12">
                               <!-- Advanced Tables -->
								<div class="panel panel-default">
									<div class="panel-heading">Category List</div>
									<div class="panel-body">
										<div class="table-responsive">
											<c:if test="${!empty listCategory}">
												<table class="table table-striped table-bordered table-hover" id="table2">
													<thead>
														<tr class="info">
															<th width="80">ID</th>
															<th width="120">Category</th>
															<th width="60">Edit</th>
															<th width="60">Delete</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach items="${listCategory}" var="category">
															<tr class="active">
																<td>${category.id}</td>
																<td>${category.name}</td>
																<td class="center"><a href="<c:url value='category?id=${category.id}' />"><i class="fa fa-edit "></i></a></td>
																<td class="center">
																<a href="<c:url value='/category/delete/${category.id}' />"><i class="fa fa-trash-o"></i></a></td>
															</tr>
														</c:forEach>
		
													</tbody>
												</table>
											</c:if>
										</div>
		
									</div>
								</div>
								<!--End Advanced Tables -->
                            </div>
                        </div>

                    </div><!-- contentpanel -->

                 
        </div><!-- mainpanel -->   

    </section>

    <script src="resources/themescp/assets/js/jquery-1.11.1.min.js"></script>
    <script src="resources/themescp/assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="resources/themescp/assets/js/bootstrap.min.js"></script>
    <script src="resources/themescp/assets/js/modernizr.min.js"></script>
    <script src="resources/themescp/assets/js/jquery.sparkline.min.js"></script>
    <script src="resources/themescp/assets/js/toggles.min.js"></script>
    <script src="resources/themescp/assets/js/retina.min.js"></script>
    <script src="resources/themescp/assets/js/jquery.cookies.js"></script>

    <script src="resources/themescp/assets/js/select2.min.js"></script>
    <script src="resources/themescp/assets/js/jquery.validate.min.js"></script>
    <script src="resources/themescp/assets/js/custom.js"></script>
    <script src="resources/themescp/assets/js/jquery.datatables.min.js"></script>

	 <script>
	     jQuery(document).ready(function(){
	
	         "use strict";
	
	         // Select2
	       jQuery(".select2").select2({
	         width: '100%',
	         minimumResultsForSearch: -1
	       });              
	
	     });
	 </script>
	 
	 <script>
  jQuery(document).ready(function() {
    
    "use strict";
    
    jQuery('#table1').dataTable();
    
    jQuery('#table2').dataTable({
      "sPaginationType": "full_numbers"
    });
    
    // Select2
    jQuery('select').select2({
        minimumResultsForSearch: -1
    });
    
    jQuery('select').removeClass('form-control');
    
    // Delete row in a table
    jQuery('.delete-row').click(function(){
      var c = confirm("Continue delete?");
      if(c)
        jQuery(this).closest('tr').fadeOut(function(){
          jQuery(this).remove();
        });
        
        return false;
    });
    
    // Show aciton upon row hover
    jQuery('.table-hidaction tbody tr').hover(function(){
      jQuery(this).find('.table-action-hide a').animate({opacity: 1});
    },function(){
      jQuery(this).find('.table-action-hide a').animate({opacity: 0});
    }); 
  
  
  });
</script>

</body>
</html>