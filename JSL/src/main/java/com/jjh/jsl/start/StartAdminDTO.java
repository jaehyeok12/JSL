package com.jjh.jsl.start;

import org.apache.ibatis.type.Alias;

@Alias("admin")
public class StartAdminDTO {
	private int adminNo;
	private String adminName;
	private String adminID;
	public int getAdminNo() {
		return adminNo;
	}
	public void setAdminNo(int adminNo) {
		this.adminNo = adminNo;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminID() {
		return adminID;
	}
	public void setAdminID(String adminID) {
		this.adminID = adminID;
	}
	
	
}
