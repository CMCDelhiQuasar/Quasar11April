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
	function validatecheque() {
		alert("come to validate method");
		var strchequeNumber = document.forms["chequedetails"]["chequeNumber"].value;
		var chequeNumber = parseInt(strchequeNumber, 10);

		var bankName = document.forms["chequedetails"]["bankName"].value;
		var issueDate = document.forms["chequedetails"]["issueDate"].value;

		if (chequeNumber <= 0 || strchequeNumber == "") {
			alert("Please check Cheque Number !!");
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
	<h1>Cheque Details</h1>
	<s:form name="chequedetails" action="cheque" method="post"
		onsubmit="return validatecheque()">
		<s:textfield label="Cheque Number" labelSeparator=""
			labelposition="left" name="chequeNumber" />
		<s:textfield label="Drawn on/Bank Name" labelSeparator=""
			labelposition="left" name="bankName" />
		<sj:datepicker changeMonth="true" changeYear="true" name="issueDate"
			label="Issue Date" labelSeparator="" labelposition="left" />
		<s:submit value="Proceed" />
		<s:submit value="Back" />
	</s:form>
</body>
</html>