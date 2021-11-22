package com.mega.boot01;

public class VO {

	private String name;
	private String tel;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	@Override
	public String toString() {
		return "VO [name=" + name + ", tel=" + tel + "]";
	} 
	
	
	
	
} //class
