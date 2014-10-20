package com.qiuguo.dao.impl;

import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.qiuguo.dao.StockDAO;
import com.qiuguo.model.Stock;
import com.qiuguo.model.User;
@Component("stockDao")
public class StockDAOImpl implements StockDAO{

	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	@Resource
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	public void add(Stock s) {

		try {
			if(s!=null)
				hibernateTemplate.save(s);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public Stock findById(int id) {
		Stock s = null;
		try {
			s = (Stock)hibernateTemplate.get(Stock.class, id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return s;
	}

	public void delete(int id) {
		try {
			Stock s = new Stock();
			s.setId(id);
			hibernateTemplate.delete(s);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public void update(Stock s) {
		try {
			hibernateTemplate.update(s);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public List<Stock> findByPages(int pageSize, int page) {
		try {
			final int offset = pageSize*(page-1);
			final int length = pageSize;
			List<Stock> details=hibernateTemplate.executeFind(
					new HibernateCallback<Object>() {

						public Object doInHibernate(Session session)
								throws HibernateException, SQLException {
							Query q=session.createQuery("from Stock");
							q.setFirstResult(offset);
							q.setMaxResults(length);
							List<Stock> ss=q.list();
							return  ss;
						}
			});
			if(details!=null)
				return details;
		} catch (Exception e) {
		}
		
		return null;
	}

	public int getTotalPages(int pageSize) {
		List<Long> pages = hibernateTemplate
		.find("select count(s) from Stock s");
		int totalPages = pages.get(0).intValue();
		if (totalPages % pageSize == 0) {
			return totalPages / pageSize;
		} else {
			return totalPages / pageSize + 1;
		}
	}

}
