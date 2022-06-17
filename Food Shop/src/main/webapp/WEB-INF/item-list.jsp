<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Item Management Application</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body> 
    <header>
   <nav class="navbar navbar-expand-md navbar-dark" style="background-color:rgb(234, 217, 164)">
   <div>
       <a href="http://www.nacreservices.com" class="navbar-brand">Item Management App</a>
   </div>
   
      <ul class="navbar-nav">
        <li><a href=""<%=request.getContextPath() %>/list" class="nav-link">Items</a>
      </ul>
      </nav>
    </header>
    <br>
     
      <div class="row">
      
      
      
      <div class="container">
      <h3 class="text-center">List of Item</h3>
      <hr>
      <div class="container text-left">
          <li><a href=""<%=request.getContextPath() %>/list" class="nav-link"> Add New Items</a>  
      </div>
      <br>
      <tabel class="tabel tabel-bordered">
          <thead>
              <tr> 
                     <th>ID</th>
                      <th>Food Name</th>
                      <th>Price</th>
                      <th>Action</th>
                      </tr>
                   </thead>
                   
                <tbody>
                
                
                 <c:forEach var="item" item="${listItem}">
                 
                 <tr>
                 <td>
                 <c:out value="${item.id}" />
                 </td>
                  <td>
                 <c:out value="${item.name}" />
                 </td>
                  <td>
                 <c:out value="${item.price}" />
                 </td>
                 
                 <td><a href="edit?id=<c:out value='${item.id}'/>">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="delete?id=<c:out value='${item.id}'/>">Delete</a></td>
                 </tr>
                 </c:forEach>
                 <!-- } -->
              
                </tbody>
                </tabel>
                </div>
                </div>
                </body>
                <footer>
              <div class="jumbotron text-center" style="margin-bottom:0">
              <p class="">Made with Love</p>
              </div>
              </footer>
              
              </html>
                
                
      