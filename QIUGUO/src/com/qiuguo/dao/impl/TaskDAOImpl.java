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

import com.qiuguo.dao.TaskDAO;
import com.qiuguo.model.Stock;
import com.qiuguo.model.Task;
@Component("taskDao")
public class TaskDAOImpl implements TaskDAO{

	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	@Resource
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	public void add(Task t) {
		try {
			hibernateTemplate.save(t);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<Task> findByPages(int pageSize, int page) {
		try {
			final int offset = pageSize*(page-1);
			final int length = pageSize;
			List<Task> ts=hibernateTemplate.executeFind(
					new HibernateCallback<Object>() {

						public Object doInHibernate(Session session)
								throws HibernateException, SQLException {
							Query q=session.createQuery("from Task");
							q.setFirstResult(offset);
							q.setMaxResults(length);
							List<Task> ts=q.list();
							return  ts;
						}
			});
			if(ts!=null)
				return ts;
		} catch (Exception e) {
		}
		return null;
	}

	public int getTotalPages(int pageSize) {
		List<Long> pages = hibernateTemplate
		.find("select count(t) from Task t");
		int totalPages = pages.get(0).intValue();
		if (totalPages % pageSize == 0) {
			return totalPages / pageSize;
		} else {
			return totalPages / pageSize + 1;
		}
	}

	
}
