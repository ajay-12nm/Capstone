<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<<link rel="stylesheet" href="w3.css" type="text/html">
<meta http-equiv="Content-Type" content="text/html; charset-UTF-8">
<meta charset="ISO-8859-1">
<title>Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3.css">
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
          <li><a href="" class="nav-link">Registration Form</a></li>
          </ul>
          </nav>
</header>
<br> <br>
<div class="container col-md-5">
<div class="card"></div>
<div class="card-body">
 <form method="post" action="check.jsp">
 
 <filedset class="form-group">
    <label><i class="fa fa-file-signature"></i>&nbsp&nbspFirst Name:</label>
    <input type="text" class="form-control" name="fname" placeholder="Enter the first name" required="required">
    </filedset>
    
    <filedset class="form-group">
    <label><i class="fa fa-file-signature"></i>&nbsp&nbspLast Name:</label>
    <input type="text" class="form-control" name="lname" placeholder="Enter the last name" required="required">
    </filedset>
    
    <filedset class="form-group">
    <label><i class="fa fa-envelope"></i>&nbsp&nbspEmail:</label>
    <input type="text" class="form-control" name="email" placeholder="Enter your email" required="required">
    </filedset>
    
    <filedset class="form-group">
    <label><i class="fa fa-user"></i>&nbsp&nbspUser Name:</label>
    <input type="text" class="form-control" name="uname" placeholder="Enter the user name" required="required">
    </filedset>
    
    <filedset class="form-group">
    <label><i class="fa fa-unlock-alt"></i>&nbsp&nbspPassword:</label>
    <input type="password" class="form-control" name="pwd" placeholder="Enter your password" required="required"><br>
    </filedset>
    
       <button type="submit" class="btn btn-success">Sign In</button>
       
       <fieldset class="form-group">
       <label>Already have Account</label>
       <a href="index.jsp"><input type="button" class="btn btn-success" value="Sign In"></a>
       </fieldset>
       </form>
</div>
</div>

</body>
</html>