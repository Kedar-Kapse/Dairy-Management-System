	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<!DOCTYPE html>
	<html>
	<head>
	    <meta charset="UTF-8">
	    <title>User Details</title>
	    <style>
	        body {
	            font-family: Arial, sans-serif;
	            margin: 0;
	            padding: 0;
	            background-color: #f8f9fa;
	        }
	
	        h1 {
	            text-align: center;
	            margin-top: 10px;
	           	padding : 25px;
	            background-color: #007bff;
	            color: white;
	        }
	
	        table {
	            width: 100%;
	            border-collapse: collapse;
	            margin-top: 1px;
	            border-radius: 5px;
	            overflow: hidden;
	            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	        }
	
	        th, td {
	            padding: 12px;
	            text-align: center;
	            border-bottom: 1px solid #dee2e6;
	            font-size: 16px;
	        }
	
	        th {
	            background-color: #007bff;
	            color: #fff;
	            font-weight: bold;
	            text-align: center;
	        }
	
	        tbody tr:nth-child(even) {
	            background-color: #f8f9fa;
	        }
	
	        .action-buttons {
	            display: flex;
	            justify-content: center;
	            gap: 10px;
	        }
	
	        .action-buttons button {
	            padding: 8px 16px;
	            border: none;
	            background-color: #007bff;
	            color: #fff;
	            cursor: pointer;
	            transition: background-color 0.3s;
	            border-radius: 5px;
	            font-size: 14px;
	        }
	
	        .action-buttons button:hover {
	            background-color: #0056b3;
	        }
	
	        .delete-button {
	            background-color: #dc3545; /* Delete button color */
	        }
	
	        .update-button {
	            background-color: #28a745; /* Update button color */
	        }
	
	        .return-button {
	            position: absolute;
	            top: 33px;
	            right: 20px;
	            padding: 10px 20px;
	            background-color: white;
	            color: #007bff;
	            border: none;
	            border-radius: 5px;
	            cursor: pointer;
	            font-size: 16px;
	            transition: background-color 0.3s;
	            text-decoration: none; /* Remove default underline */
	            display: flex; /* Align symbol and text horizontally */
	            align-items: center; /* Center symbol and text vertically */
	        }
	
	        .return-button:hover {
	            background-color: #0056b3;
	        }
	
	        .return-button .return-symbol {
	            margin-right: 5px; /* Add spacing between symbol and text */
	        }
	
	        a.update:hover {
	            background-color: #218838;
	        }
	    
	        a.return {
	            text-decoration: none;
	            padding: 10px 10px;
	            background-color: #007BFF; 
	            color: white;
	            border-radius: 5px;
	            display: inline-block;
	            margin-top: 0px;     
	        }
	
	        a.return:hover {
	            background-color: #0056b3;
	        }
	    </style>
	</head>
	<body>
	    <a class="return-button" href="Admin_Dashboard">
	        <span class="return-symbol">&#8617;</span> Return
	    </a>
	    <h1>PEOPLE CONTACTING US</h1>
	    <table>
	        <thead>
	            <tr>
	                <th>User ID</th>
	                <th>Name</th>
	                <th>Email</th>
	                <th>Message</th>
	                <th>Contact</th>
	            </tr>
	        </thead>
	        <tbody>
	            <c:forEach var="con" items="${ContactUSList}">
	                <tr>
	                    <td>${con.id}</td>
	                    <td>${con.yourName}</td>
	                    <td>${con.yourEmail}</td>
	                    <td>${con.message}</td>
	                    <td class="action-buttons">
	                        <form action="/contact/${con.id}" method="post">
	                            <button type="submit" class="contact-button">Contact</button>
	                        </form>	
	                    </td>
	                </tr>
	            </c:forEach>
	        </tbody>
	    </table>
	</body>
	</html>
