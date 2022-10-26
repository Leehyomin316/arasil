package com.scci.dao;

import java.util.List;
import java.util.Map;

import com.scci.vo.NoticeVO;

public interface BoardDAO {
	//게시물 목록 보기
	public List<NoticeVO> getNotice(NoticeVO noticeVO);
	
	public int getNoticeInsert(NoticeVO noticeVO);
	// 상세보기
	public int getFAQInsert(NoticeVO noticeVO);

	public NoticeVO getNoticeContent(int noticeId); 
	
	public int updateNotice(NoticeVO noticeVO);

	public NoticeVO getNoticeFAQ(int noticeId);

	public int updateFAQ(NoticeVO noticeVO);

}
