package Action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import entities.Product;
import models.ProductModel;

public class ProductAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	private List<Product> products;

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public String execute() {
		ProductModel productModel = new ProductModel();
		this.products = productModel.findAll();
		System.out.println(products);
		return SUCCESS;
	}

}
