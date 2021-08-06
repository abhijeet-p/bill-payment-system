<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>DTH Bill</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Roboto'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel='stylesheet'
	href='https://use.fontawesome.com/releases/v5.7.0/css/all.css'
	integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ'
	crossorigin='anonymous'>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
html, body, h1, h2, h3, h4, h5, h6, option {
	font-family: "Roboto", sans-serif
}

.custom-select {
	position: relative;
	font-family: Arial;
}

.custom-select select {
	display: none; /*hide original SELECT element:*/
}

.select-selected {
	background-color: DodgerBlue;
}
/*style the arrow inside the select element:*/
.select-selected:after {
	position: absolute;
	content: "";
	top: 14px;
	right: 10px;
	width: 0;
	height: 0;
	border: 6px solid transparent;
	border-color: #fff transparent transparent transparent;
}

/*point the arrow upwards when the select box is open (active):*/
.select-selected.select-arrow-active:after {
	border-color: transparent transparent #fff transparent;
	top: 7px;
}

/*style the items (options), including the selected item:*/
.select-items div, .select-selected {
	color: #ffffff;
	padding: 8px 16px;
	border: 1px solid transparent;
	border-color: transparent transparent rgba(0, 0, 0, 0.1) transparent;
	cursor: pointer;
	user-select: none;
}

/*style items (options):*/
.select-items {
	position: absolute;
	background-color: DodgerBlue;
	top: 100%;
	left: 0;
	right: 0;
	z-index: 99;
}

/*hide the items when the select box is closed:*/
.select-hide {
	display: none;
}

.select-items div:hover, .same-as-selected {
	background-color: rgba(0, 0, 0, 0.1);
}
</style>
<body class="w3-light-grey" background="https://images.pexels.com/photos/242236/pexels-photo-242236.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940">
	<jsp:include page="header.jsp" />
	<!-- Page Container -->
	<div class="w3-content w3-margin-top" style="max-width: 1400px;">

		<!-- The Grid -->
		<div class="w3-row-padding">

			<!-- Left Column -->
			<div class="w3-third">

				<div class="w3-white w3-text-grey w3-card-4">
					<div class="w3-display-container">
						<center>
							<img src="data:image/png;base64,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" style="width: 60%" alt="Avatar">
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
						
						<br>
						

					</div>
				</div>
			</div>
			<div class="w3-twothird">

				<div class="w3-container w3-card w3-white w3-margin-bottom">
					<h2 class="w3-padding-16 w3-xxlarge w3-text-teal w3-animate-top">
						<center>
							DTH Bill
							<center>
					</h2>
				</div>

				<div class="w3-third">
					<form action="saveBill" method="POST" modelAttribute="bill">

 <input id=billId type="hidden"  value="${bill.billId}" name="billId"  required  >

						<label for="username"
							style="border: none; font-size: 1em; color: #818181; padding: 12px; margin-left: 1em">User
							Name</label><br> <input type="text" id="user" name="username"
							placeholder="user id" value="${user.username}"
							style="border: none; font-size: 1em; color: #818181; padding: 12px;" readonly><br>
							<br>

						<label for="pan"
							style="border: none; font-size: 1em; color: #818181; padding: 12px; margin-left: 1em">Pan Card
							No</label> <input type="text" id="pan" name="pan" 
							placeholder="pan card no" value="${user.pan}"
							style="border: none; font-size: 1em; color: #818181; padding: 12px;"><br>

						<input type="hidden" id="billType" name="billType"
							value="Electricity"
							style="border: none; font-size: 1em; color: #818181; padding: 12px;"><br>
							
							<label for="amount"
						style="border: none; font-size: 1em; color: #818181; padding: 12px; margin-left: 1em" required>Amount
						to be paid</label> <br> <input type="text" id="amount" name="amount"
						placeholder="250.00" value="${bill.amount}"
						style="border: none; font-size: 1em; color: #818181; padding: 12px; margin-left: 0em"" required>
					<br> <br>

						<br>
						<div class="custom-select" style="width: 200px;">
							<select name="paymentThrough" selected="${bill.paymentThrough}" required>
								<option value="0">Select Payment Method:</option>
								<option value="PayTM">Paytm</option>
								<option value="MobiQwik">MobiQwik</option>
								<option value="GooglePay">GooglePay</option>
								<option value="PhonePe">PhonePe</option>
								<option value="Freecharge">Freecharge</option>
							</select>
						</div>
				</div>
				<div class="w3-twothird">


					<label for="cardNumber"
						style="border: none; font-size: 1em; color: #818181; padding: 12px; margin-left: 10em">Credit
						card number</label> <br> <input type="text" id="cardNumber" maxlength="15"
						name="cardNumber" value="${bill.cardNumber}"
						style="border: none; font-size: 1em; color: #818181; padding: 12px; margin-left: 10em"" required>
					<br> <br>
					<label for="cardCVV"
						style="border: none; font-size: 1em; color: #818181; padding: 12px; margin-left: 10em">Credit
						card CVV</label> <br> <input type="text" id="cardCVV" maxlength="15"
						name="cardCVV"  value="${bill.cardCVV}"
						style="border: none; font-size: 1em; color: #818181; padding: 12px; margin-left: 10em"" required>
					<br> <br>
					
					<label for="cardNumber"
						style="border: none; font-size: 1em; color: #818181; padding: 12px; margin-left: 10em">Credit
						card number</label> <br> <input type="text" id="cardNumber" maxlength="15"
						name="cardNumber" placeholder="1111-2222-3333-4444" value="${bill.cardNumber}"
						style="border: none; font-size: 1em; color: #818181; padding: 12px; margin-left: 10em"" required>
					<br> <br> <br>
					
					<div class="custom-select" style="width: 200px; margin-left: 10em;">
						<select name="vendorName" selected="${bill.vendorName}" required>
							<option value="0">Select Vendor:</option>
							<c:forEach var="vendor" items="${vendors}">

								<option value="${vendor.vendorName}">${vendor.vendorName}</option>

							</c:forEach>
						</select>
					</div>

					<script>
						var x, i, j, selElmnt, a, b, c;
						/*look for any elements with the class "custom-select":*/
						x = document.getElementsByClassName("custom-select");
						for (i = 0; i < x.length; i++) {
							selElmnt = x[i].getElementsByTagName("select")[0];
							/*for each element, create a new DIV that will act as the selected item:*/
							a = document.createElement("DIV");
							a.setAttribute("class", "select-selected");
							a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
							x[i].appendChild(a);
							/*for each element, create a new DIV that will contain the option list:*/
							b = document.createElement("DIV");
							b.setAttribute("class", "select-items select-hide");
							for (j = 1; j < selElmnt.length; j++) {
								/*for each option in the original select element,
								create a new DIV that will act as an option item:*/
								c = document.createElement("DIV");
								c.innerHTML = selElmnt.options[j].innerHTML;
								c
										.addEventListener(
												"click",
												function(e) {
													/*when an item is clicked, update the original select box,
													and the selected item:*/
													var y, i, k, s, h;
													s = this.parentNode.parentNode
															.getElementsByTagName("select")[0];
													h = this.parentNode.previousSibling;
													for (i = 0; i < s.length; i++) {
														if (s.options[i].innerHTML == this.innerHTML) {
															s.selectedIndex = i;
															h.innerHTML = this.innerHTML;
															y = this.parentNode
																	.getElementsByClassName("same-as-selected");
															for (k = 0; k < y.length; k++) {
																y[k]
																		.removeAttribute("class");
															}
															this
																	.setAttribute(
																			"class",
																			"same-as-selected");
															break;
														}
													}
													h.click();
												});
								b.appendChild(c);
							}
							x[i].appendChild(b);
							a.addEventListener("click", function(e) {
								/*when the select box is clicked, close any other select boxes,
								and open/close the current select box:*/
								e.stopPropagation();
								closeAllSelect(this);
								this.nextSibling.classList
										.toggle("select-hide");
								this.classList.toggle("select-arrow-active");
							});
						}
						function closeAllSelect(elmnt) {
							/*a function that will close all select boxes in the document,
							except the current select box:*/
							var x, y, i, arrNo = [];
							x = document.getElementsByClassName("select-items");
							y = document
									.getElementsByClassName("select-selected");
							for (i = 0; i < y.length; i++) {
								if (elmnt == y[i]) {
									arrNo.push(i)
								} else {
									y[i].classList
											.remove("select-arrow-active");
								}
							}
							for (i = 0; i < x.length; i++) {
								if (arrNo.indexOf(i)) {
									x[i].classList.add("select-hide");
								}
							}
						}
						/*if the user clicks anywhere outside the select box,
						 then close all select boxes:*/
						document.addEventListener("click", closeAllSelect);
					</script>

					<br>
					<br> <br> <br> <br> <br> 
					 <br>
					<input type="submit" value="Save & Exit" name="save" formaction="saveForm" formmethod="Post"
						style="border: hidden; font-size: 1em; color: white; padding: 10px; background-color: #343434; border-radius: 17px; width: 22%; float: right;">
					 <input type="submit" value="Pay Bill" name="pay" formaction="saveBill" formmethod="post"
						style="border: none; font-size: 1em; color: white; padding: 10px; background-color: #343434; border-radius: 17px; width: 22%; float: right;">

					<input type="reset" value="Cancel"
						style="border: none; font-size: 1em; color: #888888; padding: 10px; background-color: #cdcdcd; border-radius: 17px; width: 22%; float: right;">
				</div>
			</div>

		</div>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		</form>
		</div>
		
</body>
</html>