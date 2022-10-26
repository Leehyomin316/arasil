package com.scci.service;

import java.util.List;
import java.util.Map;

import com.scci.vo.NoticeVO;

public interface BoardService {
	public List<NoticeVO> getNotice(NoticeVO noticeVO);
	
	public void getNoticeInsert(NoticeVO noticeVO);

	public void getFAQInsert(NoticeVO noticeVO);
	
	public NoticeVO getNoticeContent(int noticeId);
	
	public int updateNotice(NoticeVO noticeVO);
	
	public NoticeVO getBoardFAQ(int noticeId);

	public int updateFAQ(NoticeVO noticeVO);

	public int deleteNotice(NoticeVO noticeVO);
}
