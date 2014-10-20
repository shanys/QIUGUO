package com.qiuguo.dao;

import java.util.List;

import com.qiuguo.model.Task;

public interface TaskDAO {

	public void add(Task t);
	public List<Task> findByPages(int pageSize,int page);
	public int getTotalPages(int pageSize);
}
