package com.jjh.jsl.teamManage;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TeamManageDAO {

	ArrayList<TeamManageDTO> getLeagueList();

	ArrayList<TeamManageDTO> getTeamList(int leagueValue);

}
