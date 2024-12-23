<%@ page import="java.sql.*, java.util.*"%>
<%
	   String name = request.getParameter("uname");
   	String pwd1 = request.getParameter("pass1");
      String pwd2 = request.getParameter("pass2");
	
	if(pwd1.equals(pwd2))
   {    
      try 
      {
         Class.forName("oracle.jdbc.driver.OracleDriver");
         Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","ipc141");
         PreparedStatement pst = con.prepareStatement("update user41 set password=? where email=?");
         pst.setString(1,pwd1);
         pst.setString(2,name);
         if(pst.executeUpdate()>0) 
         {
            response.sendRedirect("loginy.html");
         }
         pst.close();
         con.close();
      } 
      catch(Exception e) 
      {
         out.print(e);

      }  
   }
   else
   {
      out.print("<h1>New password and confirm password are not same....</h1>");
   }
%>