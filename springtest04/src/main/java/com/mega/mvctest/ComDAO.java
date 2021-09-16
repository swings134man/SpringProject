package com.mega.mvctest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ComDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	public int insert(ComDTO comDTO) {
		int result = mybatis.insert("computer.insert", comDTO);
		return result;
	}
	
	
}
