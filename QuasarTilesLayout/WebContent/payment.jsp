<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<sj:head jqueryui="true" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<script type="text/javascript">
	function paymentvalidate() {

		//alert("come to validate method");
		var strproposedAmount = document.forms["regpayment"]["proposedAmount"].value;
		var proposedAmount = parseInt(strproposedAmount, 10);

		var strdepositedAmount = document.forms["regpayment"]["depositedAmount"].value;
		var depositedAmount = parseInt(strdepositedAmount, 10);

		var proposedDate = document.forms["regpayment"]["proposedDate"].value;
		var paymentDate = document.forms["regpayment"]["paymentDate"].value;

		var comments = document.forms["regpayment"]["comments"].value;
		var paymentMode = document.getElementsByName("paymentMode");

		if (proposedAmount < 0 || strproposedAmount == "") {
			alert("Proposed Amount can not be less then 0 !!!");
			return false;
		}

		if (depositedAmount<0  ||strdepositedAmount=="" || depositedAmount>proposedAmount) {
			alert("Please check deposited amount");
			return false;
		}

		if (proposedDate == "") {
			alert("Please select Proposed Date!!");
			return false;
		}

		if (paymentDate == "") {
			alert("Please select Payment Date!!");
			return false;
		}

		if (comments.length < 1) {
			alert("Please enter atleast 5 charcter in Comment Section!!");
			return false;
		}

		//	window.confirm(paymentMode1[2].checked);

		var check = -1;
		for (var i = 0; i < paymentMode.length; i++) {
			// 	 alert("Come for radio list");
			if (paymentMode[i].checked) {
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
<title>Insert title here</title>
</head>
<body>

	<s:if test="#session.REGISTERING_STUDENT_EMAIL==null">
		You are not within the session .Please Login
		<jsp:forward page="registration.jsp" />
	</s:if>
	<s:else>		
			Welcome Page

			<h1>
			Welcome
			<s:property value="#session.shagird.name" />
			 
			<h3>
				<a href="cancelregistration">Cancel Registration</a>
			</h3>

		</h1>

	</s:else>

	<h1>Payment Page</h1>
	<s:form name="regpayment" method="post" action="payment"
		onsubmit="return paymentvalidate()">
		<s:textfield label="Proposed Amount" labelSeparator=""
			labelposition="left" name="proposedAmount" />
		<s:textfield label="Deposited Amount" labelSeparator=""
			labelposition="left" name="depositedAmount" />
		<sj:datepicker name="proposedDate" changeMonth="true"
			changeYear="true" label="Proposed Date" labelposition="left" />
		<sj:datepicker name="paymentDate" changeMonth="true" changeYear="true"
			label="Payment Date" labelposition="left" />
		<s:textarea name="comments" label="Comments" labelSeparator=""
			labelposition="left" />
		<s:radio
			list="#{'1':'Cash','2':'Online','3':'Cheque','4':'DD','5':'Card'}"
			name="paymentMode" label="Mode of Payment" labelSeparator=""
			labelposition="left" />
		<s:submit value="Proceed" />
		<s:submit value="Back" />
	</s:form>

</body>
</html>