package com.qiuguo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.qiuguo.dao.impl.StockDAOImpl;
import com.qiuguo.model.Stock;
import com.qiuguo.model.User;
@Component("stockService")
public class StockService {
	private StockDAOImpl stockDao;
	

	public StockDAOImpl getStockDao() {
		return stockDao;
	}
	@Resource
	public void setStockDao(StockDAOImpl stockDao) {
		this.stockDao = stockDao;
	}
	public void add(Stock s){
		if(s!=null)
			stockDao.add(s);
	}
	public Stock findById(int id){
		return stockDao.findById(id);
	}
	public void delete(int id){
		stockDao.delete(id);
	}
	public void update(Stock s){
		stockDao.update(s);
	}
	public List<Stock> findByPages(int pageSize,int page){
		return stockDao.findByPages(pageSize, page);
	}
	public int getTotalPages(int pageSize){
		return stockDao.getTotalPages(pageSize);
	}
}
