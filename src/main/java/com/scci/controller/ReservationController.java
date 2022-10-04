package com.scci.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.scci.vo.RoomInfoVO;

@Controller
@RequestMapping("/reservation")
public class ReservationController {
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String register(@RequestParam Map<String, String> param, Model model) {
		return "reservation/register";
	}
	/*
	 * ajax 형태로 호출 할 경우 아래와 같이 사용 할 수 있다.
	 * 
	 * */
	@RequestMapping(value="/getRoomInfo", method=RequestMethod.GET)
	public String getRoomInfo(@RequestParam Map<String, String> param, Model model) {
		RoomInfoVO room = new RoomInfoVO();
		room.setRoomNm("청실홍실");
		model.addAttribute("rooms", room);
		return "jsonView";
	}
}
