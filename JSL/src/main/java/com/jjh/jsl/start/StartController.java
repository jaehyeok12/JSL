package com.jjh.jsl.start;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
			session.setAttribute("Login", id);//세션에 저장
			result = "redirect:/index.go";//메인화면 호출
			rattr.addFlashAttribute("userType", loginType);//관계자인지 구단인지를 담아서 메인으로 이돌
		}
		return result;
	}
	
}
