package it.uniroma3.siw.controller;

import java.util.*;

import it.uniroma3.siw.model.*;
import it.uniroma3.siw.facade.ProductFacade;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.RequestScoped;

@ManagedBean
@RequestScoped
public class ProductController{
	
	@EJB
	private ProductFacade product_facade;
	
	@ManagedProperty(value="#{param.id}")
	private Long id;
	
	private String name;
	private Float price;
	private String description;
	private String code;
	private int inStock;
	
	private Product product;
	
	private List<Product> products;

	public String listProducts(){
		this.products = product_facade.getAllProducts();
		return "listaProdotti";
	}
	
	public String listProductsAdmin(){
		this.products = product_facade.getAllProducts();
		return "listaProdottiAdmin";
	}
	public String listProductsCustomer(){
		this.products = product_facade.getAllProducts();
		return "listaProdottiCliente";
	}
	
	public String findProduct(){
		this.product = product_facade.getProduct(id);
		return "mostraProdotto";
	}
	
	
	public String findProduct(Long id) {
		this.product = product_facade.getProduct(id);
		return "mostraProdotto";
	}
	
	public void findProduct(String code){
		this.product = product_facade.getProduct(code);
		return;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public List<Product> getProducts() {
		return products;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public int getInStock() {
		return inStock;
	}

	public void setInStock(int inStock) {
		this.inStock = inStock;
	}
	
	public void setProducts(List<Product> products) {
		this.products = products;
	}
	
}
