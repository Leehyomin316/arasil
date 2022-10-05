package com.scci.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class ReservationDaoImpl implements ReservationDao{
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<Map<String, String>> getRoomInfos() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.reservation.selectRoomInfos");
	}
}
