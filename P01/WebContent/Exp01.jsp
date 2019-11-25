<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%> <!-- extention de certaine balise Html -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<f:view>
			<h1><h:outputText value="Introduction à JSF" /></h1> <!-- internalisation (balsculer entre les langues) -->
			<h:outputText value="Titre du livre" />
			<h:outputText value="#{doc01.title }" /> <!-- utilise le getter -->
		</f:view>
	</body>
</html>