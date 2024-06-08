<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sliding Form</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	background: #f1f0f1;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	font-family: "Montserrat", sans-serif;
	height: 100vh;
	margin: -20px 0 50px;
}

.container {
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px
		rgba(0, 0, 0, 0.22);
	position: relative;
	overflow: hidden;
	width: 768px;
	max-width: 100%;
	min-height: 480px;
}

form {
	background-color: #ffffff;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0 50px;
	height: 100%;
	text-align: center;
}

.form-container {
	position: absolute;
	top: 0;
	height: 100%;
	transition: all 0.6s ease-in-out;
}

.sign-in-container {
	left: 0;
	width: 50%;
	z-index: 2;
}

.container.right-panel-active .sign-in-container {
	transform: translateX(100%);
}

.sign-up-container {
	left: 0;
	width: 50%;
	opacity: 0;
	z-index: 1;
}

.container.right-panel-active .sign-up-container {
	transform: translateX(100%);
	opacity: 1;
	z-index: 5;
	animation: show 0.6s;
}

p {
	padding: 20px;
}

button {
	border-radius: 20px;
	border: 1px solid #318CE7;
	background-color: #318CE7;
	color: #ffffff;
	font-size: 12px;
	font-weight: bold;
	padding: 12px 45px;
	letter-spacing: 1px;
	text-transform: uppercase;
	transition: transform 80ms ease-in;
	margin-top: 10px;
	cursor: pointer;
}

button:active {
	transform: scale(0.95);
}

button:focus {
	outline: none;
}

button.ghost {
	background-color: #318CE7;
	border-color: #ffffff;
}

/* Style Input Fields */
input {
	background-color: #eee;
	border: none;
	padding: 12px 15px;
	margin: 8px 0;
	width: 100%;
}

/* Set motion Keyframes */
@keyframes show {
	0%, 49.99% {
		opacity: 0;
		z-index: 1;
	}
	50%, 100% {
		opacity: 1;
		z-index: 5;
	}
}

.overlay-container {
	position: absolute;
	top: 0;
	left: 50%;
	width: 50%;
	height: 100%;
	overflow: hidden;
	transition: transform 0.6s ease-in-out;
	z-index: 100;
}

.container.right-panel-active .overlay-container {
	transform: translateX(-100%);
}

.overlay {
	background: #c31432;
	background: -webkit-linear-gradient(to right, #d22c64, #c31432);
	background: #318CE7;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: 0 0;
	color: #ffffff;
	position: relative;
	left: -100%;
	height: 100%;
	width: 200%;
	transform: translateX(0);
	transition: transform 0.6s ease-in-out;
}

.container.right-panel-active .overlay {
	transform: translateX(50%);
}

.overlay-panel {
	position: absolute;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0 40px;
	text-align: center;
	top: 0;
	height: 100%;
	width: 50%;
	transform: translateX(0);
	transition: transform 0.6s ease-in-out;
}

.overlay-left {
	transform: translateX(-20%);
}

.container.right-panel-active .overlay-left {
	transform: translateX(0);
}

.overlay-right {
	right: 0;
	transform: translateX(0);
}

.container.right-panel-active .overlay-right {
	transform: translateX(20%);
}

.social-container {
	margin: 20px 0;
}

.social-container a {
	border: 1px solid #dddddd;
	border-radius: 50%;
	display: inline-flex;
	justify-content: center;
	align-items: center;
	margin: 0 5px;
	height: 40px;
	width: 40px;
}

a {
	color: #333;
	font-size: 14px;
	text-decoration: none;
	margin: 15px 0;
}

.overlay-panel img {
	width: 140px;
	height: 140px;
	margin-bottom: 10px;
}
</style>

</head>
<body>

	<div class="container" id="container">

		<!-- Sign Up Form -->
		<div class="form-container sign-up-container">
			<form action="/SignUpSuccess" method="post">
				<h1 style="color: #318CE7">Create Account</h1>
				<input type="text" placeholder="First Name" name="firstName"
					required /> <input type="text" placeholder="Last Name"
					name="lastName" required /> <input type="email"
					placeholder="Email" name="email" required /> <input
					type="password" placeholder="Password" name="password" required />
				<button type="submit">Sign Up</button>
			</form>
		</div>

		<!-- Sign in Form -->
		<div class="form-container sign-in-container">
			<form action="LoginSucess" method="post">
				<h1 style="color: #318CE7">Login</h1>

				<input type="email" placeholder="Email" name="email" required /> <input
					type="password" placeholder="Password" name="password" required />

				<button type="submit">Sign In</button>
			</form>
		</div>

		<div class="overlay-container">
			<div class="overlay">
				<div class="overlay-panel overlay-left">
					<img src="https://img.pikbest.com/origin/06/45/36/652pIkbEsTIuF.png!sw800" alt="Left Image">
					<h1>Welcome Back!</h1>
					<p>Stay connected with us! Please log in using your personal information.</p>
					<button class="ghost" id="signIn">Sign In</button>
				</div>
				<div class="overlay-panel overlay-right">
					<img src="https://static.vecteezy.com/system/resources/previews/027/241/731/original/cute-baby-cartoon-cow-big-black-eye-happy-and-laughing-front-facing-camera-view-farm-animal-watercolor-clipart-ai-generated-png.png" alt="Right Image">
					<h1>Hello, Explorer!</h1>
					<p>Discover our premium milk products. Register now to explore the best in dairy.</p>
					<button class="ghost" id="signUp">Sign Up</button>
				</div>
			</div>
		</div>
	</div>

	<script>
    document.addEventListener("DOMContentLoaded", function() {
        const signUpButton = document.getElementById("signUp");
        const signInButton = document.getElementById("signIn");
        const container = document.getElementById("container");

        signUpButton.addEventListener("click", () => {
            container.classList.add("right-panel-active");
        });

        signInButton.addEventListener("click", () => {
            container.classList.remove("right-panel-active");
        });
    });
</script>


</body>
</html>
