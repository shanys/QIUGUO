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

import com.qiuguo.dao.UserDAO;
import com.qiuguo.model.User;
import com.qiuguo.model.UserDetail;
@Component("userDao")
public class UserDAOImpl implements UserDAO{

	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	@Resource
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public void add(User u) {
		
		try {
			if(u!=null)
				hibernateTemplate.save(u);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public User findById(int id) {
		User u = null;
		try {
			u = (User)hibernateTemplate.get(User.class, id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return u;
	}

	public List<User> findAll() {
		List<User> users = null;
		try {
			users = hibernateTemplate.find("from User u order by u.id asc");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return users;
	}

	public void delete(int id) {
		
		try {
			User u = new User();
			u.setId(id);
			hibernateTemplate.delete(u);
		} catch (Exception e) {
			e.printStackTrace();
		}
//		hibernateTemplate.execute(new HibernateCallback<User>() {
//
//			public User doInHibernate(Session session) throws HibernateException,
//					SQLException {
//				
//				return null;
//			}
//		});
//		
	}

	public void update(User u) {
		
		try {
			hibernateTemplate.update(u);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public User findByUsername(final String username) {
		User u = null;
		try {
			u = hibernateTemplate.execute(new HibernateCallback<User>() {

				public User doInHibernate(Session session)
						throws HibernateException, SQLException {
					Query q = session.createQuery("from User u where u.username = :username")
					.setString("username", username);
					List<User> users=q.list();
					if(users.size()>0)
						return users.get(0);
					else 
						return null;
				}
			});
		} catch (Exception e) {
			e.printStackTrace();
		}
		return u;
	}

	public List<User> findByPages(int pageSize, int page) {
		try {
			final int offset = pageSize*(page-1);
			final int length = pageSize;
			List<User> details=hibernateTemplate.executeFind(
					new HibernateCallback<Object>() {

						public Object doInHibernate(Session session)
								throws HibernateException, SQLException {
							Query q=session.createQuery("from User");
							q.setFirstResult(offset);
							q.setMaxResults(length);
							List<User> users=q.list();
							return  users;
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
		.find("select count(u) from User u");
		int totalPages = pages.get(0).intValue();
		if (totalPages % pageSize == 0) {
			return totalPages / pageSize;
		} else {
			return totalPages / pageSize + 1;
		}
	}

	public void addUserDetail(UserDetail ud) {
		try {
			if(ud != null)
				hibernateTemplate.save(ud);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	

	public List<UserDetail> getUserDetailByPages(int pageSize, int page,final int userId) {
		try {
			final int offset = pageSize*(page-1);
			final int length = pageSize;
			List<UserDetail> details=hibernateTemplate.executeFind(
					new HibernateCallback<Object>() {

						public Object doInHibernate(Session session)
								throws HibernateException, SQLException {
							Query q=session.createQuery("from UserDetail ud where ud.userId = :userId")
							.setInteger("userId", userId);
							q.setFirstResult(offset);
							q.setMaxResults(length);
							List<UserDetail> uds=q.list();
							return  uds;
						}
			});
			if(details!=null)
				return details;
		} catch (Exception e) {
		}
		
		return null;
	}

	public int getUserDetailTotalPages(int pageSize) {
		List<Long> pages = hibernateTemplate
		.find("select count(ud) from UserDetail ud");
		int totalPages = pages.get(0).intValue();
		if (totalPages % pageSize == 0) {
			return totalPages / pageSize;
		} else {
			return totalPages / pageSize + 1;
		}
	}

	
}
