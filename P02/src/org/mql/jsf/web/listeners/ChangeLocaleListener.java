package org.mql.jsf.web.listeners;

import java.util.Hashtable;
import java.util.Locale;
import java.util.Vector;

import javax.faces.context.FacesContext;
import javax.faces.event.ValueChangeEvent;

public class ChangeLocaleListener {
	private Hashtable<String, Locale> locales;
	
	public ChangeLocaleListener() {
		locales = new Hashtable<String, Locale>();
		locales.put("fr", new Locale("fr"));
		locales.put("en", new Locale("en"));
		locales.put("ar", new Locale("ar"));
	}
	
	public void changeLocale(ValueChangeEvent e) {
		System.out.println(">> changeLocale => " + e.getNewValue());
		Locale locale = locales.get(e.getNewValue().toString());
		FacesContext context = FacesContext.getCurrentInstance();
		context.getViewRoot().setLocale(locale);
	}
}
