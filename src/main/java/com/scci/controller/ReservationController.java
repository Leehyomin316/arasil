package com.scci.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.scci.service.ReservationService;
import com.scci.vo.RoomInfoVO;

@Controller
@RequestMapping("/reservation")
public class ReservationController {
	@Autowired
	private ReservationService service;
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String register(@RequestParam Map<String, String> param, Model model) {
		if ( param.get("reserveDt") == null ) {
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
	        Calendar c1 = Calendar.getInstance();
			param.put("reserveDt", sdf.format(c1.getTime()));
		}
		List<Map<String, String>> roomInfos = service.getRoomInfos(param);
		model.addAttribute("roomInfoList", roomInfos);
		return "reservation/register";
	}
	/*
	 * ajax 형태로 호출 할 경우 아래와 같이 사용 할 수 있다.
	 * 
	 * */
	@RequestMapping(value="/getRoomInfo", method=RequestMethod.GET)
	public String getRoomInfo(@RequestParam Map<String, String> param, Model model) {
		List<Map<String, String>> roomInfos = service.getRoomInfos(param);
		model.addAttribute("roomInfoList", roomInfos);
		return "jsonView";
	}
	
	@RequestMapping(value="/getNearestDt", method=RequestMethod.GET)
	public String getNearestDt(@RequestParam Map<String, String> param, Model model) {
		Map<String, String> nearestDt = service.getNearestDt(param);
		model.addAttribute("nearestDt", nearestDt);
		return "jsonView";
	}
	
	@RequestMapping(value="/roomSchedule", method=RequestMethod.GET)
	public String reservationStatus(@RequestParam Map<String, String> param, Model model) {
		return "reservation/roomSchedule";
	}
	
	@RequestMapping(value="/getRoomSchedules", method=RequestMethod.GET)
	public String getRoomSchedules(@RequestParam Map<String, String> param, Model model) {
		List<Map<String, String>> scheduleInfos = service.getRoomSchedules(param);
		model.addAttribute("scheduleInfos", scheduleInfos);
		return "jsonView";
	}
	
	@RequestMapping(value="/addReservation", method=RequestMethod.POST)
	public String addReservation(@RequestParam Map<String, String> param, Model model) {
		service.insertReservation(param);	
		return "reservation/roomSchedule";
	}
}
