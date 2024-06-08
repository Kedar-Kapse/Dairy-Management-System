<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url("https://cdn4.vectorstock.com/i/1000x1000/47/68/milk-splash-on-blue-background-vector-9624768.jpg");
            background-position: center;
            background-size: cover;
            text-align: center;
            height: 90vh;
            width: 100vw;
            overflow: hidden;
        }
        h1 {
            margin-top: 50px;
            color: #008000;
        }
        .logo {
            width: 150px;
            margin-top: 60px;
        }
        .movable-png {
            position: absolute;
            top: 0;
            left: 0;
        }
        .greeting {
            margin-top: 20px;
            font-size: 32px;
            color: #333;
            font-family: 'Pacifico', cursive; /* Custom font */
            position: absolute;
            animation: moveText 20s infinite;
        }
        
        @keyframes moveText {
            0% { left: -100%; }
            100% { left: 100%; }
        }

   	 	

        a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }
        
        .center_text{
            margin-top: 10px;
            font-size: 32px;
            color: #333;
            font-family: 'Pacifico', cursive; /* Custom font */
        	color: #fff;
        }
        .logo{
        	border-radius: 50%;
        	
        }
    </style>
     <script>
        setTimeout(function() {
            window.location.href = "Landing_Page.jsp";
        }, 5000); 
    </script>
    <!-- Link to Google Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap">
</head>
<body>
    
    
    <img src="https://img.freepik.com/premium-vector/vector-cute-cow-mascot-kawaii_871993-125.jpg?size=338&ext=jpg&ga=GA1.1.523418798.1711497600&semt=ais" alt="Success" class="logo">

    <p class = 'center_text'>Thank you purchasing our product. Enjoy our services!</p>
    
     
    
</body>
</html>
