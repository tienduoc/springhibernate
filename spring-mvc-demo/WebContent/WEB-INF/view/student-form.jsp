<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form action="processForm" modelAttribute="student">
		First name: <form:input path="firstName" />
		<br>
		Last name: <form:input path="lastName" />
		<br>
		Country: <form:select path="country">
			<form:options items="${student.countryOptions}"/>
		</form:select>
		<br>
		Favorite Programming Language:
		<form:radiobutton path="favoriteLanguage" value="Java" /> Java
		<form:radiobutton path="favoriteLanguage" value="C#" /> C#
		<form:radiobutton path="favoriteLanguage" value="PHP" /> PHP
		<form:radiobutton path="favoriteLanguage" value="Ruby" /> Ruby
		<br>
		Operating Systems:
		<form:checkbox path="operatingSystems" value="Linux" /> Linux
		<form:checkbox path="operatingSystems" value="Mac OS" /> Mac OS
		<form:checkbox path="operatingSystems" value="Windows" /> Windows
		<br>
		<input type="submit" value="Submit" />
	</form:form>
</body>
</html>