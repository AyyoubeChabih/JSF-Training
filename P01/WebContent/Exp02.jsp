<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<f:view>
			<h1>Nouveau document</h1>
			<h:form>
				<h:panelGrid columns="2">
					<h:outputText value="ISBN :" />
					<h:inputText value="#{doc01.isbn }" size="15" />
					<h:outputText value="Titre :" />
					<h:inputText value="#{doc01.title }" size="30" />
					<h:outputText value="Année d'édition :" />
					<h:inputText value="#{doc01.yearPublished }" size="4" />
				</h:panelGrid>
				<!-- Outcom dynamique -->
				<h:commandButton value="Valider" action="#{documentAction.addDocument }" />  <!-- l'action associée au button  -->
				<!-- Outcom statique -->
				<h:commandButton value="Quitter" action="quitter" /> 
			</h:form>
		</f:view>
	</body>
</html>