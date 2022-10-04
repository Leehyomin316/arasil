package com.scci.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/reservation")
public class ReservationController {
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String register(@RequestParam Map<String, String> param, Model model) {
		return "reservation/register";
	}
}
