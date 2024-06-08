<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #318CE7;
            margin: 0;
            padding: 0;
            font-size: 14px; /* General font size */
        }

        .container {
            max-width: 700px; /* Reduced max-width for the container */
            margin: 20px auto;
            padding: 15px; /* Reduced padding */
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        h1, h2 {
            color: #333;
            text-align: center;
            margin: 10px 0; 
        }

        .product-summary {
            padding: 15px; 
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-bottom: 20px;
            background-color: white;
            display: flex; 
            justify-content: space-between; /* Space between items */
            align-items: center; /* Center items vertically */
            
        }

        .product-details {
            flex-grow: 1; /* Allow product details to grow */
            margin-right: 10px; /* Space between details and image */
        }

        .product-details h3 {
            margin-top: 0;
            font-size: 18px;
            color: #333;
        }

        .product-details p {
            margin: 8px 0; /* Reduced margin */
            font-size: 14px; /* Reduced font size */
            color: #666;
        }

        .product-details span {
            font-weight: bold;
            color: #333;
        }

        .product-image {
            flex-shrink: 0; 
            width: 170px; 
            height: 170px;
            object-fit: cover;
            border-radius: 10px;
        }

        form {
            margin-top: 15px; /* Reduced margin */
        }

        .form-group {
            margin-bottom: 15px; /* Reduced margin */
        }

        .form-group label {
            display: block;
            margin-bottom: 4px; /* Reduced margin */
            font-size: 12px; /* Reduced font size */
            color: #555;
        }

        .form-group input[type="text"],
        .form-group input[type="email"] {
            width: 100%;
            padding: 7px; /* Reduced padding */
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 12px; /* Reduced font size */
        }

        input[type="submit"] {
            padding: 10px 15px; /* Reduced padding */
            background-color: #318CE7;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
            box-sizing: border-box;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }

        .hidden-inputs {
            display: none;
        }
    </style>
</head>
<body>

<div class="container">
    <!-- Product Summary -->
    <div class="product-summary">
        <div class="product-details">
            <h3>Product Details</h3>
            <p><span>Products:</span> 
                <c:forEach var="cartItem" items="${cart.items}" varStatus="status">
                    ${cartItem.product.productName}${!status.last ? ', ' : ''}
                </c:forEach>
            </p>
            <p><span>Quantities:</span> 
                <c:forEach var="cartItem" items="${cart.items}" varStatus="status">
                    ${cartItem.quantity}${!status.last ? ', ' : ''}
                </c:forEach>
            </p>
            <p><span>Prices:</span> 
                <c:forEach var="cartItem" items="${cart.items}" varStatus="status">
                    ${cartItem.product.price}${!status.last ? ', ' : ''}
                </c:forEach>
            </p>
            <p><span>Total Price:</span> ${totalPrice}</p>
        </div>
        <img src="https://st2.depositphotos.com/7413918/10265/i/450/depositphotos_102655246-stock-photo-cute-cow-cartoon-character-with.jpg" alt="Product Image" class="product-image">
    </div>

    <!-- Form to capture user information -->
    <form action="${pageContext.request.contextPath}/checkout" method="post">
        <h2>Enter Your Information</h2>

        <!-- Hidden input fields for product details -->
        <div class="hidden-inputs">
            <input type="hidden" id="productNames" name="productNames" value="<c:forEach var='cartItem' items='${cart.items}' varStatus='status'>${cartItem.product.productName}${!status.last ? ', ' : ''}</c:forEach>">
            <input type="hidden" id="quantities" name="quantities" value="<c:forEach var='cartItem' items='${cart.items}' varStatus='status'>${cartItem.quantity}${!status.last ? ', ' : ''}</c:forEach>">
            <input type="hidden" id="prices" name="prices" value="<c:forEach var='cartItem' items='${cart.items}' varStatus='status'>${cartItem.product.price}${!status.last ? ', ' : ''}</c:forEach>">
            <input type="hidden" id="totalPrice" name="totalPrice" value="${totalPrice}">
        </div>

        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
        </div>

        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
        </div>

        <div class="form-group">
            <label for="address">Address:</label>
            <input type="text" id="address" name="address" required>
        </div>

        <div class="form-group">
            <label for="mobileNumber">Mobile Number:</label>
            <input type="text" id="mobileNumber" name="mobileNumber" required>
        </div>

        <input type="submit" value="Checkout">
    </form>
</div>

</body>
</html>
