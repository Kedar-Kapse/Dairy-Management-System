<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Edit Page</title>

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: Arial, sans-serif;
      background-color : #318CE7; 
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }

    .container {
      background-color: #ffffff;
      border-radius: 10px;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
      overflow: hidden;
      width: 600px;
      max-width: 90%;
    }

    form {
      padding: 30px;
    }

    h1, h2 {
      text-align: center;
      margin-bottom: 20px;
      color: #1877f2; /* Facebook blue */
    }

    label {
      display: block;
      margin-bottom: 10px;
      color: #555; /* Changed label color */
    }

    input[type="text"],
    input[type="email"],
    input[type="password"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 5px;
      box-sizing: border-box;
    }

    input[readonly] {
      background-color: #f2f2f2; /* Light gray for readonly fields */
    }

    input.blurred {
      filter: blur(1px); /* Apply blur effect */
    }

    button[type="submit"] {
      width: 100%;
      padding: 12px;
      background-color: #1877f2; /* Facebook blue */
      border: none;
      border-radius: 5px;
      color: #fff;
      font-size: 16px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    button[type="submit"]:hover {
      background-color: #3b5998; /* Darker Facebook blue on hover */
    }

  </style>
</head>
<body>

<div class="container">
  <h1>EDIT PAGE</h1>
  <h2>We Are Updating The Details Of ${custo.firstName}</h2>
  <form action="/Update/${custo.id}" method="post">
    <label for="firstName">First Name:</label>
    <input type="text" id="firstName" name="firstName" value="${custo.firstName}" required>

    <label for="lastName">Last Name:</label>
    <input type="text" id="lastName" name="lastName" value="${custo.lastName}" required>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" value="${custo.email}" readonly class="blurred">

    <label for="password">Password:</label>
    <input type="password" id="password" name="password" value="${custo.password}" readonly class="blurred">

    <button type="submit">Update</button>
  </form>
</div>

</body>
</html>
