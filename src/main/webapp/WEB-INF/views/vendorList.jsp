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
<title>Venodor List</title>

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



    
    <div class="container-fluid">
  <h2>vendor Table</h2>  
        <table class="table">
    <thead>
      <tr>
        <th>Email Id</th>
        <th> Name</th>
        <th> Payment Gateway</th>
        <th> Contact Number</th>
       <th>View</th> 
        <th>Update</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach var="tempvendor" items="${vendor}">
    
      <c:url var="viewLink" value="/vendor/view">
    <c:param name="vendorName" value="${tempvendor.vendorName}"/>
    </c:url> 
    
    <c:url var="updateLink" value="/vendor/updateForm">
    <c:param name="vendorName" value="${tempvendor.vendorName}"/>
    </c:url>
    
     <c:url var="deleteLink" value="/vendor/delete">
    <c:param name="vendorName" value="${tempvendor.vendorName}"/>
    </c:url>
    <tr>

       <td>${tempvendor.emailId}</td>
      <td>${tempvendor.vendorName}</td>
      <td>${tempvendor.paymentGateway}</td>
      <td>${tempvendor.contactNo}</td>
       <td><a href="${viewLink}">View</a> 
        <td><a href="${updateLink}">Update</a>
       <td><a href="${deleteLink}" onclick="id(!(confirm('Are you sure you want to delete this user?'))return false)">Delete</a> 
      
 
  
  
      
    </tr>
    </c:forEach>
    </tbody>
  </table>
</div>

</body>
</html>