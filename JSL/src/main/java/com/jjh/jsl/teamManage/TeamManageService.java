package com.jjh.jsl.teamManage;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TeamManageService {
	@Autowired TeamManageDAO teamManagerDAO;
	Logger logger = LoggerFactory.getLogger(getClass());
	public ArrayList<TeamManageDTO> getLeagueList() {
		return teamManagerDAO.getLeagueList();
		
	}
	
	public ArrayList<TeamManageDTO> getTeamList(int leagueValue) {
		// TODO Auto-generated method stub
		return teamManagerDAO.getTeamList(leagueValue);
	}

}
