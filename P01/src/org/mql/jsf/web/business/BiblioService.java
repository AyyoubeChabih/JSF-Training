package org.mql.jsf.web.business;

import java.util.List;

import org.mql.jsf.models.Document;

public interface BiblioService {
	public boolean addDocument(Document doc);
	public List<Document> documents();
}
