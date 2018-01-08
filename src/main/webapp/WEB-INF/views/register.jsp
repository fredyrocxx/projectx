<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<title>King's land</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta charset="utf-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp""></jsp:include>
<div class="container"></div>
<h2>Registeration Form</h2>
<div class="col-lg-12">
<div class="row">

<form:form modelAttribute="user" action="saveRegister" method="post">
<div class="form-group">
<label>Name:</label><br>
<form:input path="name" class="form-control" placeholder="Enter Name"/>
</div>

<div class="form-group">
<label>Email:</label><br>
<form:input path="email" class="form-control" placeholder="Enter email"/>
</div>

<div class="form-group">
<form:errors></form:errors>
<label>Password:</label><br>
<form:input path="password" class="form-control" placeholder="Enter Password"/>
</div>

<div class="form-group">
<label>Address:</label><br>
<form:input path="address" class="form-control" placeholder="Enter Address"/>
</div>

<div class="form-group">
<label>Phone:</label><br>
<form:input path="phone" class="form-control" placeholder="Enter Phone"/>
</div>
<br><br>
<button type="submit" class="btn btn-lg btn-info">SUBMIT</button>
<button type="reset" class="btn btn-lg btn-info">CANCEL</button>
</form:form>











</div>
</div>
</body>
</html>