<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact User</title>
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
    color: #007bff;
}

form {
    max-width: 600px;
    margin: 20px auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
    display: block;
    margin-bottom: 5px;
    color: #333;
}

input[type="text"], textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}

textarea {
    resize: vertical;
    min-height: 100px;
}

button[type="submit"] {
    width: 100%;
    padding: 12px;
    background-color: #007bff;
    border: none;
    border-radius: 5px;
    color: #fff;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button[type="submit"]:hover {
    background-color: #0056b3;
}

/* Styled alert box */
.alert {
    padding: 15px;
    background-color: #f44336;
    color: white;
    border-radius: 5px;
    text-align: center;
}
</style>
</head>
<body>
	<p id="sucess"></p>
    <h1>Contact User</h1>
    <form action="/send_email" method="post">
    <input type="hidden" name="id" value="${contact.id}">
    <label for="email">Recipient Email:</label><br>
    <input type="text" id="email" name="email" value="${contact.yourEmail}" readonly><br>
    <label for="subject">Recipient Message:</label><br>
    <textarea id="message" name="message" rows="1" required>${contact.message}</textarea><br>
    <label for="message">Write Your Replay:</label><br>
    <input type="text" id="subject" name="subject" required><br>
    <button type="submit" onclick="showMessage()">Send Email</button>
</form>
<script>

	function showMessage()
	{
		return alert("Response delivered successfully.");
	}
</script>
</body>
</html>
