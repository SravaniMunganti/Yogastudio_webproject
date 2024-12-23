<%@ page import="java.sql.*, java.lang.*"%>
<%
String uname = request.getParameter("name");
String mail = request.getParameter("email");
String pain = request.getParameter("pain");


try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe", "system", "ipc141");
	PreparedStatement pst = c.prepareStatement("insert into problem41 values(?,?,?)");
	pst.setString(1, uname);
	pst.setString(2, mail);
	pst.setString(3, pain);
	
	pst.executeUpdate();

	if(pst!=null)
	{
		out.print("<center><h3>Your Response saved Successfully</h3></center>");%>
		<% response.sendRedirect("solution.html");%>
<%
	}
	c.close();

}
catch(Exception e)
{
%>
	<%=e%>
<%
}
%>


