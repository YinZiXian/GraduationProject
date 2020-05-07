package com.yzx.service;

import java.util.List;

import com.yzx.pojo.Supplyin;

/**
 * @author YZX
 * @date 2020��5��2��
 * @time ����9:37:59
 */

public interface SupplyinService {
	
	int selSupplyinCount();
	
	List<Supplyin> selSupplyin(int pageNumber, int pageSize);
	
	Supplyin selById(int id);
	
	int addSupplyin(Supplyin supplyin);
	
	int delSupplyin(int id);
	
	int updSupplyin(Supplyin supplyin);
}
