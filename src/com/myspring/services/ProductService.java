package com.myspring.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myspring.dao.Products;
import com.myspring.dao.ProductsDao;

@Service
public class ProductService {

	@Autowired
	ProductsDao productsdao;
	
	public List<Products> getProductsUsingService(){
		return productsdao.getProducts();
	}
	
	public Products getProductsUsingService(int id) {
		return productsdao.getProduct(id);
	}
	
	public boolean insertProductsUsingService(Products product) {
		return productsdao.insertProduct(product);
	}
}