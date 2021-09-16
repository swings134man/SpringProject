package com.mega.mvctest;

public class ComDTO {

	private String comid;
	private String title;
	private String content;
	private String company;
	public String getComid() {
		return comid;
	}
	public void setComid(String comid) {
		this.comid = comid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	@Override
	public String toString() {
		return "ComDTO [comid=" + comid + ", title=" + title + ", content=" + content + ", company=" + company + "]";
	}
	
	
	
	
}
