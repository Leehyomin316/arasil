package com.scci.vo;

import java.sql.Timestamp;

public class ReservationVO {
	private long roomId;
	private String roomNm;
	private String guestNm;
	private String guestCellPhone;
	private String startDt;
	private String endDt;
	private Timestamp reserveDt;
	private String reservCode;
	private int extraPerson;
	private int days;
	private int totalFee;
	private long reservSeq;
	
	public long getReservSeq() {
		return reservSeq;
	}
	public void setReservSeq(long reservSeq) {
		this.reservSeq = reservSeq;
	}
	public int getDays() {
		return days;
	}
	public void setDays(int days) {
		this.days = days;
	}
	public long getRoomId() {
		return roomId;
	}
	public void setRoomId(long roomId) {
		this.roomId = roomId;
	}
	public String getRoomNm() {
		return roomNm;
	}
	public void setRoomNm(String roomNm) {
		this.roomNm = roomNm;
	}
	public String getGuestNm() {
		return guestNm;
	}
	public void setGuestNm(String guestNm) {
		this.guestNm = guestNm;
	}
	public String getGuestCellPhone() {
		return guestCellPhone;
	}
	public void setGuestCellPhone(String guestCellPhone) {
		this.guestCellPhone = guestCellPhone;
	}
	public String getStartDt() {
		return startDt;
	}
	public void setStartDt(String startDt) {
		this.startDt = startDt;
	}
	public String getEndDt() {
		return endDt;
	}
	public void setEndDt(String endDt) {
		this.endDt = endDt;
	}
	public Timestamp getReserveDt() {
		return reserveDt;
	}
	public void setReserveDt(Timestamp reserveDt) {
		this.reserveDt = reserveDt;
	}
	public String getReservCode() {
		return reservCode;
	}
	public void setReservCode(String reservCode) {
		this.reservCode = reservCode;
	}
	public int getExtraPerson() {
		return extraPerson;
	}
	public void setExtraPerson(int extraPerson) {
		this.extraPerson = extraPerson;
	}
	public int getTotalFee() {
		return totalFee;
	}
	public void setTotalFee(int totalFee) {
		this.totalFee = totalFee;
	}
	
}

