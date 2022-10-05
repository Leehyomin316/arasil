package com.scci.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.scci.vo.NoticeVO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<NoticeVO> getNoticePage(Map<String, String> params) {
		return sqlSession.selectList("mapper.oracle.test.selectNoitce", params);
	}
}
