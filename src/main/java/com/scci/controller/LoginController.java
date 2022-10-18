package com.scci.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.scci.service.TestService;

@Controller
public class LoginController {
	@Autowired
	private TestService testService;
	@RequestMapping("/login")
	public String index() {
		return "login";
	}
	
	@RequestMapping("/accessDenied")
	public String accessDenied() {
		return "accessDenied";
	}
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String loout(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null) {
        	new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/admin/login.do";
    }

}
