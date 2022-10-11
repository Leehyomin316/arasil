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
	public List<NoticeVO> getNotice(NoticeVO noticeVO) {
		return sqlSession.selectList("mapper.notice.selectNotice", noticeVO);
	}

	@Override
	public int getNoticeInsert(NoticeVO noticeVO) {
		return sqlSession.insert("mapper.notice.selectInsert", noticeVO);
	}
	
	@Override
	public NoticeVO getNoticeContent(int noticeId) {
		return sqlSession.selectOne("mapper.notice.selectContent", noticeId);
	}

}
