package com.scuba.dto;

public class MemberVO {
private int num;
private String userid;
private String pwd;
private String name;
private Integer sex;
private String tel;
private String phone;
private String email;
private String address;
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
public String getPwd() {
	return pwd;
}
public void setPwd(String pwd) {
	this.pwd = pwd;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getSex() {
	return sex;
}
public void setSex(int sex) {
	this.sex = sex;
}
public String getTel() {
	return tel;
}
public void setTel(String tel) {
	this.tel = tel;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
@Override
public String toString() {
	return "MemberVO [num=" + num + ", userid=" + userid + ", pwd=" + pwd + ", name=" + name + ", sex=" + sex + ", tel="
			+ tel + ", phone=" + phone + ", email=" + email + ", address=" + address + "]";
}

}
