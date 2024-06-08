<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>OTP Confirmation</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #3498db;
        margin: 0;
        padding: 0;
    }
    .container {
        max-width: 400px;
        margin: 50px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
    }
    h2 {
        color: #3498db;
        margin-bottom: 20px;
    }
    p {
        color: #e74c3c;
        margin-bottom: 20px;
    }
    .sad-cow {
        max-width: 70%;
        height: auto;
        margin-bottom: 20px;
        opacity: 0; /* Initially hiding the image */
        transition: opacity 1s ease-in-out; /* Adding transition effect */
    }
    .enter-otp-btn {
        background-color: #3498db;
        color: #fff;
        border: none;
        border-radius: 4px;
        padding: 10px 20px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    .enter-otp-btn:hover {
        background-color: #2980b9;
    }
</style>
<script>
    window.onload = function() {
        setTimeout(function() {
            document.getElementById("sadCow").style.opacity = "1"; // Show the sad cow image
        }, 500); // Delay showing the image for 0.5 seconds
    };
</script>
</head>
<body>
    <div class="container">
        <p><strong>Oops! Wrong OTP. Please write the valid OTP.</strong></p>
        <img class="sad-cow" id="sadCow" src="https://i.pinimg.com/564x/b5/ca/8f/b5ca8ffaa052da9f2b54b94af9011592.jpg" alt="Sad Cow">
        <button class="enter-otp-btn" onclick="location.href='/enterOTP';">Enter Valid OTP</button>
    </div>
</body>
</html>
