package com.scci.dao;

import java.util.List;
import java.util.Map;

import com.scci.vo.NoticeVO;

public interface BoardDAO {
	//게시물 목록 보기
	public List<NoticeVO> getNoticePage(Map<String, String> params);
}
