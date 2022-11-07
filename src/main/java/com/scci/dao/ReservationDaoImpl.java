package com.scci.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.scci.paging.Criteria;
import com.scci.vo.ReservationVO;

@Repository
public class ReservationDaoImpl implements ReservationDao{
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<Map<String, String>> getRoomInfos(Map<String, String> param) {
		return sqlSession.selectList("mapper.reservation.selectRoomInfos", param);
	}

	@Override
	public Map<String, String> getNearestDt(Map<String, String> param) {
		return sqlSession.selectOne("mapper.reservation.getNearestDt", param);
	}
	
	@Override
	public List<Map<String, String>> getRoomSchedules(Map<String, String> param) {
		return sqlSession.selectList("mapper.reservation.getReservedList", param);
	}

	@Override
	public int insertReservation(Map<String, String> param) {
		return sqlSession.insert("mapper.reservation.addReservation", param);
	}

	@Override
	public List<ReservationVO> getReservations(Criteria cri) {
		return sqlSession.selectList("mapper.reservation.selectReservations", cri);
	}

	@Override
	public int getReservationTotal() {
		return sqlSession.selectOne("mapper.reservation.selectTotal");
	}

	@Override
	public int updateStatus(ReservationVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.insert("mapper.reservation.updateStatus", vo);
	}
	
	@Override
	public List<ReservationVO> checkReservation(ReservationVO vo) {
		return sqlSession.selectList("mapper.reservation.checkReservation", vo);
	}
	@Override
	public long cancelReserv(long reservSeq) {
		return sqlSession.delete("mapper.reservation.cancelReserv", reservSeq);
	}
}
