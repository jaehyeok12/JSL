package com.jjh.jsl.start;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class StartController {
	Logger logger = LoggerFactory.getLogger(getClass());
	@Autowired StartService startService;
	
	@GetMapping(value="/")
	public String main(Model model, HttpSession session) {
		
		return "login";
	}
	
	@GetMapping(value="/index.go")
	public String goIndex(Model model, HttpSession session) {
		
		return "index";
	}
	
	@PostMapping(value="/login/login.do")
	public String mainGo(String id, String pw, Model model, @RequestParam("loginType")String loginType, HttpSession session, RedirectAttributes rattr) {
		String result = "";
		logger.info(" lt : "+loginType +" / id : " + id + " / pw : " + pw);
		int isLoginSucc = startService.doLogin(loginType, id, pw);
		if(isLoginSucc==0) {
			//로그인 실패
			result="redirect:/";
			rattr.addFlashAttribute("msg", "로그인에 실패했습니다. 한 번 더 확인 후 로그인해주세요");//로그인 실패 메세지
		}else {
			//로그인 성공
			if(loginType.equals("admin")){
				logger.info("관리자 드가자");
				StartAdminDTO adminDTO = startService.getAdminInfo(id);
				logger.info("관리자 : "+adminDTO.getAdminName());
				session.setAttribute("adminInfo", adminDTO);//세션에 저장
				
			}else {

				StartTeamDTO teamDTO = startService.getTeamInfo(id);
				session.setAttribute("teamInfo", teamDTO);//세션에 저장
			}
			session.setAttribute("loginType", loginType);//세션에 저장
			result = "redirect:/index.go";//메인화면 호출
			rattr.addFlashAttribute("userType", loginType);//관계자인지 구단인지를 담아서 메인으로 이돌
		}
		return result;
	}
	//페이지 이동
	@GetMapping(value="/{page}.go")
	public String innerPage(Model model, @PathVariable String page, HttpSession session) {
		//Pathvariable을 사용해 요청명을 그대로 변수  page에 저장
		logger.info("이동 페이지 : " + page);
		return page;
	}
	
}
