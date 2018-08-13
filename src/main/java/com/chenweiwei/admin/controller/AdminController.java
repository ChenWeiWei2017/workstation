package com.chenweiwei.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class AdminController {

	@RequestMapping("login")
	public String index() {
		return "index";
	}
	
	@RequestMapping("admin")
	public String admin() {
		return "admin";
	}
	
	@RequestMapping("main")
	public String main() {
		return "main";
	}
	
	@RequestMapping("test/test")
	public String test() {
		return "test/test";
	}
}
