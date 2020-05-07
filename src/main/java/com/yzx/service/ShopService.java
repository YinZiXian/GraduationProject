package com.yzx.service;

import java.util.List;

import com.yzx.pojo.Shop;

/**
 * @author YZX
 * @date 2020��5��1��
 * @time ����11:37:09
 */

public interface ShopService {

	List<Shop> selShop(int pageNumber, int pageSize);
	
	int selShopCount();
	
	List<String> selShopName();
	
	Shop selById(int id);

	int selIdByName(String shopname);
	
	int addShop(Shop shop);
	
	int delShop(int id);
	
	int updShop(Shop shop);
}
