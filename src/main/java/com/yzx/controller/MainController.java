package com.yzx.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author YZX
 * @date 2020��4��30��
 * @time ����7:51:07
 */
@Controller
public class MainController {
	
	@RequestMapping("{page}") 
	public String main(@PathVariable String page) {
		return page; 
	}
	//test
}
