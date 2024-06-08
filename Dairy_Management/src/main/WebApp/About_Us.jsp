<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #318CE7;
	margin: 0;
	padding: 0;
}

.container {
	max-width: 800px;
	margin: 50px auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1, h2 {
	text-align: center;
	color: #007bff;
}

p {
	font-size: 16px;
	line-height: 1.6;
}

.message {
	padding: 15px;
	background-color: #f0f0f0;
	border-radius: 5px;
	margin-bottom: 20px;
}

.message p {
	margin: 5px 0;
}

.owner-info {
	margin-bottom: 20px;
}

.owner-info p {
	margin: 5px 0;
}

.owner-info p strong {
	margin-right: 5px;
}

.owner-info p a {
	color: #007bff;
	text-decoration: none;
}

.team-member {
	border: 1px solid #ccc;
	border-radius: 5px;
	padding: 15px;
	margin-bottom: 20px;
	overflow: hidden;
}

.team-member img {
	width: 150px;
	height: 150px;
	object-fit: cover;
	border-radius: 5px;
	margin-right: 10px;
	float: left;
}

.team-member-info {
	overflow: hidden;
}

.team-button {
	display: block;
	width: 200px;
	margin: 20px auto;
	padding: 10px;
	background-color: #007bff; /* Blue color */
	color: #fff;
	text-align: center;
	text-decoration: none;
	border-radius: 5px;
	transition: background-color 0.3s;
}

.team-button:hover {
	background-color: #0056b3; /* Darker shade of blue on hover */
}

.home-button:hover, .contacts-button:hover {
	background-color: #0056b3; /* Darker shade of blue on hover */
}

.navbar {
	background-color: white;
	color: #318CE7;
	padding: 1px 5px;
	text-align: right;
}

.navbar ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
}

.navbar li {
	display: inline-block;
	margin-right: 10px;
}

.navbar li a {
	color: #318CE7;
	text-decoration: none;
	font-size: 16px;
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

.home-button, .contacts-button {
	display: inline-block;
	width: 150px;
	margin: 0 10px; 
	padding: 10px;
	background-color: #007bff; 
	color: #fff;
	text-align: center;
	text-decoration: none;
	border-radius: 5px;
	transition: background-color 0.3s;
}

.dairy-management {
	font-family: 'Arial Black', sans-serif;
	font-size: 46px;
	color: #0C2340;
	text-transform: uppercase;
	letter-spacing: 2px;
}
</style>
</head>
<body>
	<h1>
		<img
			src="https://www.shutterstock.com/image-vector/all-cows-recommend-thumb-cow-600nw-424838728.jpg"
			alt="Logo" class="logo"> <span class="dairy-management">Dairy
			Management </span> <img
			src="https://www.shutterstock.com/image-vector/all-cows-recommend-thumb-cow-600nw-424838728.jpg"
			alt="Logo" class="logo">
	</h1>
	<div class="navbar">
		<ul>
			<li><a href="Landing_Page">Home</a></li>
			<li><a href="About_Us">About Us</a></li>
			<li><a href="Services">Services</a></li>
			<li><a href="Contact">Contact</a></li>
		</ul>
	</div>
	<div class="container">
		<h1>About Us</h1>
		<div class="message">
			<p>Welcome to our dairy management system!</p>
			<p>We take pride in providing high-quality dairy products sourced
				directly from local farmers.</p>
			<p>Our dairy was introduced on 5th July 2020, with a mission to
				deliver fresh and nutritious milk to our customers while supporting
				the local community.</p>
		</div>

		<div class="Team-info">
			<h2>Our Team</h2>

			<div class="team-member">
				<img
					src="https://media.licdn.com/dms/image/D4D03AQGQRuQEiOcCaQ/profile-displayphoto-shrink_800_800/0/1712369115733?e=1720656000&v=beta&t=ECpUgwb7YUhJ8D651lThSVj4S5-qkQWNrK-reYuIFag"
					alt="Kedar_Kapse">
				<div class="team-member-info">
					<p>
						<strong>Name:</strong> Kedar Kapse (Owner)
					</p>
					<p>
						<strong>LinkedIn:</strong> <a
							href="https://www.linkedin.com/in/kedar-kapse-073b822a3">@Kedar_Kapse</a>
					</p>

					<p>
						<strong>Email:</strong> <a href="mailto:ompawar@gmail.com">kapse3852@gamil.com</a>
					</p>
					<p>
						<strong>Contact:</strong> 8805802873
					</p>
				</div>
			</div>
		</div>
		</div>
</body>
</html>
