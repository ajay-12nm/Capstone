<%@page import="com.db.utils.DbConnection"%>
<%@page import ="java.sql.*"%>
 
 <%
       String userId = request.getParameter("uname");
       String pwd = request.getParameter("pwd");
       Connection con = DbConnection.init();
       Statement st = con.createStatement();
       
       rs = st.excuteQuery("select * from member where uname= "' +userid + "' and password="' + pwd + "'");
       if (rs.next()) {
        session.setAttribute("userid",userid);
        response.sendRedirect("success.jsp");
       }else{
    %>
    <html>
    <head>
    <meta http-equi="Content-Type" content="text/html; charset=UTF-8">
    <title>Food Shop</title>
    <link rel="stylesheet" href="w3.css" type="text/html">
    </head>
    <style>
    .dfHgt {
    color: #212121;
    text-align:center;
    }
    </style>
    <div class="w3-container w3-center">
    <div class="w3-xxlarge">Food Shop</div>
    </div>
    <p class="dfHgt">
    !<br>
    Wrong Username or Pasword.<br>
    If you do not redirect within 5 second <a href="index.jsp">Click Here</a>
    <script>setTimeout(function() {
    window.location.href = "index.jsp", 5000);
    }</script>
    </p>
    <%
    }
     %>
    </html>   