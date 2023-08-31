package com.models;

public class BookingSlot {
	private int s_id,doc_id;
	private String date,ftime,ttime;
	/**
	 * @return the s_id
	 */
	public int getS_id() {
		return s_id;
	}
	/**
	 * @param s_id the s_id to set
	 */
	public void setS_id(int s_id) {
		this.s_id = s_id;
	}
	/**
	 * @return the doc_id
	 */
	public int getDoc_id() {
		return doc_id;
	}
	/**
	 * @param doc_id the doc_id to set
	 */
	public void setDoc_id(int doc_id) {
		this.doc_id = doc_id;
	}
	/**
	 * @return the date
	 */
	public String getDate() {
		return date;
	}
	/**
	 * @param date the date to set
	 */
	public void setDate(String date) {
		this.date = date;
	}
	/**
	 * @return the ftime
	 */
	public String getFtime() {
		return ftime;
	}
	/**
	 * @param ftime the ftime to set
	 */
	public void setFtime(String ftime) {
		this.ftime = ftime;
	}
	/**
	 * @return the ttime
	 */
	public String getTtime() {
		return ttime;
	}
	/**
	 * @param ttime the ttime to set
	 */
	public void setTtime(String ttime) {
		this.ttime = ttime;
	}
}
