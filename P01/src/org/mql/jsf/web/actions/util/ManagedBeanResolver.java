package org.mql.jsf.web.actions.util;

import javax.el.ELResolver;
import javax.faces.context.FacesContext;

public class ManagedBeanResolver<T> {
	
	public ManagedBeanResolver() {
		
	}
	
	public T getBean(String name) {
		FacesContext context = FacesContext.getCurrentInstance();  // il change a chaque fois, un chaque invocation de addDocument > new instance
		ELResolver resolver = context.getELContext().getELResolver();
		return (T)resolver.getValue(context.getELContext(), null, name);
	}
}
