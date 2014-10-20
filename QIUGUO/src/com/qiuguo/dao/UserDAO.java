package com.qiuguo.dao;

import java.util.List;

import com.qiuguo.model.User;
import com.qiuguo.model.UserDetail;

public interface UserDAO {

	public void add(User u);
	public User findById(int id);
	public List<User> findAll();
	public void delete(int id);
	public void update(User u);
	public User findByUsername(String username);
	public List<User> findByPages(int pageSize,int page);
	public int getTotalPages(int pageSize);
	public void addUserDetail(UserDetail ud);
	public List<UserDetail> getUserDetailByPages(int pageSize,int page,int userId);
	public int getUserDetailTotalPages(int pageSize);
}
