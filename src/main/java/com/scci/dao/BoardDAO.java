package com.scci.dao;

import java.util.List;
import java.util.Map;

import com.scci.vo.NoticeVO;
import com.scci.vo.FaqVO;

public interface BoardDAO {
	
	//게시물 목록 보기
	public List<NoticeVO> getNotice();
	
	public int getNoticeInsert(NoticeVO noticeVO);
	// 상세보기
	public NoticeVO getNoticeContent(int noticeId); 
	// 수정페이지
	public int getNoticeUpdate(NoticeVO noticeVO);	
	// 삭제페이지
	public int getNoticeDelete(int noticeId);

//---------------------------------------------------------------------------------
	/*
	 * //게시물 목록 보기 
	 * public List<NoticeVO> getNotice(NoticeVO noticeVO);
	 * 
	 * public NoticeVO getNoticeContent(int noticeId);
	 * 
	 * public int getNoticeInsert(NoticeVO noticeVO); // 상세보기 public int
	 * deleteNotice(NoticeVO noticeVO);
	 * 
	 * public int updateNotice(NoticeVO noticeVO);
	 */

//----------------------------------------------------------------------------------
	public List<FaqVO> getBoardFAQ();
	
	/* public FaqVO faqContent(int faqId); */

	public int getFAQInsert(FaqVO faqVO);

	public int updateFAQ(FaqVO faqVO);

	public int deleteFAQ(FaqVO faqVO);

}
