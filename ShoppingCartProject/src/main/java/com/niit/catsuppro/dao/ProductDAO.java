package com.niit.catsuppro.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.catsuppro.model.Product;

@Repository("productDAO")
public interface ProductDAO {
	
	public List<Product> list();
	
	public List<Product> somelist();
	
	public List<Product> catprolist(String name);
	
	public Product getProduct(String id);
	public void saveOrUpdate(Product product);
	public void delete(String id);
	public Product getByName(String name);

}
