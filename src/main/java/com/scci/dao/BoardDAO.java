package com.scci.dao;

import java.util.List;
import java.util.Map;

import com.scci.vo.NoticeVO;

public interface BoardDAO {
	//게시물 목록 보기
	public List<NoticeVO> getNotice(NoticeVO noticeVO);
	
	public List<Map<String,String>> getNoticeContent(Map<String, String> param);
	
	public int getNoticeInsert(NoticeVO noticeVO);
	
	public int getNoticeUpdate(NoticeVO noticeVO);
	
	public int getNoticeDelete(int noticeNo);
}
