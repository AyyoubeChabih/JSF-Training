package org.mql.jsf.models;

import java.util.Date;

public class Product {
	private int id;
	private String name;
	private double price;
	private Date date;
	private boolean available;
	
	public Product() {
	}

	public Product(int id, String name, double price, Date date, boolean available) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.date = date;
		this.available = available;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public boolean isAvailable() {
		return available;
	}

	public void setAvailable(boolean available) {
		this.available = available;
	}

	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", price=" + price + ", date=" + date + ", available="
				+ available + "]";
	}
}
