package com.jjh.jsl.start;

import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface StartDAO {

	int adminLogin(String id, String pw);

	int teamLogin(String id, String pw);

	StartAdminDTO getAdminInfo(String id);

	StartTeamDTO getTeamInfo(String id);

}
