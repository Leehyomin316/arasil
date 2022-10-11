package com.scci.service;

import java.util.List;
import java.util.Map;

public interface ReservationService {
	public List<Map<String, String>> getRoomInfos(Map<String, String> param);
	public Map<String, String> getNearestDt(Map<String, String> param);
	public List<Map<String, String>> getRoomSchedules(Map<String, String> param);
	
	public int insertReservation(Map<String, String> param);
}
