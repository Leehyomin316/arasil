package com.scci.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.scci.vo.FaqVO;
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
	public NoticeVO getNoticeContent(int noticeId) {
		return sqlSession.selectOne("mapper.notice.selectContent", noticeId);
	}
	@Override
	public int getNoticeInsert(NoticeVO noticeVO) {
		return sqlSession.insert("mapper.notice.selectInsert", noticeVO);
	}
	@Override
	public int deleteNotice(NoticeVO noticeVO) {
		return sqlSession.delete("mapper.notice.deleteNotice", noticeVO);
	}
	@Override
	public int updateNotice(NoticeVO noticeVO) {
		return sqlSession.update("mapper.notice.updateNotice", noticeVO);
	}

	
	
	@Override
	public List<FaqVO> getBoardFAQ() {
		return sqlSession.selectList("mapper.notice.selectFAQ");
	}
	
	@Override
	public int getFAQInsert(FaqVO faqVO) {
		return sqlSession.insert("mapper.notice.insertFAQ", faqVO);
	}

	public int updateFAQ(FaqVO faqVO) {
		return sqlSession.update("mapper.notice.updateFAQ", faqVO);
	}



}
