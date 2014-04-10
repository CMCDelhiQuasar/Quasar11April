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
<title>Student Registration Page...</title>

</head>
<body>

	<h1>Student Registration Details</h1>
	<h2>Basic Details</h2>
	<s:form name="regform" action="registration" method="post">
		<s:div id="basicDetails">
			<s:textfield label="Name of the Student" labelSeparator=""
				labelposition="left" name="studentname" />
			<s:textfield label="Email Id" labelSeparator="" labelposition="left"
				name="studentemail" />
			<s:select name="coursename" list="%{#{'Other':'Other'}}"
				label="Course" labelSeparator="">
				<s:optgroup label="6 Weeks"
					list="#{'Java SE':'Java SE','Java EE':'Java EE','Android':'Android','.Net':'.Net','Php':'Php','C/C++':'C/C++','Cloud Computing':'Cloud Computing','Java EE':'Java EE','Java SE':'Java SE','Java EE':'Java EE'}" />
				<s:optgroup label="6 Months"
					list="#{'Java SE':'Java SE','Java EE':'Java EE','Android':'Android','.Net':'.Net','Php':'Php','C/C++':'C/C++','Cloud Computing':'Cloud Computing','Java EE':'Java EE','Java SE':'Java SE','Java EE':'Java EE'}" />
				<s:optgroup label="6 Months Weekend"
					list="#{'Java SE':'Java SE','Java EE':'Java EE','Android':'Android','.Net':'.Net','Php':'Php','C/C++':'C/C++','Cloud Computing':'Cloud Computing','Java EE':'Java EE','Java SE':'Java SE','Java EE':'Java EE'}" />
				<s:optgroup label="6 Weeks Weekend"
					list="#{'Java SE':'Java SE','Java EE':'Java EE','Android':'Android','.Net':'.Net','Php':'Php','C/C++':'C/C++','Cloud Computing':'Cloud Computing','Java EE':'Java EE','Java SE':'Java SE','Java EE':'Java EE'}" />
				<s:optgroup label="Edge"
					list="#{'.Net':'.Net','Core Java':'Core Java'}" />
			</s:select>
			<s:textfield label="Contact Number" labelSeparator=""
				labelposition="left" name="contact" />
		</s:div>
		<hr />
		<s:div id="paymentDetails">
			<sj:autocompleter label="Course Fees" labelSeparator=""
				labelposition="left" name="coursefee" value="10000"
				list="{'10000','12000','15000','150000'}" />


			<sj:autocompleter label="Service Tax(%)" labelSeparator=""
				value="10.45" labelposition="left" name="servicetax"
				list="{'10.45','20','30','40'}" />

			<sj:autocompleter label="Discount(%)" labelSeparator="" value="10"
				labelposition="left" name="discount" list="{'10','20','30','40'}" />

			<sj:autocompleter label="Fine(if any)" labelSeparator="" value="10"
				labelposition="left" name="fine" list="{'10','20','30','40'}" />

			<s:textfield label="Total" labelSeparator="" labelposition="left"
				name="total" disabled="true" value="0.0" />
		</s:div>

		<s:div>
			<s:radio list="{'Full Fees','Installment'}" name="paymenttype"
				label="Payment Type" labelSeparator="" labelposition="left" />
		</s:div>
		<s:div>
			<s:select name="totalinstallments" list="%{#{'Select':'Select'}}"
				label="Number of Installments" labelSeparator="">
				<s:optgroup label="Select"
					list="#{'1':'1','2':'2','3':'3','4':'4','5':'5','6':'6','7':'7','8':'8','9':'9','10':'10'}" />
			</s:select>
			<s:textfield name="registrationamount" label="Registration Amount"
				labelSeparator="" labelposition="left" />
		</s:div>

		<hr />
		<s:div>
			<s:reset label="Reset" labelSeparator="" labelposition="left"
				name="reset" />
			<s:submit label="Proceed" labelSeparator="" labelposition="left"
				name="proceed" />
		</s:div>
	</s:form>
</body>
</html>