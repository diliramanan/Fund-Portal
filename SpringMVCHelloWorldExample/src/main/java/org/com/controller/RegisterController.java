
package org.com.controller;

import org.com.model.Login;
import org.com.model.Register;
import org.com.service.LoginService;
import org.com.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegisterController {
	
@Autowired
RegisterService registerService;
LoginService loginService;
	
	@RequestMapping("/entry.do")
	 public ModelAndView entry(Model model) {
		//model.addAttribute("register", new Register());
		String message="USER EXPENSE PORTAL";
		return new ModelAndView("start","message",message);
	 }
	
 @RequestMapping("/signup.do")
 public ModelAndView hello() {
	
  return new ModelAndView("reg");
 }
 @RequestMapping("/login.do")
 public ModelAndView sign(@ModelAttribute("Register")Register register) {
	 System.out.println(" hello "+register.getFirstName());
	 registerService.registeruserDetails(register);
  return new ModelAndView("login");
 }
 
 
}


