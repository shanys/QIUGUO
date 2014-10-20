package com.qiuguo.dao;

import java.util.List;

import com.qiuguo.model.Stock;
import com.qiuguo.model.User;

public interface StockDAO {

	public void add(Stock s);
	public Stock findById(int id);
	public void delete(int id);
	public void update(Stock s);
	public List<Stock> findByPages(int pageSize,int page);
	public int getTotalPages(int pageSize);
}
