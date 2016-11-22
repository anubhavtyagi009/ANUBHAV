package com.niit.catsuppro.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.catsuppro.model.Feedback;

@SuppressWarnings("deprecation")
@Repository("feedbackDAO")
public class FeedbackDAOImpl implements FeedbackDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public FeedbackDAOImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	}
	
	@Transactional
	public boolean save(Feedback feedback)
	{
		try {
			sessionFactory.getCurrentSession().save(feedback);
			return true;
			
		} catch (Exception e) {
			
			e.printStackTrace();
			return false;
			
		}
	}
	
	@SuppressWarnings("unchecked")
	@Transactional
	public List<Feedback> feedlist()
	{
		String hql = " from Feedback order by feed_id desc";
		
		@SuppressWarnings("rawtypes")
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		List<Feedback> list = query.list();
		
		if(list==null || list.isEmpty())
		{
			return null;
		}
		
		return query.list();
	}
	

	@SuppressWarnings("null")
	@Transactional
	public List<Feedback> somefeed()
	{
		String hql = "from Feedback order by feed_id desc";
		
		@SuppressWarnings("rawtypes")
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setFirstResult(0).setMaxResults(4);
		
		@SuppressWarnings("unchecked")
		List<Feedback> somefeedlist = query.list();
		
		if(somefeedlist!=null || !somefeedlist.isEmpty())
		{
			return somefeedlist;
		}
		return null;
	}

	
	

}
