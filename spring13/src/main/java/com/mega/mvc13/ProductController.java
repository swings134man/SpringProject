package com.mega.mvc13;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {

	@Autowired
	ProductDAO dao;
	
	@RequestMapping("prod.go")
	public String insert(ProductDTO productDTO) {
		System.out.println(productDTO);
		int result = dao.insert(productDTO);
		if (result == 1) {
			return "ok2";
		}else {
			return "no2";
		}
	}
	
	@RequestMapping("read2.do")
	public void read(ProductDTO productDTO, Model model) {
		System.out.println("id 값 : " + productDTO.getId());
		ProductDTO dto = dao.read(productDTO);
		model.addAttribute("bag", dto);
	}
	
}
