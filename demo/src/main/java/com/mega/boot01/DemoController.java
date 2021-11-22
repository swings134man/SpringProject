package com.mega.boot01;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DemoController {


		@RequestMapping("hello2")
		public String call2(Model model) {
			model.addAttribute("result", "win");
			return "h2";
		}// call2
		
		@RequestMapping("hello3")
		public String call3(String name ,Model model) {
			model.addAttribute("result", name + "win");
			return "h3";
		}
		
		@RequestMapping("hello4")
		public String call4(VO vo ,Model model) {
			model.addAttribute("result", vo);
			return "h4";
		}
		
		
		
}// class
