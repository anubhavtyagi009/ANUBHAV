package com.niit.catsuppro.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.catsuppro.model.Category;

@SuppressWarnings("deprecation")
@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public CategoryDAOImpl (SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
	}
	
	
	/* SAVE FUNCTION FOR CATEGORY */
	@Transactional
	public void saveOrUpdate(Category category)
	{
		sessionFactory.getCurrentSession().saveOrUpdate(category);
	}
	
	/* LIST FUNCTION FOR CATEGORY */
	@Transactional
	public List<Category> list() 
	{
		@SuppressWarnings({ "unchecked" })
		List<Category> listCategory = sessionFactory
				.getCurrentSession().createCriteria(Category.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		
		return listCategory;
	}
	
	
	/* GET ID FUNCTION FOR CATEGORY */
	@SuppressWarnings("null")
	@Transactional
	public Category getCategory(String id)
	{
		String hql = " from Category where cat_id = " + "'" + id + "'";
		
		@SuppressWarnings("rawtypes")
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Category> listCategory = query.list();
		
		if(listCategory!=null || !listCategory.isEmpty())
		{
			return listCategory.get(0);
		}
		return null;
	}
	
	
	/* GET NAME FUNCTION FOR CATEGORY */
	@SuppressWarnings("null")
	@Transactional
	public Category getByName(String name)
	{
		String hql = " from Category where cat_name = " + "'" + name + "'";
		
		@SuppressWarnings("rawtypes")
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Category> listCategory = query.list();
		
		if(listCategory!=null || !listCategory.isEmpty())
		{
			return listCategory.get(0);
		}
		return null;
	}
	
	/* DELETE METHOD FOR CATEGORY */
	@Transactional
	public void delete(String id)
	{
		Category categoryToDelete = new Category();
		categoryToDelete.setCat_id(id);
		sessionFactory.getCurrentSession().delete(categoryToDelete);
	}
}

