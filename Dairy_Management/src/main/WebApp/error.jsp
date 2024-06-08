<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Oops! Something Went Wrong</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f6f6f6;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .container {
        text-align: center;
        background-color: #fff;
        border-radius: 8px;
        padding: 40px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    h1 {
        color: #333;
        font-size: 36px;
        margin-bottom: 20px;
    }

    p {
        color: #555;
        font-size: 18px;
        margin-bottom: 40px;
    }

    .btn {
        background-color: #4CAF50;
        color: white;
        padding: 15px 30px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 18px;
        text-decoration: none;
        transition: background-color 0.3s ease;
    }

    .btn:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>Oops! Something Went Wrong</h1>
        <p>We're sorry, but it seems that something went wrong. Please try again later.</p>
        <a href="#" class="btn">Go Back</a>
    </div>
</body>
</html>
