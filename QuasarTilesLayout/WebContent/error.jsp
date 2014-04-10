<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
body {
	margin-left: 200px;
	margin-right: 200px;
	background: url("images/dots.png");
	padding: 20px;
}

#buggyImageArea {
	background-color: rgb(255, 255, 255);
	background-image: url("animals/zebra.png");
	background-repeat: no-repeat;
	background-position: right;
	width: 500px;
	padding: 10px;
	padding-right: 130px;
	font-family: cursive;
	text-align: center;
	margin: auto;
	right: 50%;
	left: 50%;
	background-image: url("animals/zebra.png");
	border-color: silver;
	border-width: 1px;
	border-style: solid;
	border-bottom-width: 0px;
}

#errorMassageArea {
	background-color: rgb(255, 255, 255);
	width: 500px;
	padding: 10px;
	padding-right: 130px;
	font-family: cursive;
	margin: auto;
	right: 50%;
	left: 50%;
	border-color: silver;
	border-width: 1px;
	border-style: solid;
	border-bottom-width: 0px;
	border-top-width: 0px;
}

#errorFooterArea {
	background-color: rgb(255, 255, 255);
	background-image: url("grasspatch.png");
	background-position: bottom;
	background-repeat: repeat-x;
	width: 500px;
	padding: 10px;
	padding-left: 130px;
	font-family: cursive;
	text-align: center;
	margin: auto;
	right: 50%;
	left: 50%;
	font-family: cursive;
	text-align: center;
	border-color: silver;
	border-width: 1px;
	border-style: solid;
	border-top-width: 0px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="errorTitleArea">
		<h2></h2>
	</div>
	<div align="center" id="buggyImageArea">



		<h2>Seems a wild animal attacked has our server !</h2>
		<p>

			<font color="red">Exception ${exception.message}</font>
		</p>

	</div>
	<div id="errorMassageArea">
		<h1>Errors Details</h1>
		<p>We receive and store any information you enter on our website
			or provide to us in any other way. You can choose not to provide us
			with certain information, but then you may not be able to take
		<ul>
			<li>certain information, but then you may not be able to take</li>
			<li>Lets check all the fields information, but then you may not
				be able to take</li>
		</ul>
		</p>
	</div>

	<div id="errorFooterArea">
		<h2>Back to the Home Page</h2>
		<br> <br> <br> <br>

	</div>


	<!-- Some Cool Stuffs Here  -->

	<script type="text/javascript">
		//generateRandomNumber();

		var rand = generateRandomNumber();

		var img = document.getElementById('buggyImageArea');

		switch (rand) {
		case 1:
			img.style.backgroundImage = "url('animals/lion.png')";
			break;
		case 2:
			img.style.backgroundImage = "url('animals/giraffe.png')";
			break;
		case 3:
			img.style.backgroundImage = "url('animals/elephant.png')";
			break;
		case 4:
			img.style.backgroundImage = "url('animals/rhino.png')";
			break;
		case 5:
			img.style.backgroundImage = "url('animals/zebra.png')";
			break;

		default:
			break;
		}

		function generateRandomNumber() {
			var x = Math.round(Math.random() * 10);
			if (x <= 5) {
				return x;
			} else {
				return generateRandomNumber();
			}

		}
	</script>
	</ body>
</html>