<%@ page import="java.sql.*"%>
<%
   String unl = request.getParameter("user");
   String pwdl = request.getParameter("pass");
       
   try {
         Class.forName("oracle.jdbc.driver.OracleDriver");
         Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","ipc141");
         PreparedStatement pst = con.prepareStatement("select * from user41 where email=? and password=?");
       
         pst.setString(1,unl );
         pst.setString(2, pwdl);
       
         ResultSet rs = pst.executeQuery();
       
         if(rs.next()) 
         {
            response.sendRedirect("menuy.html");
         }
         else 
         {
             out.print("<br><br><br><center><h2>Incorrect email or password</h2></center><br><a href='loginy.html'>Login</a>");
         }
      } 
      catch(Exception e) 
      {
         out.print(e);
      }
%>
