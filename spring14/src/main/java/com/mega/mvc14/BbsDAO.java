package com.mega.mvc14;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BbsDAO {

	@Autowired
	SqlSessionTemplate my;
	
	public void create(BbsDTO bbsDTO) {
		System.out.println(bbsDTO);
		int result = my.insert("bbs.add", bbsDTO);
		System.out.println(result);
		
	}//create 
	
	
	public BbsDTO read(BbsDTO bbsDTO) {
		System.out.println("id 값 : " + bbsDTO.getId());
		BbsDTO dto1 = my.selectOne("bbs.one", bbsDTO);
		return dto1;
	}
	
	public List<BbsDTO> list() {
		List<BbsDTO> list = my.selectList("bbs.all");
		return list;
	}
	

	public void update() {

	}

	public void delete() {

	}

}
