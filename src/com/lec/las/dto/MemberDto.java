package com.lec.las.dto;

import java.sql.Date;

public class MemberDto {
	private String id;
	private String pw;
	private String name;
	private Date birth;
	private double weight;
	public MemberDto() { }
	public MemberDto(String id, String pw, String name, Date birth, double weight) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.birth = birth;
		this.weight = weight;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public double getWeight() {
		return weight;
	}
	public void setWeight(double weight) {
		this.weight = weight;
	}
	@Override
	public String toString() {
		return "{\"id\":\"" + id + "\", \"pw\":\"" + pw + "\", \"name\":\"" + name + "\","
				+ " \"birth\": \"" + birth +"\", \"weight\":"+weight+"}";
	}
}
