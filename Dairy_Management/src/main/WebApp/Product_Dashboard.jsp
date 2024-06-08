<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Dashboard</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #318CE7;
            color: #333;
            margin: -10px;
            padding: 20px;
        }

        .container {
            position: relative;
            margin: 10px auto;
            width: 95%;
            max-width: 1200px;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            text-align: center;
        }

        h1 {
            font-size: 2rem;
            margin-bottom: 20px;
            display: flex;
            justify-content: flex-start;
            align-items: center;
            color: #007bff;
        }

        .dairy {
            font-family: 'FlipFont', sans-serif;
            color: red;
            margin-right: 10px;
        }

        .management {
            font-family: 'FlipFont', sans-serif;
            color: blue;
        }

        .cart-icon-container {
            position: absolute;
            top: 10px;
            right: 20px;
            cursor: pointer;
            display: flex;
            align-items: center;
        }


        .cart-button {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s;
            position: absolute;
            top: 20px;
            right: 20px;
        }

        .cart-button:hover {
            background-color: #318CE7;
        }

        .shake {
            animation: shake 0.5s;
        }

        @keyframes shake {
            0%, 100% { transform: translateX(0); }
            25% { transform: translateX(-5px); }
            50% { transform: translateX(5px); }
            75% { transform: translateX(-5px); }
        }

        .product-list {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
            gap: 10px;
        }

        .product-item {
            background-color: #fff;
            border: 3px solid #ddd;
            border-radius: 20px;
            padding: 5px;
            text-align: center;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .product-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        .product-item img {
            max-width: 80%;
            height: 150px;
            object-fit: cover;
            border-radius: 10px;
            margin-top: 10px;
            margin-bottom: 10px;
        }

        .product-item label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .product-item p {
            font-size: 1rem;
            color: #666;
            margin: 10px 0;
        }

        .product-item input[type="checkbox"] {
            margin-bottom: 10px;
            transform: scale(1.2);
            cursor: pointer;
        }

        .product-item input[type="number"] {
            width: 20px;
            padding: 3px;
            margin-top: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            text-align: center;
        }
    </style>
    <script>
        function validateForm() {
            var checkboxes = document.querySelectorAll('input[name="selectedProducts"]:checked');
            if (checkboxes.length === 0) {
                alert("Please select at least one product.");
                return false; // Prevent form submission
            }
            return true; // Allow form submission
        }
    </script>
</head>
<body>

<div class="container">
    <h1>
        <span class="dairy">Dairy</span><br>
        <span class="management">Management&nbsp;</span>System
    </h1>

    <!-- Product list -->
    <form id="productForm" action="addMultipleToCart" method="post" onsubmit="return validateForm()">
        <button type="submit" class="cart-button">Cart</button>
        <div class="product-list">
            <!-- Loop through products -->
            <c:forEach var="product" items="${products}">
                <div class="product-item">
                    <!-- Checkbox for selecting the product -->
                    <input type="checkbox" id="product_${product.id}" name="selectedProducts" value="${product.id}">
                    <label for="product_${product.id}">${product.productName}</label>
                    <img src="${product.imgurl}" alt="Product Image">
                    <div>
                        <p>Price: ${product.price}</p>
                    </div>
                    <!-- Quantity input field -->
                    <label for="quantity_${product.id}">Quantity:</label>
                    <input type="number" id="quantity_${product.id}" name="quantities" value="1" min="1">
                </div>
            </c:forEach>
        </div>
    </form>
</div>

</body>
</html>
