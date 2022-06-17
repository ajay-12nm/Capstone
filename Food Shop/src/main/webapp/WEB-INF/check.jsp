<%@page import="com.db.utils.DbConnection"%>
<%@page import ="java.sql.*"%>
<%

   String user = request.getParameter("uname");
   String pwd = request.getParameter("pass");
   String fname = request.getParameter("fname");
   String lname = request.getParameter("lname");
   String email = request.getParameter("email");
     
      try{
        Connection con = DbConnection.init();
      Statement st = con.createStatement();
      String q;
      ResultSet rs;
      
       int i = st.executeUpdate("insert into member(first_name, last_name, email, uname, lname) values ('" + fname, lname, email, usname, password));
       if(i > o) {
           session.setAttribute("userid", user);
           response.sendRedirect("sucess.jsp");
           }else {
           response.sendRedirect("index.jsp");
           }
           
           
          }catch (SQLException se){
          
          se.printStackTrace();
          }
          catch (Exception e) {
          e.printStackTrace();
          }
          %>