package com.jjh.jsl.start;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StartController {

	
	@GetMapping(value="/")
	public String main(Model model, HttpSession session) {
		
		return "login";
	}
	@GetMapping(value="/main.go")
	public String mainGo(Model model, HttpSession session) {
		
		return "index";
	}
	
}
