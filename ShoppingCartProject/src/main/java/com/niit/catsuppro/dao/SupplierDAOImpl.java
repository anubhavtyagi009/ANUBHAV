package com.niit.catsuppro.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.catsuppro.model.Supplier;

@SuppressWarnings("deprecation")
@Repository("supplierDAO")
public class SupplierDAOImpl implements SupplierDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public SupplierDAOImpl(SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
	}
	
	
	@Transactional
	public void saveOrUpdate(Supplier supplier)
	{
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
	}
	
	
	@Transactional
	public List<Supplier> list()
	{
		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = sessionFactory
				.getCurrentSession().createCriteria(Supplier.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		
		return listSupplier;
	}
	
	
	@SuppressWarnings("null")
	@Transactional
	public Supplier getSupplier(String id)
	{
		String hql = " from Supplier where sup_id = " + "'" + id + "'";
		
		@SuppressWarnings("rawtypes")
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = query.list();
		
		if(listSupplier!=null || !listSupplier.isEmpty())
		{
			return listSupplier.get(0);
		}
		return null;
	}
	
	
	@SuppressWarnings("null")
	@Transactional
	public Supplier getByName(String name)
	{
		String hql = " from Supplier where sup_name = " + "'" + name + "'";
		
		@SuppressWarnings("rawtypes")
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = query.list();
		
		if(listSupplier!=null || !listSupplier.isEmpty())
		{
			return listSupplier.get(0);
		}
		return null;
	}

	
	@Transactional
	public void delete(String id)
	{
		Supplier supplierToDelete = new Supplier();
		supplierToDelete.setSup_id(id);
		sessionFactory.getCurrentSession().delete(supplierToDelete);
	}
}
