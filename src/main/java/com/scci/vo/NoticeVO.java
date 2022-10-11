package com.scci.vo;

import java.util.Date;

public class NoticeVO {


	// Field
	   private int notice_id;
	   private String notice_title; // 게시물제목
	   private String notice_content; // 게시물내용
	   private Date notice_date; // 게시물작성일자
	   private String user_id; // 게시물작성자
	   public int getNotice_id() {
	      return notice_id;
	   }
	   public void setNotice_id(int notice_id) {
	      this.notice_id = notice_id;
	   }
	   public String getNotice_title() {
	      return notice_title;
	   }
	   public void setNotice_title(String notice_title) {
	      this.notice_title = notice_title;
	   }
	   public String getNotice_content() {
	      return notice_content;
	   }
	   public void setNotice_content(String notice_content) {
	      this.notice_content = notice_content;
	   }
	   public Date getNotice_date() {
	      return notice_date;
	   }
	   public void setNotice_date(Date notice_date) {
	      this.notice_date = notice_date;
	   }
	   public String getUser_id() {
	      return user_id;
	   }
	   public void setUser_id(String user_id) {
	      this.user_id = user_id;
	   }
}
