package models;

import java.util.ArrayList;
import java.util.List;

import entities.Product;

public class ProductModel {

	private List<Product> products;

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public ProductModel() {
		this.products = new ArrayList<Product>();
		this.products.add(new Product("1", "Pizza ", "thumb1.jpg", 20));
		this.products.add(new Product("2", "Burger ", "thumb2.jpg", 21));
		this.products.add(new Product("3", "Sandwich ", "thumb3.jpg", 22));
	}

	public List<Product> findAll() {
		return this.products;
	}

	public Product find(String id) {
		for (Product product : this.products) {
			if (product.getId().equalsIgnoreCase(id)) {
				return product;
			}
		}
		return null;
	}

}
