<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

 <style type="text/css">
  a.button {
    background-color: #e7e7e7; color: black;
    font-size: 12px;
    border-radius: 12px;
    appearance: button;
    background-color: #e7e7e7; color: black;
    padding: 10px 24px;
    box-shadow: 0 6px 8px 0 rgba(0,0,0,0.24), 0 8px 25px 0 rgba(0,0,0,0.19);
    float: Right; 
      
}
a.btn{
	background-color: #A6A4A1; color: black;
	appearance: button;
	
	padding: 18px,24px;
	box-shadow: 0 6px 8px 0 rgba(0,0,0,0.24), 0 8px 25px 0 rgba(0,0,0,0.19);
	float: Right;
	}
  </style>

<div style="padding:10px;width:100%;background-color:#f2f2f2;height:3.7em;border-radius:5px;">
<table style="width:100%;">
<tr>

<td><img src="https://its.unl.edu/images/services/icons/ITSBilling_icon-01.png" height="40" width="40"></td>

<td><input type="text" placeholder="Search" style="border-radius: 14px;text-align:right;border:none;padding:5px;width:17em;background-image:url('serach.png');background-repeat: no-repeat;"></td>
<td><img src="https://cdn3.iconfinder.com/data/icons/ui-icon-part-2/128/notification-512.png" height="30" width="30"></td>
<td><h4>
Welcome , ${pageContext.request.userPrincipal.name}</h4></td>
<td><!--  <input type="submit" value="Logout" style="background-color:#b3b3b3;color:black;border-radius:20px;border:none;padding:5px;width:7em;">-->
<!--  <a href="logout" class="button" align="right"><b>LOGOUT</b></a> -->
<a href="logout" class="btn" align="right" role="button">Logout</a>
<!--   <a href="login.jsp" style="background-color:#b3b3b3;color:black;border-radius:20px;border:none;padding:8px 35px;text-decoration:none;">Logout</a> -->

</td>
</tr>
</table>
</div>

