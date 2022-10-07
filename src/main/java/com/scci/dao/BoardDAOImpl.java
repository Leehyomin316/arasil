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
	public List<Map<String, String>> getNoticeContent(Map<String, String> param){
		return sqlSession.selectList("mapper.notice.selectContent", param);
	}

	@Override
	public int getNoticeInsert(NoticeVO noticeVO) {
		return sqlSession.insert("mapper.notice.selectInsert", noticeVO);
	}

	@Override
	public int getNoticeUpdate(NoticeVO noticeVO) {
		return sqlSession.update("mapper.notice.selectupdate", noticeVO);
	}

	@Override
	public int getNoticeDelete(int noticeNo) {
		return sqlSession.insert("mapper.notice.selectdelete", noticeNo );
	}
}
