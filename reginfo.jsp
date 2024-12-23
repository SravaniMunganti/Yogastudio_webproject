<!DOCTYPE html>
<html>
<head>
    <title>Registration Success</title>
<style>
.dialog-container {
    background-color:#F0F8FF;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
}

.dialog-box {
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    text-align: center;
}

.dialog-box h2 {
    margin-top: 0;
}

.dialog-box p {
    margin-bottom: 20px;
}

.dialog-box button {
    padding: 10px 20px;
    background-color: #4CAF50;
    color: #fff;
    border: none;
    border-radius: 3px;
    cursor: pointer;
}

.dialog-box button:hover {
    background-color: #45a049;
}

</style>
</head>
<body>
    <div class="dialog-container">
        <div class="dialog-box">
            <h2>Registration Successful</h2>
            <p>Thank you for registering!</p>
            <button onclick="closeDialog()">OK</button>
        </div>
    </div>

    <script>
        function closeDialog() {
            window.location.href = "loginy.html"; // Redirect to another page or close the dialog
        }
    </script>
</body>
</html>
