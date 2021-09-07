package com.mega.mvc14;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {

	
	@Autowired
	SqlSessionTemplate pro;
	
	@SuppressWarnings("finally")
	public int insert(ProductDTO productDTO) {
		System.out.println(productDTO);
		int result = 0;
		try {
			result = pro.insert("proMapper.create", productDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			return result;
		}
	}
	
	
	public ProductDTO read(ProductDTO productDTO) {
		
		ProductDTO dto = pro.selectOne("proMapper.one", productDTO);
		return dto;
	
	}
	
	
	
}
