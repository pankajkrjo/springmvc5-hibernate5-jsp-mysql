<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring MVC 5 - form handling | Java Guides</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
 rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

</head>
<body>
 <div class="container">
  <div class="col-md-offset-2 col-md-7">
   <h2 class="text-center">Spring MVC 5 + Hibernate 5 + JSP + MySQL
    Example</h2>
   <div class="panel panel-info">
    <div class="panel-heading">
     <div class="panel-title">Add Customer</div>
    </div>
    <div class="panel-body">
     <form:form action="saveCustomer" cssClass="form-horizontal"
      method="post" modelAttribute="customer">

      <!-- need to associate this data with customer id -->
      <form:hidden path="id" />

      <div class="form-group">
       <label for="firstname" class="col-md-3 control-label">First
        Name</label>
       <div class="col-md-9">
        <form:input path="firstName" cssClass="form-control" />
       </div>
      </div>
      <div class="form-group">
       <label for="lastname" class="col-md-3 control-label">Last
        Name</label>
       <div class="col-md-9">
        <form:input path="lastName" cssClass="form-control" />
       </div>
      </div>

      <div class="form-group">
       <label for="email" class="col-md-3 control-label">Email</label>
       <div class="col-md-9">
        <form:input path="email" cssClass="form-control" />
       </div>
      </div>

    <div class="form-group">
       <label for="gender" class="col-md-3 control-label">Gender</label>
       <div class="col-md-9">
        Gender:   
        Male<form:radiobutton path="Gender" value="Male"/>  
        Female<form:radiobutton path="Gender" value="Female"/>  
       </div>
      </div>
      
      

  <div class="form-group">
       <label for="BreakFast" class="col-md-3 control-label">BreakFast</label>
       <div class="col-md-9">
        Meals:  
        BreakFast<form:checkbox path="food" value="BreakFast"/>  
        Lunch<form:checkbox path="food" value="Lunch"/>  
        Dinner<form:checkbox path="food" value="Dinner"/>  
       </div>
      </div>
      
      <div class="form-group">
       <label for="cityFrom" class="col-md-3 control-label">cityFrom</label>
       <div class="col-md-9">
        Meals:  
        BreakFast<form:checkbox path="Food" value="cityFrom"/>  
        Lunch<form:checkbox path="Food" value="Lunch"/>  
        Dinner<form:checkbox path="Food" value="Dinner"/>  
       </div>
      </div>
      
      
       <div class="form-group">
       <label for="cityTo" class="col-md-3 control-label">cityFrom</label>
       <div class="col-md-9">
        Going to: <form:select path="cityTo">  
        <form:option value="Ghaziabad" label="Ghaziabad"/>  
        <form:option value="Modinagar" label="Modinagar"/>  
        <form:option value="Meerut" label="Meerut"/>  
        <form:option value="Amristar" label="Amristar"/>  
        </form:select>  
       </div>
      </div>
      
      <div class="form-group">
       <label for="name" class="col-md-3 control-label">Product Name:</label>
       <div class="col-md-9">
        <form:input path="name" cssClass="form-control" />
       </div>
      </div>

         
   <%--    <div class="form-group">
       <label for="images" class="col-md-3 control-label">Product Images:</label>
       <div class="col-md-9">
        <form:input path="images" cssClass="form-control" />
       </div>
      </div> --%>
      
      <div class="form-group">
       <!-- Button -->
       <div class="col-md-offset-3 col-md-9">
        <form:button cssClass="btn btn-primary">Submit</form:button>
       </div>
      </div>

     </form:form>
    </div>
   </div>
  </div>
 </div>
</body>
</html>