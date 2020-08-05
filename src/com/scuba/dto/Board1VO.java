package com.scuba.dto;

import java.sql.Date;

public class Board1VO {
	private int num;
	private String title;
	private String pass;
	private String name;
	private String phone;
	private int space;
	private int subject;
	private int pack;
	private int time;
	private int readcount;
	private Date writedate;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getSpace() {
		return space;
	}
	public void setSpace(int space) {
		this.space = space;
	}
	public int getSubject() {
		return subject;
	}
	public void setSubject(int subject) {
		this.subject = subject;
	}
	public int getPack() {
		return pack;
	}
	public void setPack(int pack) {
		this.pack = pack;
	}
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
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
	@Override
	public String toString() {
		return "Board1VO [num=" + num + ", title=" + title + ", pass=" + pass + ", name=" + name + ", phone=" + phone
				+ ", space=" + space + ", subject=" + subject + ", pack=" + pack + ", time=" + time + ", readcount="
				+ readcount + ", writedate=" + writedate + "]";
	}
	
	
	
}
