package com.scuba.dto;

import java.sql.Date;

public class Board2VO {
	private int num;
	private String userid;
	private String name;
	private String pass;
	private String title;
	private String pictureurl1;
	private String pictureurl2;
	private int readcount;
	private Date writedate;
	private String content;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPictureurl1() {
		return pictureurl1;
	}
	public void setPictureurl1(String pictureurl1) {
		this.pictureurl1 = pictureurl1;
	}
	public String getPictureurl2() {
		return pictureurl2;
	}
	public void setPictureurl2(String pictureurl2) {
		this.pictureurl2 = pictureurl2;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public Date getWritedate() {
		return writedate;
	}
	public void setWritedate(Date writedate) {
		this.writedate = writedate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "Board2VO [num=" + num + ", userid=" + userid + ", name=" + name + ", pass=" + pass + ", title=" + title
				+ ", pictureurl1=" + pictureurl1 + "pictureurl2=" + pictureurl2 + ", readcount=" + readcount + ", writedate=" + writedate + ", content="
				+ content + "]";
	}
	
}
