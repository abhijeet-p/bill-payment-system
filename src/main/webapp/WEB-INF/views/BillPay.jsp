<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<title>Bill Payment</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif}
</style>
<body class="w3-light-grey" background="https://images.pexels.com/photos/1932264/pexels-photo-1932264.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940">

<c:set value="${pageContext.request.queryString}" var="alert"></c:set>

<c:if test="${alert == 'save'}">
	<script type="text/javascript">
	alert("Bill Form Save Successfull");
	</script>
</c:if>

<c:if test="${alert == 'paid'}">
	<script type="text/javascript">
	alert("Bill Paid Successfull");
	</script>
</c:if>

<jsp:include page="header.jsp" />
<form modelAttribute="user" method="GET">
<!-- Page Container -->
<div class="w3-content w3-margin-top" style="max-width:1400px;">

  <!-- The Grid -->
  <div class="w3-row-padding">
  
    <!-- Left Column -->
    <div class="w3-third">
    
      <div class="w3-white w3-text-grey w3-card-4">
        <div class="w3-display-container">
          <center>
          	<img src="data:image/png;base64,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" style="width:60%" alt="Avatar">
          </center>
          <br><br>
          <div class="w3-display-bottomleft w3-container w3-text-black">
            <h2>${user.firstName} ${user.lastName}</h2>
          </div>
        </div>
        <div class="w3-container">
  
          <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i>${user.aadhar}</p>
          <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i>${user.emailId}</p>
          <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i>${user.contactNo}</p>
          <!-- <center><a href="/BillingSystem/user/showUserUpdateForm"><button type="button" class="btn btn-warning">Update Details</button></a></center> -->
          <br>
         <center><a href="history"><button type="button" class="btn btn-danger" >Transaction History</button></a></center>
         <br>
          <br>
         </div>
         </div>
         </div>
          <div class="w3-twothird">
          
      <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h2 class="w3-padding-16 w3-xxlarge w3-text-teal w3-animate-top"><center>Record Your Bill<center></h2>
        </div>
        <div class="w3-third">
       
        <c:url var="electricity" value="billByStatusList">
    <c:param name="billType" value="Electricity"/>
    </c:url> 
     <c:url var="tax" value="billByStatusList">
    <c:param name="billType" value="Tax"/>
    </c:url> 
     <c:url var="insurance" value="billByStatusList">
    <c:param name="billType" value="Insurance"/>
    </c:url> 
     <c:url var="creditCard" value="billByStatusList">
    <c:param name="billType" value="CreditCard"/>
    </c:url> 
     <c:url var="dth" value="billByStatusList">
    <c:param name="billType" value="DTH"/>
    </c:url> 
     <c:url var="others" value="billByStatusList">
    <c:param name="billType" value="Others"/>
    </c:url> 
    <c:url var="loan" value="billByStatusList">
    <c:param name="billType" value="Loan"/>
    </c:url> 
    <c:url var="telephone" value="billByStatusList">
    <c:param name="billType" value="Telephone"/>
    </c:url> 
    
    
    
    
        
        
      <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h4 class="w3-text-grey w3-padding-16 w3-animate-zoom"><i class="fa fa-flash fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><a href="${electricity}">Electricity</a></h4>
        </div>
       <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h4 class="w3-text-grey w3-padding-16 w3-animate-zoom"><i class="fa fa-desktop fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><a href="${dth}">DTH</a></h4>
        </div>
        <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h4 class="w3-text-grey w3-padding-16 w3-animate-zoom"><i class="fa fa-phone fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><a href="${telephone}">Telephone</a></h4>
        </div>
        </div>
         <div class="w3-third">
      <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h4 class="w3-text-grey w3-padding-16 w3-animate-zoom"><i class="fa fa-inr fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><a href="${tax}">Tax</a></h4>
        </div>
       <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h4 class="w3-text-grey w3-padding-16 w3-animate-zoom"><i class="far fa-credit-card fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><a href="${creditCard}">Credit Card</a></h4>
        </div>
        <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h4 class="w3-text-grey w3-padding-16 w3-animate-zoom"><i class="fab fa-bitcoin fa-fw w3-margin-right w3-xxlarge w3-text-teal w3-spin"></i><a href="${loan}">Loan Account</a></h4>
        </div>
        </div>
        <div class="w3-third">
      <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h4 class="w3-text-grey w3-padding-16 w3-animate-zoom"><i class="fas fa-h-square fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><a href="${insurance}">Insurance</a></h4>
        </div>
       <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h4 class="w3-text-grey w3-padding-16 w3-animate-zoom"><i class="fa fa-location-arrow fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><a href="${others}">Others</a></h4>
        </div>
        
        </div>
        </div>
        <br>
       <%--  <center><button type="button" class="btn btn-success">Pay Bills</button></center> --%>
        </div>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
      </form>  
</body>
</html>
