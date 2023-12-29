package com.model;

public class User {

	public String MSV;
	private String HoTen;
	private int Trangthai;

	public User() {
		super();
	}

	public User(String mSV, String hoTen, int trangthai) {
		super();
		MSV = mSV;
		HoTen = hoTen;
		Trangthai = trangthai;
	}

	public String getMSV() {
		return MSV;
	}

	public void setMSV(String mSV) {
		MSV = mSV;
	}

	public String getHoTen() {
		return HoTen;
	}

	public void setHoTen(String hoTen) {
		HoTen = hoTen;
	}

	public int getTrangthai() {
		return Trangthai;
	}

	public void setTrangthai(int trangthai) {
		Trangthai = trangthai;
	}
	
	

	

	

}
