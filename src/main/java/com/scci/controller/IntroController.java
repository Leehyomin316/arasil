package com.scci.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/intro")
public class IntroController {
	@RequestMapping(value="/introLocation", method=RequestMethod.GET)
	public String introLocation() {
		return "intro/introLocation";
	}
	@RequestMapping(value="/introPlace", method=RequestMethod.GET)
	public String introPlace() {
		return "intro/introPlace";
	}
	@RequestMapping(value="/introSurround", method=RequestMethod.GET)
	public String introSurround() {
		return "intro/introSurround";
	}
}
