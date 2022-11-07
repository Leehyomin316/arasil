package com.scci.dao;

import java.util.List;
import java.util.Map;

import com.scci.paging.Criteria;
import com.scci.vo.ReservationVO;

public interface ReservationDao {
	public List<Map<String, String>> getRoomInfos(Map<String, String> param);
	public Map<String, String> getNearestDt(Map<String, String> param);
	public List<Map<String, String>> getRoomSchedules(Map<String, String> param);
	
	public int insertReservation(Map<String, String> param);
	
	public List<ReservationVO> getReservations(Criteria cri);
	public int getReservationTotal();
	
	public int updateStatus(ReservationVO vo);
	
	public List<ReservationVO> checkReservation(ReservationVO vo);
	public long cancelReserv(long reservSeq);
}
