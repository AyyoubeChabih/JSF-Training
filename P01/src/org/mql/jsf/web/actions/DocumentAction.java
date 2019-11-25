package org.mql.jsf.web.actions;

import org.mql.jsf.models.Document;
import org.mql.jsf.web.actions.util.ManagedBeanResolver;
import org.mql.jsf.web.business.BiblioService;

public class DocumentAction {
	private ManagedBeanResolver<Document> context;
	private BiblioService biblioService;
	private String message = "";
	
	public DocumentAction() {
		context = new ManagedBeanResolver<Document>();
	}
	
	public void setBiblioService(BiblioService biblioService) {
		this.biblioService = biblioService;
	}
	
	public String addDocument() {
		Document doc01 = context.getBean("doc01");
		System.out.println(">> addDocument()" + doc01);
		if (biblioService.addDocument(doc01)) {
			return "ok"; // Outcome
		} else {
			message = "Un document existe déjà avec le même ISBN : " + doc01.getIsbn();
			return "error";
		}
	}
	
	public String getMessage() {
		return message;
	}
}
