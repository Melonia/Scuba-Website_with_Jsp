package com.scuba.dto;

public class BulletinVO {
	private int num;
	private String pictureurl;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getPictureurl() {
		return pictureurl;
	}
	public void setPictureurl(String pictureurl) {
		this.pictureurl = pictureurl;
	}
	@Override
	public String toString() {
		return "BulletinVO [num=" + num + ", pictureurl=" + pictureurl + "]";
	}
}
