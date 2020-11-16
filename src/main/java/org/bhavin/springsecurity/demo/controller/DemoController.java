package org.bhavin.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {
	
	@GetMapping("/")
	public String showHomePage() {
		return "home";
	}
	
	@GetMapping("/leaders")
	public String showLeaderPage() {
		return "leaders";
	}
	
	@GetMapping("/system")
	public String showSystemPage() {
		return "system";
	}
	
}
