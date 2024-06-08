<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Contact Us</title>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
<style>
    body {
        font-family: 'Roboto', Arial, sans-serif;
        background-color: #318CE7;
        margin: 0;
        padding: 0;
    }

    .container {
        max-width: 600px;
        margin: 50px auto;
        background-color: rgba(255, 255, 255, 0.9);
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
    }

    h1 {
        text-align: center;
        color: #333;
        margin-bottom: 30px;
        background-color: white;
        padding: 10px;
        margin: 0;
    }

    form {
        margin-top: 20px;
    }

    label {
        display: block;
        margin-bottom: 5px;
        color: #333;
    }

    input[type="text"],
    input[type="email"],
    textarea {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: none;
        border-radius: 5px;
        box-sizing: border-box;
        background-color: rgba(255, 255, 255, 0.8);
    }

    input[type="text"]:focus,
    input[type="email"]:focus,
    textarea:focus {
        outline: none;
        box-shadow: 0 0 5px #007bff;
    }

    input[type="submit"] {
        background-color: #007bff;
        color: #fff;
        border: none;
        padding: 12px 20px;
        cursor: pointer;
        border-radius: 5px;
        transition: background-color 0.3s;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }

    .navbar {
        background-color: white;
        color: #318CE7;
        padding: 1px 5px;
        text-align: right;
    }

    .navbar ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
    }

    .navbar li {
        display: inline-block;
        margin-right: 10px;
    }

    .navbar li a {
        color: #318CE7;
        text-decoration: none;
        font-size: 16px;
    }

    .navbar li a:hover {
        color: #ccc;
    }

    .logo {
        width: 130px;
        height: auto;
        margin-right: 20px;
    }

    .dairy-management {
        font-family: 'Arial Black', sans-serif;
        font-size: 46px;
        color: #0C2340;
        text-transform: uppercase;
        letter-spacing: 2px;
    }
</style>

</head>
<body>

<h1>
    <img src="https://www.shutterstock.com/image-vector/all-cows-recommend-thumb-cow-600nw-424838728.jpg" alt="Logo" class="logo">
    <span class="dairy-management">Dairy Management      </span>
     <img src="https://www.shutterstock.com/image-vector/all-cows-recommend-thumb-cow-600nw-424838728.jpg" alt="Logo" class="logo">
</h1>

<div class="navbar">
    <ul>
    	<li><a href="Landing_Page">Home</a></li>
        <li><a href="About_Us">About Us</a></li>
        <li><a href="Services">Services</a></li>
        <li><a href="Contact">Contact</a></li>
    </ul>
</div>

<div class="container">
    <h1>Contact Us</h1>
    <form action="Contact_Sucess" method="post">
        <label for="yourName">Your Name:</label>
        <input type="text" id="yourName" name="yourName" required pattern="[A-Za-z\s]{3,50}">
        <label for="yourEmail">Your Email:</label>
        <input type="email" id="yourEmail" name="yourEmail" required>
        <label for="message">Message:</label>
        <textarea id="message" name="message" rows="4" required></textarea>
        <input type="submit" value="Submit">
    </form>
</div>

</body>
</html>
