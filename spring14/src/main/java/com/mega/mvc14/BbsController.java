package com.mega.mvc14;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BbsController {

	@Autowired
	BbsDAO dao;
	
	@RequestMapping("bbs.mega")
	public void insert(BbsDTO bbsDTO) {
		System.out.println(bbsDTO);
		dao.create(bbsDTO);
		
	}
	
	@RequestMapping("read1.do")
	public void read(BbsDTO bbsDTO, Model model) {
		System.out.println("id 값 : " + bbsDTO.getId());
		BbsDTO dto = dao.read(bbsDTO);
		model.addAttribute("bag", dto);
	}
	
	@RequestMapping("blist.mega")
	public void blist(Model model) {
		List<BbsDTO> list = dao.list();
		model.addAttribute("list", list);
	}
	

	
}
