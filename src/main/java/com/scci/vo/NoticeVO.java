package com.scci.vo;

import java.util.Date;

public class NoticeVO {
	   private long noticeId;
	   private String noticeTitle; // 게시물제목
	   private String noticeContent; // 게시물내용
	   private Date noticeDate; // 게시물작성일자
	   private String userId; // 게시물작성자
	   private String noticeFAQ; // 자주묻는질문
	public String getNoticeFAQ() {
		return noticeFAQ;
	}
	public void setNoticeFAQ(String noticeFAQ) {
		this.noticeFAQ = noticeFAQ;
	}
	public long getNoticeId() {
		return noticeId;
	}
	public void setNoticeId(long noticeId) {
		this.noticeId = noticeId;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public Date getNoticeDate() {
		return noticeDate;
	}
	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	   
}
