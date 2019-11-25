package org.mql.jsf.web.business;

import java.util.Hashtable;
import java.util.List;
import java.util.Vector;

import org.mql.jsf.models.Document;

public class BiblioServiceDefault implements BiblioService {
	private Hashtable<String, Document> docs;
	
	public BiblioServiceDefault() {
		docs = new Hashtable<String, Document>();
	}
	
	public boolean addDocument(Document doc) {
		System.out.println(">> BiblioServiceDefault.addDocument()");
		if (docs.containsKey(doc.getIsbn())) {
			return false;
		} else {
			docs.put(doc.getIsbn(), doc);
			return true;
		}
	}

	public List<Document> documents() {
		return new Vector<Document>(docs.values());
	}

}
