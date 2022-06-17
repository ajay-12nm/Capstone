<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User and Item Management Application</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>

<body>

<header>

<nav class="navbar navbar-expand-md navbar-dark" style="background-color: rgb(234, 217, 164)">
<div>
  <a href="https://www.javaguides.net" class=navbar-brand">Item Management</a>
</div>

  <ul class="navbar-nav">
 <li><a href="<%=request.getContextPath() %>/list" class="nav-link">Items</a>
  </ul>
  </nav>
</header>
<br>
  <div class="container col-md S">
 <div class="card">
 <div class="card-body">
 <c:if test="$ {item != null}">
   <form action="update" method="post">
   
   </c:if>
    <caption>
      <h2>
      <c:if test="${item != null}">
        Edit Item
        </c:if>
        
        <c:if test="${item != null}">
        Add Item
        </c:if>  
      </h2>
    </caption>
    
    <fieldset class="form-group">
    <label>Item Id:</label> 
    <input type="text" value="<c:out value='${item.id}' />" class="form-control" name="id" required="required">
    </fieldset>
   
   <fieldset class="form-group">
   <label>Item Name:</label>
   <input type="text" value="<c:out value='${item.name}' />" class="form-control" name="id" required="required">
   </fieldset>
   
   <fieldset class="form-group">
   <label>Item price:</label>
   <input type="text" value="<c:out value='${item.price}' />" class="form-control" name="id" required="required">
   </fieldset>
   
   
   <button type="submit" class="btn btn-success">Save</button>
   
   </form>
 </div>
 </div>
  </div>
</body>
</html>