package com.yzx.service;

import java.util.List;

import com.yzx.pojo.Stock;

/**
 * @author YZX
 * @date 2020��5��2��
 * @time ����8:41:11
 */
public interface StockService {
	
	List<Stock> selStock(Stock stock);
	
	List<Stock> selContentByFindShop(Stock stock);
	
	List<Stock> selContentByFindProduct(Stock stock);
	
	int selCount();
	
	Stock selById(int id);
	
	int selCountByShop(Stock stock);

	int selCountByProduct(Stock stock);
	
	List<Stock> selContentByShop(int pageNumber,int pageSize);

	List<Stock> selContentByProduct(int pageNumber,int pageSize);
	
	int addStock(Stock stock);
	
	int delStock(int id);
	
	int updStock(Stock stock);
}
