<%@ page import="java.sql.*"%>
<%
   String unl = request.getParameter("email");
   
       
   try {
         Class.forName("oracle.jdbc.driver.OracleDriver");
         Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","ipc141");
         PreparedStatement pst = con.prepareStatement("select * from user41 where email=?");
       
         pst.setString(1,unl );
         
         ResultSet rs = pst.executeQuery();
       
         if(rs.next()) 
         {
            response.sendRedirect("meminfo.jsp");
         }
         else 
         {
             out.print("<br><br><br><center><h2>Please SIGN IN with YOGA STUDIO</h2></center><br><a href='loginy.html'>Login</a>");
         }
      } 
      catch(Exception e) 
      {
         out.print(e);
      }
%>