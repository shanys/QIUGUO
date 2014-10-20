package com.qiuguo.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.qiuguo.model.Stock;
import com.qiuguo.service.StockService;
@Controller
@RequestMapping("/stock.do")
@SessionAttributes({"ss","stockPage","stockTotalPages"})
public class Stockcontroller {

	private StockService stockService;

	public StockService getStockService() {
		return stockService;
	}

	@Resource
	public void setStockService(StockService stockService) {
		this.stockService = stockService;
	}
	@RequestMapping(params="method=list")
	public String getStockList(ModelMap map,int stockPage){
		map.put("ss", stockService.findByPages(5, stockPage));
		map.put("stockTotalPages", stockService.getTotalPages(5));
		map.put("stockPage", stockPage);
		
		return "redirect:index-person.jsp";
	}
	@RequestMapping(params="method=add")
	public String addStock(Stock s){
		if(s!=null){			
			stockService.add(s);
			return "stock.do?method=list&stockPage=1";
		}else
			return "add-stock.html";
		
	}
	@RequestMapping(params="method=delete")
	public String deleteStock(int id,int stockPage){
		stockService.delete(id);
		return "stock.do?method=list&stockPage="+stockPage;
	}
}
