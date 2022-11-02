package com.scci.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.scci.dao.ReservationDao;
import com.scci.paging.Criteria;
import com.scci.vo.ReservationVO;

@Service
public class ReservationServiceImpl implements ReservationService {
	@Autowired
	private ReservationDao dao;

	@Override
	public List<Map<String, String>> getRoomInfos(Map<String, String> param) {
		// TODO Auto-generated method stub
		return dao.getRoomInfos(param);
	}

	@Override
	public Map<String, String> getNearestDt(Map<String, String> param) {
		// TODO Auto-generated method stub
		return dao.getNearestDt(param);
	}

	@Override
	public List<Map<String, String>> getRoomSchedules(Map<String, String> param) {
		// TODO Auto-generated method stub
		return dao.getRoomSchedules(param);
	}

	@Override
	public int insertReservation(Map<String, String> param) {
		// TODO Auto-generated method stub
		return dao.insertReservation(param);
	}

	@Override
	public List<ReservationVO> getReservations(Criteria cri) {
		// TODO Auto-generated method stub
		return dao.getReservations(cri);
	}

	@Override
	public int getReservationTotal() {
		// TODO Auto-generated method stub
		return dao.getReservationTotal();
	}

	@Override
	public int updateStatus(List<String> ids, List<String> codes) {
		int index = 0;
		int result = 0;
		for(String id : ids) {
			ReservationVO vo = new ReservationVO();
			vo.setReservSeq(Long.parseLong(id));
			vo.setReservCode(codes.get(index));
			index++;
			result += dao.updateStatus(vo);
		}
		return result;
	}
	
}
