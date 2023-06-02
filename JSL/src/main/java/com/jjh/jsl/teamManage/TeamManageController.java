package com.jjh.jsl.teamManage;

import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class TeamManageController {
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired TeamManageService teamManageService;
	
	@PostMapping(value="/{}/leagueSelect.ajax")
	@ResponseBody
	public HashMap<String, Object> leagueSelectCall(){
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		ArrayList<TeamManageDTO> leagueList = teamManageService.getLeagueList();
		map.put("list", leagueList);
		return map;
	}
	
	@PostMapping(value="/{}/teamListcall.ajax")
	@ResponseBody
	public HashMap<String, Object> teamListcall(@RequestParam int leagueValue){
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		ArrayList<TeamManageDTO> leagueList = teamManageService.getTeamList(leagueValue);
		map.put("list", leagueList);
		return map;
	}
	
}
