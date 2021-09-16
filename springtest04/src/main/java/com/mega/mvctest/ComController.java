package com.mega.mvctest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ComController {

	@Autowired
	ComDAO dao;
	
	@RequestMapping("make.do")
	public void insert(ComDTO comDTO) {
		int result = dao.insert(comDTO);
	}
	
	
	
}
