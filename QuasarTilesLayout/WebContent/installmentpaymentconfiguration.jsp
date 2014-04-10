<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<sj:head jqueryui="true" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
<script type="text/javascript">
	function validateinstallment() {

		alert("come to javascript");
		var strpamount1 = document.forms["installmentform"]["proposedAmount1"].value;
		var pamount1 = parseInt(strpamount1, 10);

		//alert("come to javascript");
		var strpamount2 = document.forms["installmentform"]["proposedAmount2"].value;
		var pamount2 = parseInt(strpamount2, 10);

		//alert("come to javascript");
		var proposeddate1 = document.forms["installmentform"]["proposedDate1"].value;
		var proposeddate2 = document.forms["installmentform"]["proposedDate2"].value;

		if (strpamount1 == "" || pamount1 <= 0) {
			alert("Please check first proposed amount");
			return false;
		}

		if (strpamount2 == "" || pamount2 <= 0) {
			alert("Please check second proposed amount");
			return false;
		}

		if (proposeddate1 == "") {
			alert("Please check first proposed date");
			return false;
		}

		if (proposeddate2 == "") {
			alert("Please check second proposed date");
			return false;
		}

		return true;

	}
</script>
</head>
<body>

	<s:if test="#session.REGISTERING_STUDENT_EMAIL==null">
		You are not within the session .Please Login
		<jsp:forward page="registration.jsp" />
	</s:if>
	<s:else>

		<h1>
			<br> Installment Configuration for : <s:property
					value="#session.shagird.name" />  
				<h3>
					<a href="cancelregistration">Cancel Registration</a>
				</h3>
		</h1>





		<!-- Fetch the number of Installment Student has opted  -->

		<s:set var="ins" value="#session.NUMBER_OF_INSTALLMENTS" />

		<br>Number of Installments : <s:property value="#ins" /> <br />
			<s:form name="installmentform" action="installmentconfiguration"
				onsubmit="return true" method="post" theme="simple">
				<s:iterator var="n" begin="1" end="#ins" step="1">


					<h1>Installment ${n}</h1>
					<s:textfield label="Proposed Amount" value="0" labelSeparator=""
						labelposition="left" name="proposedAmount%{#n}" />
					<sj:datepicker name="proposedDate%{#n}" changeMonth="true"
						changeYear="true" label="Proposed Date" labelSeparator=""
						labelposition="left" />
					<s:textarea label="Comments" labelSeparator="" labelposition="left"
						name="comments1" />

					<hr>
				</s:iterator>
				<s:div>
					<s:submit label="Proceed" labelSeparator="" labelposition="left"
						name="proceed" />
				</s:div>
			</s:form>
	</s:else>



</body>
</html>