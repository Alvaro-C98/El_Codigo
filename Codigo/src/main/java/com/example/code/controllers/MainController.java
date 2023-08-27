package com.example.code.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MainController {
	
	@RequestMapping("/")
	public String home() {
		return "index.jsp";
	}
	
	@PostMapping("/validate")
	public String validate(@RequestParam(value="password") String pass, RedirectAttributes error) {
		if(!pass.equals("bushido")) {
			error.addFlashAttribute("error","You must train harder!");
			return "redirect:/";
		}
		return "redirect:/code";
	}
	
	@RequestMapping("/code")
	public String code(Model model) {
		String [] dates = {"Loyalty","Courage","Veracity","Compassion","Honor"};
		model.addAttribute("dates",dates);
		return "code.jsp";
	}
}
