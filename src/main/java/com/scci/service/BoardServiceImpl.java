package com.scci.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.scci.dao.BoardDAO;
import com.scci.vo.FaqVO;
import com.scci.vo.NoticeVO;

@Service
public class BoardServiceImpl implements BoardService{
	@Autowired
	private BoardDAO boardDAO;
	
	@Override 
	public List<NoticeVO> getNotice(NoticeVO noticeVO){
	return boardDAO.getNotice(noticeVO);
	}
	
	@Override
	public void getNoticeInsert(NoticeVO noticeVO) {
		boardDAO.getNoticeInsert(noticeVO);
	}
	
	@Override
	public NoticeVO getNoticeContent(int noticeId) {
		return boardDAO.getNoticeContent(noticeId);
	}
	
	@Override
	public int updateNotice(NoticeVO noticeVO) {
		return boardDAO.updateNotice(noticeVO);
	}

	@Override
	public int deleteNotice(NoticeVO noticeVO) {
		return boardDAO.deleteNotice(noticeVO);
	}

	@Override
	public List<FaqVO> getBoardFAQ() {
		return boardDAO.getBoardFAQ();
	}

	@Override
	public void getFAQInsert(FaqVO faqVO) {
		boardDAO.getFAQInsert(faqVO);
	}


}
