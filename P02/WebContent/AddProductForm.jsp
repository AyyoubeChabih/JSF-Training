<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="css/Product.css" >
	</head>
	<body>
		<f:view>
			<h1>
				<h:outputText value="#{msg.TITLE }" />
			</h1>
			<h:form>
				<h:selectOneMenu valueChangeListener="#{changeLocaleListener.changeLocale }" onchange="submit()" >
					<f:selectItem itemLabel="Français" itemValue="fr" />
					<f:selectItem itemLabel="Anglais" itemValue="en" />
					<f:selectItem itemLabel="Arabe" itemValue="ar" />
				</h:selectOneMenu>
			</h:form>
			
			<h:form>
				<h:panelGrid columns="2" columnClasses="c1, C2" headerClass="H" footerClass="F" >
					<f:facet name="header">
						<h:outputText value="Nouveau Produit" />
					</f:facet>
					<f:facet name="footer">
						<h:outputText value="Veulliez soumettre le formulaire à l'aide du botton valider" />
					</f:facet>
					<h:outputText value="Identificateur : " />
					<h:panelGroup>
						<h:inputText value="#{product.id }" required="true" id="id">
							<f:validateLongRange minimum="10000" maximum="99999" />						
						</h:inputText>
						<h:message for="id" />					
					</h:panelGroup>
					<h:outputText value="Désignation : " />
					<h:panelGroup>
						<h:inputText value="#{product.name }" required="true" id="name" size="50">
							<f:validateLength minimum="2" maximum="30" />
						</h:inputText>
						<h:message for="name" />
					</h:panelGroup>
					<h:outputText value="Prix : " />
					<h:panelGroup>
						<h:inputText value="#{product.price }" id="price">
							<f:validateDoubleRange />
						</h:inputText>
						<h:message for="price" />
					</h:panelGroup>
					<h:outputText value="Date : " />
					<h:panelGroup>
						<h:inputText value="#{product.date }" id="date">
							<f:convertDateTime pattern="dd/MM/yyyy" />
						</h:inputText>
						<h:message for="date" />
					</h:panelGroup>
					<h:outputText value="Disponible : " />
					<h:selectBooleanCheckbox value="#{product.available }" />
					<h:commandButton value="Valider" action="#{productAction.addProduct }" />
				</h:panelGrid>
			</h:form>
			<div>
				<h:outputText value="#{productAction.message }" />
			</div>
			<h:dataTable value="#{productAction.productList }" var="prod" rowClasses="R1, R2" headerClass="H" style="border-collapse: collapse; width: 100%;" >
				<f:facet name="header">
					<h:outputText value="Liste des produits" />
				</f:facet>
					<h:column>
						<f:facet name="header">
							<h:outputText value="Désignation" />
						</f:facet>
						<h:outputText value="#{prod.name }" />
					</h:column>
					<h:column>
						<f:facet name="header">
							<h:outputText value="Prix" />
						</f:facet>
						<h:outputText value="#{prod.price }" />
					</h:column>
					<h:column>
						<f:facet name="header">
							<h:outputText value="Date" /> 
						</f:facet>
						<h:outputText value="#{prod.date }" >
							<f:convertDateTime pattern="dd/MM/yyyy" />
						</h:outputText>
					</h:column>
			</h:dataTable>
		</f:view>
	</body>
</html>