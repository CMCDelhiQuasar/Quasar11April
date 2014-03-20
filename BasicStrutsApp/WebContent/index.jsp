<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="sx" uri="/struts-dojo-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<sx:head />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#learnTitle {
	font-family: cursive;
	font: 100;
	background-color: silver;
}
</style>
</head>
<body>




	<center>
		<h1>Tin Tin Adventures</h1>
		<img src="tintinhead.jpg" alt="Torterra" id="guru" />
		
		<s:form action="abc" method="get">
			<s:textfield name="username" label="Enter Your Name" />
			<s:password name="pass" label="Enter Password" />
			<s:reset value="Clear" align="left" />
			<s:submit value="Start Tarining " align="right" />
		</s:form>

	</center>

</body>
</html>