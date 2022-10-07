package com.scci.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.scci.dao.ReservationDao;

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
}
