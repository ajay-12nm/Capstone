<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="demo.MinPath"%>

<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == ""));
  %>
  <center>
  
  <img src="img/112.gif" height=200 width=200><br>
  You must logged in first..<br/>
  <a href="index.jsp" style="text-decoration:none;font-size:23px;color:#009afd;padding-top:23px">Please Login</a>
  </center>
  <% } else{
   
   %>
   <html>
   <head>
   <title>Thank you</title>
   <link rel="stylesheet" href="https://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href=https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://your-site-or-cdn.com/fontawesome/v6.1.1/js/all.js" data-auto-replace-svg="nest"></script>
   </head>
   <body>
   <div id="header">
<div>
  <div class="logo">
  <a href="index.jss" style="color:black">Food Shop</a>
  </div><br>
  <div id="span">
  <ul id="navigation">
  <li>
  <a href="#">Loation</a>
  </li>
  <li>
  <a href="#">Our Chef</a>
  </li>
  <li>
  <a href="#">About us</a>
  </li>
  <li>
  <a href="logout.jsp">Log out<i>(<%out.print(session.getAttribute("userid")); %>)</i></a>
  </li>
  </ul>
  </div>
</div>
</div>
<h1 style="style.css">Thank you for making Order......</br>
It will delivered to you within next 10 minutes.....</h1>
<footer>
<div class="jumbotron text-center" style="margin-bottom:0">
<p class=""> Made With Love...</p>
</div>
</footer>
   </body>
   </html>