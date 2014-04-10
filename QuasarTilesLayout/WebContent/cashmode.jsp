<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
<script type="text/javascript">
	function thousand(z) {
		var x = document.getElementById("1000");
		var diplay = document.getElementById(z).value;
		//alert(diplay);
		x.innerHTML = "The Value  " + (1000 * diplay);
	}

	function fivehundered(z) {
		var x = document.getElementById("500");
		var diplay = document.getElementById(z).value;
		//alert(diplay);
		x.innerHTML = "The Value  " + (500 * diplay);
	}

	function hundered(z) {
		var x = document.getElementById("100");
		var diplay = document.getElementById(z).value;
		//alert(diplay);
		x.innerHTML = "The Value  " + (100 * diplay);

	}

	function countfifty(z) {

		var x = document.getElementById("50");

		var diplay = document.getElementById(z).value;
		//alert(diplay);
		x.innerHTML = "The Value  " + (50 * diplay);
	}

	function counttwenty(z) {
		var x = document.getElementById("20");
		var diplay = document.getElementById(z).value;
		//alert(diplay);
		x.innerHTML = "The Value  " + (20 * diplay);
	}

	function countten(z) {
		var x = document.getElementById("10");
		var diplay = document.getElementById(z).value;
		//alert(diplay);
		x.innerHTML = "The Value  " + (10 * diplay);
	}

	function countfive(z) {
		var x = document.getElementById("5");
		var diplay = document.getElementById(z).value;
		//alert(diplay);
		x.innerHTML = "The Value  " + (5 * diplay);
	}

	function counttwo(z) {
		var x = document.getElementById("2");
		var diplay = document.getElementById(z).value;
		//alert(diplay);
		x.innerHTML = "The Value  " + (2 * diplay);
	}

	function countone(z) {
		var x = document.getElementById("1");
		var diplay = document.getElementById(z).value;
		//alert(diplay);
		x.innerHTML = "The Value  " + (1 * diplay);
	}
</script>
</head>
<body>
	<center>
		<h1>Cash Mode Details</h1>
		<s:form name="regcash" action="cashmode"
			theme="simple">
			<s:label name="simple" label="Payment Mode for" labelposition="left"
				labelSeparator=":" />
			<s:label name="studentName" value="Student Name" />
			<s:label name="studentEmail" value="Student Email" />
			<s:label name="regAmt" label="for the payment of Rs. "
				labelSeparator="" labelposition="left" />

			<s:textfield name="cashAmount" label="Cash Amount" labelSeparator=""
				labelposition="left" />
			<br />
			<s:label value="Enter 1000 Notes" />
			<s:select id="thousandnotes" name="thousandnotes" label="1000 x"
				labelSeparator="" labelposition="left" onclick="thousand(this.id)"
				list="{'0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20'}" />
			<s:label value="" id="1000" name="thousandvalue" />

			<br />
			<s:label value="Enter 500 Notes" />
			<s:select id="fivehundred" name="fivehundred" label="500 x"
				labelSeparator="" labelposition="left"
				onclick="fivehundered(this.id)"
				list="{'0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20'}" />
			<s:label value="" id="500" />
			<br />

			<s:label value="Enter 100 Notes" />
			<s:select id="hundred" name="hundred" label="100 x" labelSeparator=""
				labelposition="left" onclick="hundered(this.id)"
				list="{'0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20'}" />
			<s:label value="" id="100" />
			<br />

			<s:label value="Enter 50 Notes" />
			<s:select id="fifty" name="fifty" label="50 x" labelSeparator=""
				labelposition="left" onclick="countfifty(this.id)"
				list="{'0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20'}" />
			<s:label value="" id="50" />
			<br />

			<s:label value="Enter 20 Notes" />
			<s:select id="twenty" name="twenty" label="20 x" labelSeparator=""
				labelposition="left" onclick="counttwenty(this.id)"
				list="{'0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20'}" />
			<s:label value="" id="20" />
			<br />

			<s:label value="Enter 10 Notes" />
			<s:select id="ten" name="ten" label="10 x" labelSeparator=""
				labelposition="left" onclick="countten(this.id)"
				list="{'0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20'}" />
			<s:label value="" id="10" />
			<br />

			<s:label value="Enter 5 Notes" />
			<s:select id="five" name="five" label="5 x" labelSeparator=""
				labelposition="left" onclick="countfive(this.id)"
				list="{'0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20'}" />
			<s:label value="" id="5" />
			<br />

			<s:label value="Enter 2 Notes" />
			<s:select id="two" name="two" label="2 x" labelSeparator=""
				labelposition="left" onclick="counttwo(this.id)"
				list="{'0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20'}" />
			<s:label value="" id="2" />
			<br />

			<s:label value="Enter 1 Notes" />
			<s:select id="one" name="one" label="1 x" labelSeparator=""
				labelposition="left" onclick="countone(this.id)"
				list="{'0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20'}" />
			<s:label value="" id="1" />
			<br />

			<s:submit value="Proceed" />
			<s:submit value="Back" />
		</s:form>
	</center>
</body>
</html>