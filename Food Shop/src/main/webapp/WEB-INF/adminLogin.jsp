<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equi="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AdminLogin</title>
<link rel="stylesheet" href=https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://your-site-or-cdn.com/fontawesome/v6.1.1/js/all.js" data-auto-replace-svg="nest"></script>
</head>
<body>
<header>  
   <nav class="navbar navbar-expand-md navbar-dark" style="background-color:pink">
   <div>
   <a class="" class="navbar-brand">Food shop</a>
   </div>
   
          <ul class="navbar-nav">
          <li><a href="#" class="nav-link">Location</a></li>
           <li><a href="#" class="nav-link">Our Chef</a></li>
            <li><a href="#" class="nav-link">About us</a></li>
          </ul>
   </nav>
</header><br><br>
<div class="container col-md-20">
<h4>Admin Login</h4>
<div class="card-body">
  <form action="adminValidationServlet" method="get">
    <filedset class="form-group">
    <label><i class=fa fa-user"></i>$nbsp&nbspUser Name:</label>
    <input type="text" class="form-control" name="uname" placeholder="Enter your name">
    </filedset>
    <filedset class="form-group">
    <label><i class=fas fa-unlock-alt"></i>$nbsp&nbspPassword:</label>
    <input type="password" class="form-control" name="pwd" placeholder="Enter your password">
    </filedset>
    <button type="submit" class="btvn btn-success">Sign In</button>
  </form>
</div>
</div>
</body>
<footer>
<div class="jumbotron text-center" style="margin-bottom:0">
<p class=""> Made With Love...</p>
</div>
</footer>
</html>