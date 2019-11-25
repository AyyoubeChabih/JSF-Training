package org.mql.jsf.web.actions;

import java.util.Hashtable;
import java.util.List;
import java.util.Vector;

import org.mql.jsf.actions.util.ManagedBeanResolver;
import org.mql.jsf.models.Product;

//<!-- <f:validator validatorId="" />  on declare le validateur dans faces-config.xml -->

public class ProductAction {
	private Hashtable<Integer, Product> products;
	private ManagedBeanResolver<Product> context;
	private String message = "";
	
	public ProductAction() {
		products = new Hashtable<Integer, Product>();
		context = new ManagedBeanResolver<Product>();
	}

	public String addProduct() {
		Product p = context.getBean("product");
		if (products.containsKey(p.getId())) {
			message = "Un produit existe déjà avec id = [" + p.getId() +  "]";
			return "error";
		} else {
			message = "Produit bien enregistré";
			products.put(p.getId(), p);
			return "ok";
		}
	}
	
	public String getMessage() {
		return message;
	}
	
	public List<Product> getProductList() {
		return new Vector<Product>(products.values());
	}
}
