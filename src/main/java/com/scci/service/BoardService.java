package com.scci.service;

import java.util.List;

import com.scci.vo.FaqVO;
import com.scci.vo.NoticeVO;

public interface BoardService {
	public List<NoticeVO> getNotice(NoticeVO noticeVO);
	
	public void getNoticeInsert(NoticeVO noticeVO);

	public NoticeVO getNoticeContent(int noticeId);

	public int updateNotice(NoticeVO noticeVO);
	
	public int deleteNotice(NoticeVO noticeVO);
	

	public List<FaqVO> getBoardFAQ();

	public void getFAQInsert(FaqVO faqVO);


}
