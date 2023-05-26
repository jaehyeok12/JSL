package com.jjh.jsl.start;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Service;
@Service
public class StartService {

	Logger logger = LoggerFactory.getLogger(getClass());
	private final StartDAO startDAO;
	@Autowired
	public StartService(StartDAO startDAO) {
		this.startDAO = startDAO;
	}
	public int doLogin(String loginType, String id, String pw) {
		int cnt = 0;//ID, PW가 동시에 일치하는 지를 확인할 변수
		if(loginType.equals("admin")) {//관계자 로그인
			logger.info("service admin 로그인 시도 " + id +" : " + pw);
			cnt = startDAO.adminLogin(id, pw);
			logger.info("service admin 로그인 성공여부 ==> " + cnt);
		}else {
			logger.info("service team 로그인 시도 " + id + " : " + pw);
			cnt = startDAO.teamLogin(id,pw);
			logger.info("service team 로그인 성공여부 ==> " + cnt);
		}//구단 로그인
		
		return cnt;
	}
}
