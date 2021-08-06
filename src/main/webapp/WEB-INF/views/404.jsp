<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Database Error</title>
</head>
<body >
<c:set value="${pageContext.request.queryString}" var="alert"></c:set>

<c:if test="${alert == 'success'}">
	<script type="text/javascript">
	alert("Registration Filed");
	</script>
</c:if>

<h3>Database Error</h3>
<p>A simillar entry exists in database <p>

</body>

</html>