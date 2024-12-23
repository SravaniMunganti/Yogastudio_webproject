<html>
<head>
<style>
*
{
	color : black;
	font-size : 25px;
	
}

    .click-button {
      display: inline-block;
      padding: 10px 20px;
      background-color:white;
      color: black;
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

<body style="background-color : #F0F8FF;font-size:20px;border : 5px solid black;
	margin : 10px;">
		<%
        
        String email = request.getParameter("email");
        String name = request.getParameter("name");
		String prob = request.getParameter("pain");
        %>
<br><br>
        <center><p>Here is the info you provided:</p></center>
		<center>
        <table cellspacing="10" cellpadding="10" border="2">
            <tr>
                <td align="right">Email:</td>
                <td><%= email %></td>
            </tr>

            <tr>
                <td align="right">Name:</td>
                <td><%= name %></td>
            </tr>

			<tr>
                <td align="right">Problem:</td>
                <td><%= prob %></td>
            </tr>

			
	
        </table>
		

	<div>
    
    <p>Click the button below to view the best YOGA ASANA for your problem.</p>
    <button onclick="redirectToTarget()" class="click-button">Click Here..</button>
  </div>

  </center>


</body>
</html>