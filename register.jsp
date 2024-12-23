<%@ page import="java.sql.*, java.lang.*"%>
<%
String fname = request.getParameter("fname");
String age = request.getParameter("age");

String lan = request.getParameter("fav_language");
String mail = request.getParameter("mail");
String pwd = request.getParameter("pwd");


try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe", "system", "ipc141");
	PreparedStatement pst = c.prepareStatement("insert into user41 values(?,?,?,?,?)");
	pst.setString(1, fname);
	pst.setString(2, age);
	pst.setString(3, lan);
	pst.setString(4, mail);
	pst.setString(5, pwd);

	pst.executeUpdate();

	if(pst!=null)
	{
		
		response.sendRedirect("reginfo.jsp");
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
