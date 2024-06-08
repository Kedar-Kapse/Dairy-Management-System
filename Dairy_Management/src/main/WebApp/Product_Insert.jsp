<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Product Information</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f6f6f6;
        margin: 0;
        padding: 0;
    }
    
    .container {
        width: 50%;
        margin: 50px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 12px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    
    h2 {
        text-align: center;
        margin-bottom: 30px;
        color: #318CE7;
    }
    
    form {
        width: 80%;
        margin: 0 auto;
    }
    
    label {
        font-weight: bold;
        color: #318CE7;
    }
    
    input[type="text"],
    input[type="number"] {
        width: 100%;
        padding: 15px;
        margin-bottom: 30px;
        border: 2px solid #ccc;
        border-radius: 10px;
        box-sizing: border-box;
        font-size: 16px;
        transition: border-color 0.3s ease;
    }
    
    input[type="submit"] {
        background-color: #318CE7;
        color: white;
        padding: 15px 20px;
        border: none;
        border-radius: 10px;
        cursor: pointer;
        font-size: 18px;
        width: 100%;
        transition: background-color 0.3s ease;
    }
    
    input[type="submit"]:hover {
        background-color: #45a049;
    }
    
    /* Styling for the input boxes when focused */
    input[type="text"]:focus,
    input[type="number"]:focus {
        border-color: #318CE7;
        outline: none;
    }
</style>
</head>
<body>

<div class="container">
    <h2>Insert Product Information</h2>

    <form action="/InsertSuccess" method="post">
    
    <label for="productName">Product Name:</label><br>
    <input type="text" id="productName" name="productName" placeholder="Enter product name" required><br>
    
    <label for="price">Price:</label><br>
    <input type="number" id="price" name="price" step="0.01" placeholder="Enter price" required><br>
    
    <label for="imgurl">Image URL:</label><br>
    <input type="text" id="imgurl" name="imgurl" placeholder="Enter image URL" required><br>
    
    <input type="submit" value="Submit">
</form>
</div>

</body>
</html>
