<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Show All Orders</title>
    <style>
       body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f8f9fa;
}

h1 {
    text-align: center;
    margin-top: 20px;
    padding: 20px;
    background-color: #007bff;
    color: white;
}

table {
    width: 90%;
    margin: 20px auto;
    border-collapse: collapse;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    background-color: #fff;
    border-radius: 8px;
}

th, td {
    padding: 12px;
    text-align: center;
    border-bottom: 1px solid #dee2e6;
}

th {
    background-color: #007bff;
    color: #fff;
    font-weight: bold;
}

tbody tr:nth-child(even) {
    background-color: #f8f9fa;
}

/* CSS class for blur effect */
.blur {
    filter: blur(3px);
}

button {
    background-color: #28a745;
    color: white;
    border: none;
    padding: 8px 16px;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: #218838;
}

    </style>
</head>
<body>
    <h1>Show All Orders</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Email</th>
                <th>Name</th>
                <th>Total Price</th>
                <th>Address</th>
                <th>Product Names</th>
                <th>Mobile Number</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="order" items="${cartInfoList}">
                <tr id="order_${order.id}">
                    <td>${order.id}</td>
                    <td>${order.email}</td>
                    <td>${order.name}</td>
                    <td>${order.totalPrice}</td>
                    <td>${order.address}</td>
                    <td>${order.productNames}</td>
                    <td>${order.mobileNumber}</td>
                    <td>
                        <form action="sendReceiptEmail" method="post">
                            <input type="hidden" name="orderId" value="${order.id}" />
                            <input type="hidden" name="email" value="${order.email}" />
                            <input type="hidden" name="name" value="${order.name}" />
                            <input type="hidden" name="totalPrice" value="${order.totalPrice}" />
                            <input type="hidden" name="address" value="${order.address}" />
                            <input type="hidden" name="productNames" value="${order.productNames}" />
                            <input type="hidden" name="mobileNumber" value="${order.mobileNumber}" />
                            <button type="submit" onclick="blurRow(${order.id})">Sell</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    
    <script>
        function blurRow(orderId, button) {
            var row = document.getElementById('order_' + orderId);
            row.classList.add('blur');
            button.disabled = true; // Disable the button to prevent multiple clicks
        }
    </script>
</body>
</html>
