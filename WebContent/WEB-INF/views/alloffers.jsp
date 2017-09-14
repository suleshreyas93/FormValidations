<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Offers</title>
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

      <c:forEach var="row" items="${offers}">
      	<div>
      		<ul>
      			<li>Id : ${row.id}</li>
      			<li>Name : ${row.name}</li>
      			<li>Email : ${row.email}</li>
      			<li>Offer : ${row.text}</li>
      		</ul>
      	</div>
      </c:forEach>

      

        
      </div>

      <footer class="footer">
        <p>&copy; 2016 Company, Inc.</p>
      </footer>

    </div> <!-- /container -->



</body>
</html>