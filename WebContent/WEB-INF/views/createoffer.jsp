<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Offer</title>
<link href = "${pageContext.request.contextPath}/static/css/bootstrap.css" rel="stylesheet">
<link href = "${pageContext.request.contextPath}/static/css/styles.css" rel="stylesheet">
</head>
<body>

<div class="container">
      <div class="header clearfix">
        <nav>
          <ul class="nav nav-pills pull-right">
            <li role="presentation" class="active"><a href="#">Home</a></li>
            <li role="presentation"><a href="#">About</a></li>
            <li role="presentation"><a href="#">Contact</a></li>
          </ul>
        </nav>
        <h3 class="text-muted">Project name</h3>
      </div>
      
      
      <sf:form method="post" action = "${pageContext.request.contextPath}/newoffer" commandName="offers">
      	<div class="form-group">
      		<label>Name</label>
      		<sf:input type="text" name="name" class="form-control" path="name"/><br/><sf:errors path="name" cssClass="error"></sf:errors>
      		
      	</div>
      	<div class="form-group">
      		<label>Email</label>
      		<sf:input type="text" name="email" class="form-control" path="email"/><br/><sf:errors path="email" cssClass="error"></sf:errors>
      		
      		
      	</div>
      	<div class="form-group">
      		<label>Offer</label>
      		<sf:textarea rows="10" cols="20" name="text" class="form-control" path="text"></sf:textarea><br/><sf:errors path="text" cssClass="error"></sf:errors>
      		
      		
      	</div>
      	<center><button type="submit" class="btn btn-primary" name="newoffer" id="create">Create Offer</button></center>
      </sf:form>
</div>

      <footer class="footer">
        <p>&copy; 2016 Company, Inc.</p>
      </footer>

    </div> <!-- /container -->

</body>
</html>