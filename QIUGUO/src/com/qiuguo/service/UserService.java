package com.qiuguo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.qiuguo.dao.impl.UserDAOImpl;
import com.qiuguo.model.User;
import com.qiuguo.model.UserDetail;
@Component("userService")
public class UserService {

	private UserDAOImpl userDao;

	public UserDAOImpl getUserDao() {
		return userDao;
	}

	@Resource
	public void setUserDao(UserDAOImpl userDao) {
		this.userDao = userDao;
	}
	public void add(User u){
		if(u!=null){
			userDao.add(u);
		}
	}
	public User findById(int id){
		User u = userDao.findById(id);
		if(u!=null)
			return u;
		else
			return null;
		
	}
	public List<User> findAll(){
		List<User> users = userDao.findAll();
		if(users.size()>0)
			return users;
		else 
			return null;
	}
	public void delete(int id){
		userDao.delete(id);
	}
	public void update(User u){
		userDao.update(u);
	}
	public User findByUsername(String username){
		return userDao.findByUsername(username);
	}
	public List<User> findByPages(int pageSize,int page){
		return userDao.findByPages(pageSize, page);
	}
	public int getTotalPages(int pageSize){
		return userDao.getTotalPages(pageSize);
	}
	public void addUserDetail(UserDetail ud){
		userDao.addUserDetail(ud);
	}
	public List<UserDetail> getUserDetailByPages(int pageSize,int page,int userId){
		return userDao.getUserDetailByPages(pageSize, page,userId);
	}
	public int getUserDetailTotalPages(int pageSize){
		return userDao.getUserDetailTotalPages(pageSize);
	}
}
