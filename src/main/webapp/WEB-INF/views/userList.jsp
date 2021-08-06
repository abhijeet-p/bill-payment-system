<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Billing Page</title>

 <style>
    
    
    .table {
    column-gap: 25px;
    }
    
    .col-sm-12{
	width: auto;
	
	}
	
	.col-sm-9{
	margin-left:5px;
	width: auto;
	
	}
	.col-sm-3{
	margin-left: 10px;
	}
    
	a.btn{
	background-color: #A6A4A1; color: black;
	appearance: button;
	
	padding: 18px,24px;
	box-shadow: 0 6px 8px 0 rgba(0,0,0,0.24), 0 8px 25px 0 rgba(0,0,0,0.19);
	float: Right;
	}

   
    .sidenav {
      background-color: #f1f1f1;
      height: auto;
 
    
    }
 
.profile-data{     padding: 10px;}
.profile{
width:100%;
}
    
   
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;
      width:auto;
      } 
    }
  </style>
</head>
<body>


<div class="row " style="padding : 10px; background-color:#EFEDEA; ">

  <div class="col-sm-4" style="margin-left: 8px ; font-size: 18px;">
<b><c:out value = "${'User Info' }"/></b>
 </div>
 
 <div class="col-sm-3" style="margin-left: 8px ; font-size: 18px;">
 <p align="center">Welcome ${pageContext.request.userPrincipal.name}</p>
 </div>
 
 <div class="col-sm-4" style="margin-left: 8px ; font-size: 18px;">
 <input type="button" style="float: right;" value="Logout"
 onclick="window.location.href='logout'; return false;" class="btn btn-primary"/>
  </div>
</div>
<br>
<!-- <div class="container-fluid" align="right" style="padding-right: 210px;">
  <input type="button"   value="Vendor List"
 onclick="window.location.href='/BillingSystem/vendor/vendorList'; return false;" class="btn btn-primary"/>
 </div> -->
  <br>
 <div class="container-fluid">
 <form method="get" modelAttribute="user">
  <div class="row content">
    <div class="col-sm-3 sidenav">
    
      <div style="background-color:#B7B7B5; text-align:center ;"> <h3 align="center" style="padding: 5px;" >Profile</h3></div>
   <div class="profile-data">
   <span class="border" style=" padding:30px;" >
  <img class="manImg" src="https://cdn2.iconfinder.com/data/icons/rcons-user/32/male-shadow-circle-512.png" style="max-height: 150px; max-width: 150px;" ></img> 
    </span> 
   <ul class="nav nav-pills nav-stacked"  style=" padding:50px;">
        <li><a style="font-weight: bold;">Username :</b></a ></li>
        <p style="padding-left: 35px;">${pageContext.request.userPrincipal.name}<p>
        <li><a style="font-weight: bold;">Contact Number :</a></li>
        <p style="padding-left: 35px;">${user.contactNo}<p>
        <li><a style="font-weight: bold;" >Email :</a></li>
        <p style="padding-left: 35px;">${user.emailId}<p>
      </ul>
      <br>
    
    </div>
</div>
    <div class="col-sm-9">
    
   <!--  <nav class="navbar navbar-default"  style="background-color:#EFEDEA; width:600px;" >
  <div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" href="/BillingSystem/vendor/showVendorForm" style="background-color: #B7B7B5; width: auto; text-align: center ; " >Add Vendor</a>
    </div>
    
    <div class="navbar-header">
      <a class="navbar-brand" href="/BillingSystem/user/showRegisterForm" style="background-color: #C1BFBC ; margin-left:0px ;width: auto ; text-align: center ;">RegisterUser</a>
    </div>
  </div>
</nav> -->
    <div class="container-fluid">
  <h2>User Table</h2>  
        <table class="table">
    <thead>
      <tr>
        <th>Id</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Age</th>
        <th>Gender</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach var="tempuser" items="${users}">
    
   
    
     <c:url var="deleteLink" value="/user/delete">
    <c:param name="username" value="${tempuser.username}"/>
    </c:url>
    
    
    <tr>

       <td>${tempuser.username}</td>
      <td>${tempuser.firstName}</td>
     <td>${tempuser.lastName}</td>
      <td>${tempuser.age}</td>
     <td>${tempuser.gender}</td>
     <td><a href="${deleteLink}" onclick="id(!(confirm('Are you sure you want to delete this user?'))return false)">Delete</a> 
    </tr>
    </c:forEach>
    </tbody>
  </table>
</div>
</div>
</div>
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
<form>
</div>
</body>
</html>