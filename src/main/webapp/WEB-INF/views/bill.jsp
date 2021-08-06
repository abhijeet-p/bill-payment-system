<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<title>W3.CSS Template</title>
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
.w3-text-teal, .w3-hover-text-teal:hover {
    color: #5b5959!important;
}
.btn-warning {
	color: #fff;
	background-color: #e7e7e7;
	color: black;;
	border-color: #A6A4A1;
}

.btn-warning {
	color: #fff;
	background-color: #e7e7e7;
	color: black;;
	border-color: #A6A4A1;
}
</style>
<body class="w3-light-grey">
<jsp:include page="header.jsp" />
<!-- Page Container -->
<div class="w3-content w3-margin-top" style="max-width:1400px;">

  <!-- The Grid -->
  <div class="w3-row-padding">
  
    <!-- Left Column -->
    <div class="w3-third">
    
      <div class="w3-white w3-text-grey w3-card-4">
        <div class="w3-display-container">
          <img src="download.jfif" style="width:100%" alt="Avatar">
          <div class="w3-display-bottomleft w3-container w3-text-black">
            <h2>Jane Doe</h2>
          </div>
        </div>
        <div class="w3-container">
  
          <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i>London, UK</p>
          <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i>ex@mail.com</p>
          <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i>1224435534</p>
          <center><button type="button" class="btn btn-warning">Update Details</button></center>
          <br>
          
         </div>
         </div>
         </div>
          <div class="w3-twothird">
          
      <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h2 class="w3-padding-16 w3-xxlarge w3-text-teal w3-animate-top"><center>Record Your Bill<center></h2>
        </div>
        <div class="w3-third">
      <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h4 class="w3-text-grey w3-padding-16 w3-animate-zoom"><i class="fa fa-flash fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><a href="electricity.html">Electricity</h4>
        </div>
       <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h4 class="w3-text-grey w3-padding-16 w3-animate-zoom"><i class="fa fa-desktop fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><a href="dth.html">DTH</a></h4>
        </div>
        <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h4 class="w3-text-grey w3-padding-16 w3-animate-zoom"><i class="fa fa-phone fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><a href="telephone.html">Telephone</a></h4>
        </div>
        </div>
         <div class="w3-third">
      <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h4 class="w3-text-grey w3-padding-16 w3-animate-zoom"><i class="fa fa-inr fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><a href="tax.html">Tax</a></h4>
        </div>
       <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h4 class="w3-text-grey w3-padding-16 w3-animate-zoom"><i class="far fa-credit-card fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><a href="CreditCard.html">Credit Card</a></h4>
        </div>
        <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h4 class="w3-text-grey w3-padding-16 w3-animate-zoom"><i class="fab fa-bitcoin fa-fw w3-margin-right w3-xxlarge w3-text-teal w3-spin"></i><a href="LoanAccount.html">Loan Account</a></h4>
        </div>
        </div>
        <div class="w3-third">
      <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h4 class="w3-text-grey w3-padding-16 w3-animate-zoom"><i class="fas fa-h-square fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><a href="insurance.html">Insurance</a></h4>
        </div>
       <div class="w3-container w3-card w3-white w3-margin-bottom">
        <h4 class="w3-text-grey w3-padding-16 w3-animate-zoom"><i class="fa fa-location-arrow fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><a href="#">Others</a></h4>
        </div>
        
        </div>
        </div>
        <br>
        
        </div>
</body>
</html>