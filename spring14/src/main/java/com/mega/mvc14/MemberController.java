package com.mega.mvc14;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

// 싱글톤 객체, 스프링에 컨트롤로 등록. 
@Controller
public class MemberController {
	
	@Autowired
	MemberDAO dao; //스프링이 만들어놓은 싱글톤 객체의 주소를 넣어준다...!!!
	
	
	@RequestMapping("insertC.co")
	public void create(MemberDTO memberDTO) {
		System.out.println(memberDTO);
		dao.create(memberDTO);
		
	}
	
	@RequestMapping("one.do")
	public void one(MemberDTO memberDTO, Model model) {
		System.out.println(memberDTO.getId());
		MemberDTO dto = dao.read(memberDTO);
		// dto의 데이터는 views/one.jsp 로 출려되어야 클라이언트에게 보인다.
		// model 속성을 이용하면 views아래까지 데이터를보내고, 사라진다.
		System.out.println("DAO에서 넘어온 내용: " + dto);
		model.addAttribute("bag", dto);
	}
	
	
	
	
	@RequestMapping("login.mega")
	public String login(MemberDTO memberDTO) {
		// 컨트롤러의 메서드내에 선언된 파라메터는 무조건 프로토타입으로 만들어준다. 
		System.out.println(memberDTO);
		System.out.println("싱글톤으로 만들어진 주소 : " + dao);
		boolean result = dao.login(memberDTO);
		if (result) {
			return "ok";		//views/ok.jsp
		}else {
			return "no";		//views/no.jsp
		}//else
	}//login
	
	
	@RequestMapping("check.mega")
	public String check(String nick) {
		System.out.println(nick);
		if (nick.equals("superman")) {
			return "super";
		}else {
			return "common";
		}
	}
	
	@RequestMapping("password.mega")
	public String password(String pass) {
		System.out.println(pass);
		if (pass.equals("1234")) {
			return "pass";
		}else {
			return "redirect:index.jsp";
			//response.sendRedirect("index.jsp");
		}
	}
	
	@RequestMapping("list.mega")
	public void list(Model model) {
		List<MemberDTO> list = dao.list();
		model.addAttribute("list", list);
			System.out.println("전체 개수 : " + list.size());
	}
	
	@RequestMapping("delete.mega")
	public String delete(MemberDTO memberDTO) {
		System.out.println("넘어온 id : " + memberDTO.getId());
		int result = dao.delete(memberDTO);
		if (result == 1) {
			return "redirect:list.mega";
		}else {
			return "one";
		}
	}
	
	
	@RequestMapping("check2.mega")
	public void check(MemberDTO memberDTO, Model model) {
		System.out.println(memberDTO);
		MemberDTO dto= dao.check2(memberDTO);
		String result = "중복된 아이디가 없습니다. 사용가능";
		if (dto != null) {
			result = "중복된 아이디가 있습니다. 사용불가합니다";
		}
		model.addAttribute("result", result);
	}
}
