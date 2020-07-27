package com.myspring.dao;

public class Products {

	int id;
	String name;
	String picture;
	double price;
	int quantity;

	public Products() {

	}

	public Products(String name, double price, int quantity) {
		this.name = name;
		this.price = price;
		this.quantity = quantity;
	}

	public Products(int id, String name, double price, int quantity) {
		this.id = id;
		this.name = name;
		this.price = price;
		this.quantity = quantity;
	}

	public Products(int id, String name, String picture, double price, int quantity) {
		System.out.println("Got to this controller");
		this.id = id;
		this.name = name;
		this.picture = picture;
		this.price = price;
		this.quantity = quantity;
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

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	@Override
	public String toString() {
		return "Products [id=" + id + ", name=" + name + ", picture=" + picture + ", price=" + price + ", quantity="
				+ quantity + "]";
	}

}
