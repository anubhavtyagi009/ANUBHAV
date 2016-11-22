package com.niit.catsuppro.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.catsuppro.model.Cart;

@SuppressWarnings("deprecation")
@Repository("CartDAO")
public class CartDAOImpl implements CartDAO{
	
	@Autowired
	private Cart cart;
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public CartDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	
	@Transactional
	public void saveOrUpdate(Cart cart)
	{
		sessionFactory.getCurrentSession().saveOrUpdate(cart);
		
	}
	
	@Transactional
	public void delete(int id)
	{
		Cart cartToDelete = new Cart();
		cartToDelete.setCart_id(id);
		sessionFactory.getCurrentSession().delete(cartToDelete);
	}
	
	@Transactional
	public Cart getCart(String id)
	{
		String hql = "from Cart where usrid=" + "'" +id+ "'";
		
		@SuppressWarnings("rawtypes")
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Cart> listcart = (List<Cart>)query.getResultList();
		
		if(listcart != null && !(listcart.isEmpty()))
		{
			return listcart.get(0);
		}
		return null;
		
	}
	
	@SuppressWarnings("null")
	@Transactional
	public List<Cart> usercartlist(String ucname)
	{
		String hql = "from Cart where usrid = " + "'" + ucname + "'";
		
		@SuppressWarnings("rawtypes")
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Cart> userscart = query.list();
		
		if(userscart!=null || !userscart.isEmpty()){
			return userscart;
		}
		return null;
	}
	
	@Transactional
	public List<Cart> list()
	{
		
		@SuppressWarnings("unchecked")
		List<Cart> listcart = (List<Cart>)sessionFactory.getCurrentSession()
								.createCriteria(Cart.class)
								.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		
		return listcart;
		
	}

}
