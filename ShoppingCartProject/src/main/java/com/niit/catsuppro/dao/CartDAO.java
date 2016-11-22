package com.niit.catsuppro.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.catsuppro.model.Cart;

@Repository("cartDAO")
public interface CartDAO {

	public Cart getCart(String id);
	public void saveOrUpdate(Cart cart);
	public void delete(int id);
	public List<Cart> list() ;
	
	public List<Cart> usercartlist(String ucname);
	//public int getTotalAmount(String id);
	
}
