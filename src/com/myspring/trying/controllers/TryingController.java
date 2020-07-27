package com.myspring.trying.controllers;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TryingController {
	
//	@RequestMapping("/trying")
//	public String showPage(HttpSession session) {
//		session.setAttribute("name","Mk");
//		
//		return "trying";
//	}
	
//	@RequestMapping("/trying")
//	public String showPage(Model model) {
//		model.addAttribute("name","Using Model");
//		
//		return "trying";
//	}
	
	@RequestMapping("/trying")
	public ModelAndView showPage() {
		ModelAndView mv = new ModelAndView("trying");
		
		Map<String, Object> mapp = mv.getModel();
		
		mapp.put("name", "Using MandV");
		
		return mv;
	}


}
