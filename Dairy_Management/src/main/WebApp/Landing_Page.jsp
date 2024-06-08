<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Milk Factory Landing Page</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
body {
    margin: 0;
    padding: 0;
    background-color: #318CE7;
    font-family: Arial, sans-serif;
}

.navbar {
    background-color: white;
    color: #318CE7;
    padding: 1px 5px;
    text-align: right;
    font-family: Arial, sans-serif;
}

.navbar ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
}

.navbar li {
    display: inline-block;
    margin-right: 10px;
    font-family: Arial, sans-serif;
}

.navbar li a {
    color: #318CE7;
    text-decoration: none;
    font-size: 16px;
    font-family: Arial, sans-serif;
}

.navbar li a:hover {
    color: #ccc;
}

h1 {
    background-color: white;
    padding: 10px;
    margin: 0;
    text-align: center;
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

.myImage {
    width: 40%;
    height: 40%;
    padding-left: 340px;
}

.greeting-container {
    background-color: white;
    padding: 10px;
    margin-top: 20px;
    text-align: center;
    color: #318CE7;
}

.button-container {
    text-align: center;
    margin-top: 50px;
    margin-bottom: 20px;
}

.button {
    background-color: white;
    color: #318CE7;
    padding: 1px 2px;
    border: none;
    border-radius: 2px;
    cursor: pointer;
    font-size: 16px;
    text-decoration: none;
    margin-right: 5px;
    transition: background-color 0.3s;
    font-family: Arial, sans-serif;
}

.button:hover {
    background-color: #0C2340;
}

#mainimg-container {
    position: relative;
}

#mainimg {
    width: 100%;
    height: auto;
    display: block;
}

.image-text {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    font-size: 24px;
    color: black;
    text-align: center;
}

.heading-text {
    position: absolute;
    top: 20px;
    left: 50%;
    transform: translateX(-50%);
    font-size: 18px;
    color: white;
    text-align: center;
}

.subheading-text {
    position: absolute;
    bottom: 20px;
    left: 50%;
    transform: translateX(-50%);
    font-size: 18px;
    color: black;
    text-align: center;
}

.admin-login {
    margin-left: 1100px;
    margin-top: -50px;
}

.admin-login button {
    background-color: #318CE7;
    color: white;
    border: none;
    padding: 7px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.admin-login button:hover {
    background-color: black;
}
</style>
</head>
<body>
    <h1>
        <img src="https://www.shutterstock.com/image-vector/all-cows-recommend-thumb-cow-600nw-424838728.jpg" alt="Logo" class="logo"> 
        <span class="dairy-management">Dairy Management</span> 
        <img src="https://www.shutterstock.com/image-vector/all-cows-recommend-thumb-cow-600nw-424838728.jpg" alt="Logo" class="logo">

        <div class="admin-login">
            <a href="Admin_Login"><button type="button">Admin Login</button></a>
        </div>
    </h1>
    <div class="navbar">
        <ul>
            <li><a href="Services.jsp" style="font-family: Arial, sans-serif;">Services</a></li>
            <li><a href="Contact.jsp" style="font-family: Arial, sans-serif;">Contact</a></li>
            <li><a href="About_Us">About Us</a></li>
            <li><a href="Signin_Login_Page.jsp" style="font-family: Arial, sans-serif;"><i class="fas fa-shopping-cart"></i> Sign In</a></li>
        </ul>
    </div>

    <img src="https://www.thekutegroupdairy.com/wp-content/uploads/2022/11/kute-group-dairy-all-products.png" class="myImage" alt="my image">

    <div class="greeting-container">
        <p>Welcome to our Dairy Management website! Explore our range of dairy products and discover the quality and freshness we offer.</p>
        <p>If you'd like to purchase our products, please complete the login process.</p>
    </div>

    <div id="mainimg-container">
        <img alt="can" src="https://i.pinimg.com/originals/d6/93/b8/d693b84ca034b1a00e73ea54cdb6668f.jpg" id="mainimg">
        <div class="heading-text">
            <b>Our Milk:</b> Our milk is sourced from healthy, well-nourished cows raised on our farm. It is rich in essential nutrients such as calcium, protein, and vitamins, making it a wholesome choice for you and your family. We offer a variety of milk options, including cow's milk, goat's milk, and buffalo milk, each with its own unique flavor and nutritional profile. <br><br>
            <b>Health Benefits:</b> Regular consumption of our milk and dairy products can contribute to better bone health, muscle growth, and overall well-being. Packed with essential nutrients, our milk is a nutritious choice for people of all ages. <br><br>
        </div>
        <div class="subheading-text">
            <footer>
                <p>For inquiries or orders, contact us at: Email: kedarkapse@gamil.com</p>
                <p>Phone: +885-9028-7307</p>
            </footer>
        </div>
    </div>
</body>
</html>
