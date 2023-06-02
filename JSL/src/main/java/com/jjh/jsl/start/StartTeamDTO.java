package com.jjh.jsl.start;

import org.apache.ibatis.type.Alias;

@Alias("team")
public class StartTeamDTO {
	private int teamNo;
	private String teamName;
	private String teamID;
	private int leagueNo;
	private int adminNo;
	private int adminName;

	public int getTeamNo() {
		return teamNo;
	}
	public void setTeamNo(int teamNo) {
		this.teamNo = teamNo;
	}
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	public String getTeamID() {
		return teamID;
	}
	public void setTeamID(String teamID) {
		this.teamID = teamID;
	}
	public int getLeagueNo() {
		return leagueNo;
	}
	public void setLeagueNo(int leagueNo) {
		this.leagueNo = leagueNo;
	}
	public int getAdminNo() {
		return adminNo;
	}
	public void setAdminNo(int adminNo) {
		this.adminNo = adminNo;
	}
	public int getAdminName() {
		return adminName;
	}
	public void setAdminName(int adminName) {
		this.adminName = adminName;
	}
	
}
