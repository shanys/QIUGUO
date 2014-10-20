package com.qiuguo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.qiuguo.dao.impl.TaskDAOImpl;
import com.qiuguo.model.Task;
@Component("taskService")
public class TaskService {

	private TaskDAOImpl taskDao;

	public TaskDAOImpl getTaskDao() {
		return taskDao;
	}

	@Resource
	public void setTaskDao(TaskDAOImpl taskDao) {
		this.taskDao = taskDao;
	}
	
	public void add(Task t){
		taskDao.add(t);
	}
	public List<Task> findByPages(int pageSize,int page){
		return taskDao.findByPages(pageSize, page);
	}
	public int getTotalPages(int pageSize){
		return taskDao.getTotalPages(pageSize);
	}
	
	
	
	
}
