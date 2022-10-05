package com.scci.vo;

import java.util.Date;

public class NoticeVO {
	// Field

	private int noticeNo;          // 게시물번호
	private String noticeTitle;    // 게시물제목
	private String noticeContent;  // 게시물내용
	private String noticeWriter;   // 게시물작성자
	private Date noticeDate;       // 게시물작성일자


	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
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

	public String getNoticeWriter() {
		return noticeWriter;
	}

	public void setNoticeWriter(String noticeWriter) {
		this.noticeWriter = noticeWriter;
	}

	public Date getNoticeDate() {
		return noticeDate;
	}

	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}
	
	// 생성자 함수
	public NoticeVO() {
	}

	public NoticeVO(int noticeNo, String noticeTitle, String noticeWriter, Date noticeDate) {
		super();
		this.noticeNo = noticeNo;
		this.noticeTitle = noticeTitle;
		this.noticeWriter = noticeWriter;
		this.noticeDate = noticeDate;
	}
	
	// toString
	@Override
	public String toString() {
		return "NoticeVO [noticeNo=" + noticeNo + ", noticeTitle= " + noticeTitle + ",noticeContent" + noticeContent
				+ ", noticeWriter" + noticeWriter + ", noticeDate=" + noticeDate + "]";
	}
}
