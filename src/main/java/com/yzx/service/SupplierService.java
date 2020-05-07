package com.yzx.service;

import java.util.List;

import com.yzx.pojo.Supplier;

/**
 * @author YZX
 * @date 2020��5��3��
 * @time ����7:22:21
 */

public interface SupplierService {

	List<Supplier> selSupplier(int pageNumber, int pageSize);

	int selSupplierCount();
	
	Supplier selById(int id);
	
	int addSupplier(Supplier supplier);
	
	int delSupplier(int id);
	
	int updSupplier(Supplier supplier);
}
