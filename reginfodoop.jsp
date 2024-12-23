<html>
<head>
<style>
*
{
	color : white;
}

    .click-button {
      display: inline-block;
      padding: 10px 20px;
      background-color: #a3bdc2;
      color: #fff;
      text-decoration: none;
      border-radius: 4px;
      transition: background-color 0.3s;
    }

    .click-button:hover {
      background-color: #45a049;
    }
 
</style>
<script>
    function redirectToTarget() {
      window.location.href = "solution.html";
    }
  </script>
</head>

<body style="background-color:#6b4e74;font-size:20px;">
		<%
        
        String uname = request.getParameter("mail");
        String name = request.getParameter("fname");
		String prob = request.getParameter("lan");
		String prob = request.getParameter("age");
		

        %>

        <center><p>Here is the info you provided:</p></center>
		<center>
        <table cellspacing="10" cellpadding="10" border="2">
            <tr>
                <td align="right">User name(email) : </td>
                <td><%= uname %></td>
            </tr>

            <tr>
                <td align="right">Name:</td>
                <td><%= name %></td>
            </tr>

			<tr>
                <td align="right">Language Known :  </td>
                <td><%= lan %></td>
            </tr>

			<tr>
                <td align="right">Age : </td>
                <td><%= age %></td>
            </tr>

			
	
        </table>
		

	<div>
    
    <p>Get in touch with Us..</p>
    <button onclick="redirectToTarget()" class="click-button">Ready to Login</button>
  </div>

  </center>


</body>
</html>