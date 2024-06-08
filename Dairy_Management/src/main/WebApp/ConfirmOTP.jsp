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
        color: #555;
        font-size: 18px;
        margin-bottom: 20px;
    }
    input[type="number"] {
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        width: 100%;
        transition: border-color 0.3s ease;
        margin-bottom: 20px;
    }
    input[type="number"]:focus {
        border-color: #3498db;
        outline: none;
    }
    input[type="submit"], .resend-otp {
        background-color: #3498db;
        color: #fff;
        border: none;
        border-radius: 4px;
        padding: 10px 20px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        margin-bottom: 20px;
    }
    input[type="submit"]:hover, .resend-otp:hover {
        background-color: #2980b9;
    }
    .happy-cow {
        display: none;
        max-width: 100%;
        height: auto;
        animation: cowAnimation 3s infinite alternate;
    }
    @keyframes cowAnimation {
        0% { transform: translateY(0); }
        100% { transform: translateY(-10px); }
    }
    .celebration-text {
        display: none;
        color: #2ecc71;
        font-size: 24px;
        font-weight: bold;
        margin-bottom: 20px;
    }
</style>
<script>
    function validateOTP() {
        var otp = document.getElementById("otp").value;
        if (otp.length !== 6) {
            alert("Please enter a valid OTP with exactly 6 characters.");
            return false; 
        }
        return true;
    }

    function showHappyCow() {
        var otp = document.getElementById("otp").value;
        if (otp.length === 6) {
            document.getElementById("happyCow").style.display = "block";
            document.getElementById("celebrationText").style.display = "block";
            document.getElementById("otpForm").style.display = "none";
            document.getElementById("otpHeading").style.display = "none"; // Hide the OTP heading
        }
    }
</script>
</head>
<body>
    <div class="container">
        <h2 id="otpHeading">Enter OTP</h2>
        <form action="/confirmOTP" method="post" onsubmit="return validateOTP()" id="otpForm">
            <label for="otp">Enter OTP:</label><br>
            <input type="number" id="otp" name="otp" minlength="6" maxlength="6" placeholder="Enter OTP" required><br>
            <input type="submit" value="Submit" onclick="showHappyCow()">
        </form>
        <img class="happy-cow" id="happyCow" src="https://media.istockphoto.com/id/1133708552/vector/cow-mascot-symbol-vector-of-cow-character-cartoon-style.jpg?s=612x612&w=0&k=20&c=rUmTK7URUIs7bjgI2dx91RfR8wcGfYTWW7_B7sWY2yM=" alt="Happy Cow">
        <p class="celebration-text" id="celebrationText">OTP Confirmed Successfully!</p>
    </div>
</body>
</html>
