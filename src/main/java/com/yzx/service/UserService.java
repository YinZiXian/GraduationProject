package com.yzx.service;

import java.util.List;

import com.yzx.pojo.User;


/**
 * @author YZX
 * @date 2020��4��26��
 * @time ����10:03:42
 */

public interface UserService {

	List<User> selUser(int pageNumber, int pageSize);
	
	int selUserCount();
	
	User selById(int id);
	
	int addUser(User user);
	
	int delUser(int id);
	
	int updUser(User user);
	
	User checkUser(String userid, String psw);
}
