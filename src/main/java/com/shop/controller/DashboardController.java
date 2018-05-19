package com.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("manager")
public class DashboardController {
	
	
	@RequestMapping(value = "dashboard", method = RequestMethod.GET)
	public String showDashBoard() {
		return "admin/dashboard";
	}
}
