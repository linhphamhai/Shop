package com.shop.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class HomeController {
	private Logger logger = Logger.getLogger(HomeController.class);
	@GetMapping
	public String showHome() {
		logger.info("Hello");
		return "home";
		
	}
}
