package org.bhavin.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
	
	@GetMapping("/showLoginPage")
	public String showMyLoginPage() {
		// return "login-page";
		return "fancy-login";
	}
	
	@GetMapping("/access-denied")
	public String show403Page() {
		return "accessDenied";
	}
	
}
