<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Shopkeeper Dashboard</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    body {
      background-image: url('https://cdn.wallpapersafari.com/15/27/DcXfAR.jpg');
      background-size: cover;
      background-position: center;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

   .container {
      
      border-radius: 15px;
      margin-bottom : 270px;
      box-shadow: 0 -10px 11px rgba(0, 0, 0, 0.3);
      overflow: hidden;
      width: 1000px;
      max-width: 90%;
      min-height: 200px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      position: relative;
      padding: 40px 20px;
      text-align: center;
    }
    .header {
      margin-bottom: 40px;
    }

    .header h1 {
      font-size: 36px;
      color: #182848;
      margin-bottom: 20px;
      text-shadow: 2px 2px 2px rgba(0, 0, 0, 0.2);
    }

    .header p {
      font-size: 20px;
      color: #4b6cb7;
      font-weight: bold;
    }

    .button-container {
      display: flex;
      justify-content: center;
      align-items: center;
      flex-wrap: wrap;
      gap: 7px;
    }

    .module-link {
      text-decoration: none;
    }

    .module-button {
      padding: 11px 22px;
      background-color: #318CE7;
      color: #fff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s ease;
      margin: 10px;
      font-size: 13px;
      font-weight: bold;
      text-transform: uppercase;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.3);
    }

    .module-button:hover {
      background-color: #ff7b00;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="header">
      <h1>Welcome, Shopkeeper!</h1>
      <p>Manage your shop with ease</p>
    </div>
    <div class="button-container">
      <a href="/ListAllData" class="module-link">
        <button class="module-button">View All Customers</button>
      </a>
      <a href="/ListAllContactUsData" class="module-link">
        <button class="module-button">View Contact Requests</button>
      </a>
      <a href="/Product_Insert" class="module-link">
        <button class="module-button">Insert New Product</button>
      </a>
      <a href="/showAllOrders" class="module-link">
        <button class="module-button">View All Orders</button>
      </a>
    </div>
  </div>
</body>
</html>
