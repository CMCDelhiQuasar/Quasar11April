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
	function validatedraft() {

		alert("Come to validate method");
		var strDDNumber = document.forms["draftdetails"]["DDNumber"].value;
		var DDNumber = parseInt(strDDNumber, 10);
		// window.confirm(strDDNumber);
		var bankName = document.forms["draftdetails"]["bankName"].value;
		var issueDate = document.forms["draftdetails"]["issueDate"].value;
		if (DDNumber <= 0 || strDDNumber == "") {
			alert("Please enter valid draft number");
			return false;
		}
		if (bankName.length < 3) {
			alert("Please enter at least 3 character in bank name");
			return false;
		}

		if (issueDate == "") {
			alert("Please select date!!");
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<h1>Demand Draft Details</h1>
	<s:form name="draftdetails" action="ddmode" method="post"
		onsubmit="return validatedraft()">
		<s:textfield label="DD Number" labelSeparator="" labelposition="left"
			name="DDNumber" />
		<s:textfield label="Drawn on/Bank Name" labelSeparator=""
			labelposition="left" name="bankName" />
		<sj:datepicker name="issueDate" changeYear="true" changeMonth="true"
			label="Issue Date" labelSeparator="" labelposition="left" />
		<s:submit value="Proceed" />
		<s:submit value="Back" />
	</s:form>
</body>
</html>