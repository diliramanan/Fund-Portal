package org.com.controller;

import org.com.model.Login;
import org.com.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class LoginController {
@Autowired
LoginService loginService;	
	@RequestMapping("/dashboard.do")
	 public ModelAndView dashboard(@ModelAttribute("Login")Login login) {
		String name=login.getUserId();
		System.out.println("hello " +login.getUserId());;
		 loginService.logindetails(login);
		return new ModelAndView("dashboard","name", name);
	 }
}
