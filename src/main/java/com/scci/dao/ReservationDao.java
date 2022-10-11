package com.scci.dao;

import java.util.List;
import java.util.Map;

public interface ReservationDao {
	public List<Map<String, String>> getRoomInfos(Map<String, String> param);
	public Map<String, String> getNearestDt(Map<String, String> param);
	public List<Map<String, String>> getRoomSchedules(Map<String, String> param);
	
	public int insertReservation(Map<String, String> param);
}
