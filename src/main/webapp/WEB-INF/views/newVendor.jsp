<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="./billingSystem.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
.form-control:focus{border-color: #7a7a7a;  box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3); -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);;} 
.has-error .form-control:focus{box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3); -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);} 	

.wrapper {
  display: flex;
  align-items: center;
  flex-direction: column; 
  justify-content: center;
  width: 100%;
  min-height: 100%;
  padding: 20px;
}

#formContent {
  -webkit-border-radius: 10px 10px 10px 10px;
  border-radius: 10px 10px 10px 10px;
  background: #fff;
  padding: 30px;
  width: 90%;
  max-width: auto;
  position: relative;
  padding: 0px;
  -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
  box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
  text-align: center;
}



/* TABS */

h2.inactive {
  color: #e7e7e7;
}

h2.active {
  color: #e7e7e7;
  border-bottom: 2px solid #e7e7e7;
}



/* FORM TYPOGRAPHY*/





/* Simple CSS3 Fade-in-down Animation */
.fadeInDown {
  -webkit-animation-name: fadeInDown;
  animation-name: fadeInDown;
  -webkit-animation-duration: 1s;
  animation-duration: 1s;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
}

@-webkit-keyframes fadeInDown {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
  }
  100% {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

@keyframes fadeInDown {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
  }
  100% {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

/* Simple CSS3 Fade-in Animation */
@-webkit-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@-moz-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@keyframes fadeIn { from { opacity:0; } to { opacity:1; } }

.fadeIn {
  opacity:0;
  -webkit-animation:fadeIn ease-in 1;
  -moz-animation:fadeIn ease-in 1;
  animation:fadeIn ease-in 1;

  -webkit-animation-fill-mode:forwards;
  -moz-animation-fill-mode:forwards;
  animation-fill-mode:forwards;

  -webkit-animation-duration:1s;
  -moz-animation-duration:1s;
  animation-duration:1s;
}

.fadeIn.first {
  -webkit-animation-delay: 0.4s;
  -moz-animation-delay: 0.4s;
  animation-delay: 0.4s;
}

.fadeIn.second {
  -webkit-animation-delay: 0.6s;
  -moz-animation-delay: 0.6s;
  animation-delay: 0.6s;
  color: #686868;
    
}

.fadeIn.third {
  -webkit-animation-delay: 0.8s;
  -moz-animation-delay: 0.8s;
  animation-delay: 0.8s;
  color: #686868;
}

.fadeIn.fourth {
  -webkit-animation-delay: 1s;
  -moz-animation-delay: 1s;
  animation-delay: 1s;
}

/* Simple CSS3 Fade-in Animation */
.underlineHover:after {
  display: block;
  left: 0;
  bottom: -10px;
  width: 0;
  height: 2px;
  background-color: #e7e7e7; color: black;
  content: "";
  transition: width 0.2s;
}

.underlineHover:hover {
  color: #e7e7e7; color: black;
}

.underlineHover:hover:after{
  width: 100%;
}



/* OTHERS */

*:focus {
    outline: none;
} 

#icon {
  width:60%;
}

* {
  box-sizing: border-box;
}



.register{
    background: -webkit-linear-gradient(left, #7a7a7a, #e7e7e7);
    margin-top: 3%;
    padding: 3%;
}
.register-left{
    text-align: center;
    color: #fff;
    margin-top: 4%;
}
.register-left input{
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    width: 60%;
    background: #f8f9fa;
    font-weight: bold;
    color: #383d41;
    margin-top: 30%;
    margin-bottom: 3%;
    cursor: pointer;
}
.register-right{
    background: #f8f9fa;
    border-top-left-radius: 10% 50%;
    border-bottom-left-radius: 10% 50%;
}
.register-left img{
    margin-top: 15%;
    margin-bottom: 5%;
    width: 25%;
    -webkit-animation: mover 2s infinite  alternate;
    animation: mover 1s infinite  alternate;
}
@-webkit-keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
@keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
.register-left p{
    font-weight: lighter;
    padding: 12%;
    margin-top: -9%;
}
.register .register-form{
    padding: 10%;
    margin-top: 10%;
}
.btnRegister{
    float: right;
    margin-top: 10%;
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    background: #7a7a7a;
    color: #fff;
    font-weight: 600;
    width: 50%;
    cursor: pointer;
}
.btnRegister2{
   
  
    border: none;
    border-radius: 1.5rem;
    padding: 1%;
    background: #7a7a7a;
    color: #fff;
    font-weight: 600;
    width: 50%;
    cursor: pointer;
}
.register .nav-tabs{
    margin-top: 3%;
    border: none;
    background: #7a7a7a;
    border-radius: 1.5rem;
    width: 28%;
    float: right;
}
.register .nav-tabs .nav-link{
    padding: 2%;
    height: 34px;
    font-weight: 600;
    color: #fff;
    border-top-right-radius: 1.5rem;
    border-bottom-right-radius: 1.5rem;
}
.register .nav-tabs .nav-link:hover{
    border: none;
}
.register .nav-tabs .nav-link.active{
    width: 100px;
    color: #7a7a7a;
    border: 2px solid #7a7a7a;
    border-top-left-radius: 1.5rem;
    border-bottom-left-radius: 1.5rem;
}
.register-heading{
    text-align: center;
    margin-top: 8%;
    margin-bottom: -15%;
    color: #495057;
}

</style>
</head>
<body>

<!------ Include the above in your HEAD tag ---------->

<div class="wrapper fadeInDown">
 <div id="formContent">
<form action="saveVendor" method="post" modelAttribute="vendor" class="register" >
<div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                        <h3>Welcome</h3>
                        <p>You are 30 seconds away from registering your details!</p>
                       <!--  <input type="submit" name="" value="Login"/><br/> -->
                    </div>
                    <div class="col-md-9 register-right">
                        <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                            <li >
                               
                            </li>
                            <li >
                                <input type="reset" class="nav-link active" id="reg" value="Reset"/>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">Register as a Vendor</h3>
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">      
                                            <input name="vendorName" value="${vendor.vendorName}" type="name" maxlength="50"  class="form-control" placeholder="Vendor Name" required  />                  
                                            
                                        </div>
                                        <div class="form-group">
                                             <input name="companyRegNo" value="${vendor.companyRegNo}" type="text" maxlength="50" class="form-control" placeholder="Registration No" required/>
                                              
                                              
                                        </div>
                                       
                                        <div class="form-group">
                                         
                                          
                                           <input name="website" class="form-control" value="${vendor.website}"  type="text" placeholder="website" required/>
                                        </div>
                                        <div class="form-group">
                                        <input  name="yearOfEstablishment"  value="${vendor.yearOfEstablishment}"  type="text" size="4" maxlength="4" placeholder="Year Of" class="form-control"/>
                                 
                                </br> 	 
                <p>
                    <label style="padding:15px;" ><b>Certificate Issued Date :</b>
                    </label>
                    <br>
                    
					 <label > <b>Certificate Validity Date : </b>
                    </label> 
                    
				
                </p>
          	   
                                        </div>
                                          <div class="form-group">
                                        <select class="form-control" name="country" selected="${vendor.country}" required>
                                                <option class="hidden"  selected disabled>Vendor Country *</option>
                                                 <option value="India">India
                        				</option>
										<option value="United States">United States
                       					</option>
                       					</select>
                                                 </div>
                                        <div class="form-group">
                                            <div class="maxl">
                                                 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                           				
                           					 <input name="paymentGateway" type="text" class="form-control" value="${vendor.paymentGateway}" placeholder="Payment Gateway" required />
                                           
                                        </div>
                                        <div class="form-group">
                                            <input name="contactNo" type="text" maxlength="12" class="form-control"  value="${vendor.contactNo}" placeholder=" contact number "/>
                                            
                                        </div>
                                        <%-- <c:out >${vendor.vendorType}</c:out> --%>
                                        <div class="form-group">
                                            <select class="form-control" name="vendorType" selected="${vendor.vendorType}" required>
                                               <option class="hidden"  disabled>Vendor Type *</option>
                                                <option value="Technical">Technical</option>
                                                <option value="Electronics">Electronics</option>
                                               
                                            </select>
                                            
                                        </div>
                                         
                                       
                                        <div class="form-group">
                                    	 <input name="emailId"  type="text" value="${vendor.emailId}" maxlength="15"class="form-control" placeholder=" Email " required/>
                                           
                                        </div>
                                        
                                         <div class="form-group">
                                          
                                            <input  name="certificateIssueDate" type="date" value="${vendor.certificateIssueDate}" class="form-control" required />
                                            
                                        </div>
                                        <div class="form-group">
                                             <input  name="certificateValidityDate" type="date" value="${vendor.certificateValidityDate}" class="form-control" required />
                                            
                                        </div>
                                      <div class="form-group">
                                       
                                    	<select name="state" class="form-control" selected="${vendor.state}" required>
                                                <option class="hidden"  selected disabled>Vendor State *</option>
                                                 <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
													<option value="Andhra Pradesh">Andhra Pradesh</option>
													<option value="Arunachal Pradesh">Arunachal Pradesh</option>
													<option value="Assam">Assam</option>
													<option value="Bihar">Bihar</option>
													<option value="Chandigarh">Chandigarh</option>
													<option value="Chhattisgarh">Chhattisgarh</option>
													<option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
													<option value="Daman and Diu">Daman and Diu</option>
													<option value="Delhi">Delhi</option>
													<option value="Goa">Goa</option>
													<option value="Gujarat">Gujarat</option>
													<option value="Haryana">Haryana</option>
													<option value="Himachal Pradesh">Himachal Pradesh</option>
													<option value="Jammu and Kashmir">Jammu and Kashmir</option>
													<option value="Jharkhand">Jharkhand</option>
													<option value="Karnataka">Karnataka</option>
													<option value="Kerala">Kerala</option>
													<option value="Lakshadweep">Lakshadweep</option>
													<option value="Madhya Pradesh">Madhya Pradesh</option>
													<option value="Maharashtra">Maharashtra</option>
													<option value="Manipur">Manipur</option>
													<option value="Meghalaya">Meghalaya</option>
													<option value="Mizoram">Mizoram</option>
													<option value="Nagaland">Nagaland</option>
													<option value="Orissa">Orissa</option>
													<option value="Pondicherry">Pondicherry</option>
													<option value="Punjab">Punjab</option>
													<option value="Rajasthan">Rajasthan</option>
													<option value="Sikkim">Sikkim</option>
													<option value="Tamil Nadu">Tamil Nadu</option>
													<option value="Tripura">Tripura</option>
													<option value="Uttaranchal">Uttaranchal</option>
													<option value="Uttar Pradesh">Uttar Pradesh</option>
													<option value="West Bengal">West Bengal</option>
                    								</select>
          	  
                                        </div>
                                      	  <div class="form-group">
                                      	  <input name="address"  type="text" value="${vendor.address}" class="form-control"  placeholder=" address " required/>
                                        
                                                 </div>
                                                 
                                                 
                                              <input type="submit" class="btnRegister"   value="Register"/>
                                              
                                        </div>
                                        
                                      
                                       
                  						
                                    </div>
                                    
                                </div>
                            </div>
                              </div>
                                </div>
                            </div>
</div>
</div>
                            </div>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                            </form>
</body>
</html>