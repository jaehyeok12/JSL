package com.jjh.jsl.teamManage;

import org.apache.ibatis.type.Alias;

@Alias("teamManage")
public class TeamManageDTO {
	private int LeagueNo;
	private String LeagueName;
	private int LeagueLV;
	private String LeagueContent;
	
	private int teamNo;
	private String teamName;
	private String teamID;
	private int adminNo;
	private String adminName;
	
	private boolean act;
	private String hometown;
	private String createDate;
	
	public int getLeagueNo() {
		return LeagueNo;
	}
	public void setLeagueNo(int leagueNo) {
		LeagueNo = leagueNo;
	}
	public String getLeagueName() {
		return LeagueName;
	}
	public void setLeagueName(String leagueName) {
		LeagueName = leagueName;
	}
	public int getLeagueLV() {
		return LeagueLV;
	}
	public void setLeagueLV(int leagueLV) {
		LeagueLV = leagueLV;
	}
	public String getLeagueContent() {
		return LeagueContent;
	}
	public void setLeagueContent(String leagueContent) {
		LeagueContent = leagueContent;
	}
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
	public boolean isAct() {
		return act;
	}
	public void setAct(boolean act) {
		this.act = act;
	}
	public String getHometown() {
		return hometown;
	}
	public void setHometown(String hometown) {
		this.hometown = hometown;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	
	
}
