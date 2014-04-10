<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
<script type="text/javascript">
	function validateform() {

		var strtransactionId = document.forms["onlineform"]["transactionId"].value;
		var transactionId = parseInt(strtransactionId, 10);

		var strreicptNumber = document.forms["onlineform"]["reicptNumber"].value;
		var reicptNumber = parseInt(strreicptNumber, 10);

		if (strtransactionId == "" || transactionId <= 0) {
			alert("Please check transaction ID!!!");
			return false;
		}

		if (strreicptNumber == "" || reicptNumber <= 0) {
			alert("Please check Reciept Number!!!");
			return false;
		}

		return true;
	}
</script>
</head>
<body>
	<h1>Online Transaction Details</h1>
	<s:form name="onlineform" onsubmit="return validateform()"
		method="post" action="onlinemode">
		<s:textfield label="Transaction Id" labelSeparator=""
			labelposition="left" name="transactionId" />
		<s:textfield label="Reicpt Number" value="0" labelSeparator=""
			labelposition="left" name="reicptNumber" />
		<s:submit value="Proceed" />
		<s:submit value="Back" />
	</s:form>
</body>
</html>