<!DOCTYPE html>
<html>
<head>
  <title>Order Details</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 30px 30px;
      padding: 20px;
font-size : 20px;
border : 2px solid red;
padding : 5px 5px;
    }
    
    h1 {
      text-align: center;
    }
    
    .order-details {
      max-width: 500px;
      margin: 0 auto;
      border: 5px solid black;
      border-radius: 4px;
      padding: 20px;
    }
    
    .order-details label {
      display: inline-block;
      width: 150px;
      font-weight: bold;
    }
    
    .order-details p {
      margin: 0;
    }
    
    .order-details .title {
      font-size: 18px;
      font-weight: bold;
      margin-bottom: 10px;
	text-decoration : underline;
    }

    

/* CSS */
.button-8 {
  background-color: #e1ecf4;
  border-radius: 3px;
  border: 1px solid #7aa7c7;
  box-shadow: rgba(255, 255, 255, .7) 0 1px 0 0 inset;
  box-sizing: border-box;
  color: #39739d;
  cursor: pointer;
  display: inline-block;
  font-family: -apple-system,system-ui,"Segoe UI","Liberation Sans",sans-serif;
  font-size: 13px;
  font-weight: 400;
  line-height: 1.15385;
  margin: 0;
  outline: none;
  padding: 8px .8em;
  position: relative;
  text-align: center;
  text-decoration: none;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  vertical-align: baseline;
  white-space: nowrap;
}

.button-8:hover,
.button-8:focus {
  background-color: #b3d3ea;
  color: #2c5777;
}

.button-8:focus {
  box-shadow: 0 0 0 4px rgba(0, 149, 255, .15);
}

.button-8:active {
  background-color: #a0c7e4;
  box-shadow: none;
  color: #2c5777;
}
  </style>
</head>
<body>

<%@ page import="java.sql.*, java.lang.*"%>
<%
String cnum = request.getParameter("cardNumber");
String cvv = request.getParameter("cvv");

String cname = request.getParameter("cardholderName");
String mail = request.getParameter("email");
String pro = request.getParameter("product");
String qua = request.getParameter("quantity");




try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe", "system", "ipc141");
	PreparedStatement pst = c.prepareStatement("insert into order41 values(?,?,?,?,?, ?)");
	pst.setString(1, cnum);
	pst.setString(2, cvv);
	pst.setString(3,  cname);
	pst.setString(4, mail);
	pst.setString(5, pro);
	pst.setString(6, qua);

	pst.executeUpdate();

	c.close();
}
catch(Exception e)
{
%>
	<%=e%>
<%
}
%>




 
  <h1>Order Details</h1>
  <div class="order-details">
    <p class="title">ORDER INFORMATION</p>
<br>
    <label for="order-id">Order ID:</label>
    <p id="order-id">123456789</p>
    
    <label for="product">Product:</label>
    <p id="product"><%= pro%></p>
    
    <label for="quantity">Quantity:</label>
    <p id="quantity"><%= qua%></p>
    <br>
    <p class="title">SHIPPING INFORMATION</p>
<br>

    <label for="name">Name:</label>
    <p id="name"><%= cname%></p>
    
    <label for="address">Address:</label>
    <p id="address">123 Main Street, City, State, ZIP</p>
    
    <label for="email">Email:</label>
    <p id="email"><%= mail %></p>
  </div>






<div class="dialog-container">
        <div class="dialog-box">
            <h2>Order Placed Successfully</h2>
            <p>BACK TO PAGE</p>
            <!-- HTML !-->
<button class="button-8" onclick="closeDialog()" role="button">BACK</button>
            
        </div>
    </div>

    <script>
        function closeDialog() {
            window.location.href = "shopy.html"; // Redirect to another page or close the dialog
        }
    </script>

</body>
</html>
