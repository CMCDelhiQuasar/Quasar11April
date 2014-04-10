<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<sj:head jqueryui="true" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
<script type="text/javascript">
	function validatecard() {
		alert("come to validate method");
		var cardtype = document.getElementsByName("cardType");

		var strcardNumber = document.forms["regmode"]["cardNumber"].value;
		var cardNumber = parseInt(strcardNumber, 10);

		var strtransactionId = document.forms["regmode"]["transactionId"].value;
		var transactionId = parseInt(strtransactionId, 10);

		var cardExpiryDate = document.forms["regmode"]["cardExpiryDate"].value;

		if (cardNumber < 0 || strcardNumber == "") {
			alert("Please enter valid card number!!");
			return false;
		}

		if (transactionId < 0 || strtransactionId == "") {
			alert("Please enter valid transaction id!!");
			return false;
		}

		if (cardExpiryDate == "") {
			alert("Please select Card Expiry Date");
			return false;
		}

		var check = -1;
		for (var i = 0; i < cardtype.length; i++) {
			// 	 alert("Come for radio list");
			if (cardtype[i].checked) {
				// alert("Value is incremented!!");
				check += 1;
			}
		}
		if (check == -1) {
			alert("Please select at least one radio button");
			return false;
		}

		return true;
	}
</script>
</head>
<body>
	<s:form name="regmode" action="cardmode" method="post"
		onsubmit="return validatecard()">
		<s:radio label="Card Type" labelSeparator="" labelposition="left"
			name="cardType" list="{'Debit Card','Credit Card'}" />
		<s:textfield label="Card Number" labelSeparator=""
			labelposition="left" name="cardNumber" />
		<s:textfield label="Transaction ID" labelSeparator=""
			labelposition="left" name="transactionId" />
		<sj:datepicker label="Expiry Date" changeMonth="true"
			changeYear="true" labelSeparator="" labelposition="left"
			name="cardExpiryDate" />
		<s:submit label="Proceed" labelSeparator="" labelposition="left" />
	</s:form>
</body>
</html>