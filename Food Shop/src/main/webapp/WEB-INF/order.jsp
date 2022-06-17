<%@page import="com.db.utils.DbConnection"%>
<html>

<head>
<%@ page import ="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html"; charset=UTF-8" pageEncoding="UTF-8"%>


<%
           if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")){
        	   
 %>
 <p> The Session Was Expired............</p><br>
 </hr>
 <a href="index.jsp">Click here to login again....</a>
 <%} else {
	 float sum = 0;
	 Connection con = DbConnection.init();
	 Statement st = con.createStatement();
	 ResultSet rs;
	 String[] sports;
	 %>
	 
	 
	 <meta http-eqiv="Content-Type" content="text/html; charset=UTF-8">
	 <title>Conform your Order....</title>
	 <link rel="stylesheet" href="style.css" type="text/html">
	  <link rel="stylesheet" href="css1.css" type="text/html">
	   <link rel="stylesheet" href="w3.css" type="text/html">
	   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>

<style>
body,div,ul,li,p{
font-family: arial;
}

#header{
height: 120px;
display: block;
backgroung-color: #5f5f5f;
}

#header .logo a{
padding-left: 450px;
color: black;
text-decoration: none;
font-size: 40px;
}

#header .logo{
backgroung-color: pink;
}
#navigation{
display: inline-block;
list-style: none;
line-height: 50px;
margin: 0;
padding-left: 20;
}

#navigation li{
float: left;
width: 0;
text-align: right;
}

#navigation li a{
color: #616161;
font-size: 20px;
line-height: 10px;
text-decoration: none;
}

#navigation li a:hover{
font-size: 20px;
color: #212121;
}

#navigation li a:active {
color: black;
padding: 12px;
background-color: transparent;
font-size: 20px;
border: 2px solid black;
border-radius: 10px;
}
</style>
<div id="header">
<div>
  <div class="logo">
  <a href="index.jss" style="color:black">Food Shop</a>
  </div><br>
  <div id="span">
  <ul id="navigation">
  <li>
  <a href="#">Loations</a>
  </li>
  <li>
  <a href="#">Our Chef</a>
  </li>
  <li>
  <a href="#">About us</a>
  </li>
  <li>
  <a href="logout.jsp">Log out<i>(<%System.out.print(session.getAttribute("userid")); %>)</i></a>
  </li>
  </ul>
  </div>
</div>
</div>
 <%   ArrayList<Integer> arraylist = new ArrayList<Integer>();
 sports = request.getParameter("chk1");
out.print("&nbsp &nbsp &nbsp &nbsp &nbsp <h1 style='display:inline;color:blue;padding:5px;border:2px solid #616161;>Your Cart</h1> ");
out.print("<tabel class='table table-bordered'> <thead class='thead-dark'><tr><th>Item Name</th><th>Quality</th><th>Total</th</tr></thead>");
float count = 0;
if (sports != null){
	for (int i = 0; i < sports.length; i++) {
		st.excecuteQuery("select item_name,price_rupee from items where id=" +sports[i] + "");
		rs = st.get.ResultSet();
		while (rs.next()){
			String nameVal = rs.getString("item_name");
			int catVal = rs.getInt("price_rupee");
			%><input type='hidden' id='cost' value="<%=catVal%>">
			
			
	<%
	
	
	        arraylist.add(catVal);
	sum += catVal;
	int q = 1;
	count++;
	out.ptintln("<tr><td>" + nameVal + "</td><td>" + q + "</td><td><div id='total'>" + catVal + "</div></td></tr>");
	count += 1;
		}
	}
	out.ptint("<tr><td style='font-size:30px;'>Total</td><td style='font-size:30px'>" + count / 2 + "</td><td style='font-size:30px;'>" + sum + "</td></tr");
	out.print("<tr></tr><tr colspan='3'><td colspan='3'><div><a href=post.jsp><input type='button' style='width:100px' class='w3-xlarge w3-btn w3-block' value='Proceed to checkout'> </div></td></tr>");
	
}else {
	%>
	<tr><td></td></tr></td></tr>
	
 }
</tabel>
<h4>&nbsp<a href="success.jsp" style="color:#212121">Shop more items</a></h4>
 
 <div id="footer" style="height:270px;display:block;">
 
</body>
<footer>
<div class="jumbotron text-center" style="margin-bottom:0">
<p class=""> Made With Love...</p>
</div>
</footer>
</html>


