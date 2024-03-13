package com.univ.school;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class SignUpController {
	
	@Autowired
	SqlSession session;
	
	@RequestMapping(value = "/start/signup", method = RequestMethod.GET)
	public void signupForm() {
		System.out.println("회원가입 이동");
		
	}
	
//	@RequestMapping(value = "/signup/signup")
//	public String home() {
//		System.out.println("회원가입 이동2");
//		return "signup";
//	}
	
	//회원가입 취소
	@RequestMapping(value = "/signup/SignupCancle")
	public ModelAndView SignupCancle(RedirectAttributes redirectAttributes) {
		ModelAndView mv = new ModelAndView();
		// ${user_name}
		mv.addObject("serverTime","test");
		System.out.println("회원가입 취소");
//		return "redirect:/";
		return mv;
	}
	
	@RequestMapping(value = "/main/mainlist.html")
//	public ModelAndView SignupCancle(RedirectAttributes redirectAttributes) {
	public String board(RedirectAttributes redirectAttributes) {
		ModelAndView mv = new ModelAndView();
		// ${user_name}
		mv.addObject("serverTime","test");
		System.out.println("회원가입 취소");
		return "boardList";
//		return mv;
	}
	
	//회원가입 완료
	@RequestMapping(value = "/signup/singupOK")
	public void signupOK() {
		System.out.println("회원가입 완료");
		
	}
	
	//회원가입 완료
	@RequestMapping(value = "/signup/signup.json")
	public @ResponseBody int signup(@RequestParam Map<String,Object> map) {
		System.out.println("회원가입 시도 정보 map : " + map);
		
		SignupDAO dao = session.getMapper(SignupDAO.class);
		
		try {
			dao.insertUser(map);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
			
		return 1;
	}
	
//	@RequestMapping(value = "/signup/signup")
//	public String signup(RedirectAttributes redirectAttributes){
//	    redirectAttributes.addFlashAttribute("KeyName", "KeyValue");
//	    return "result:login";
//	}

//	@RequestMapping("/receive.do")
//	public String receiveTest(){
//	    return "result:login";
//	}
	
//	@RequestMapping(value = "/signup/signup", method = RequestMethod.POST)
//	public String signup() {
//		System.out.println("회원가입 처리");
//		return "redirect:login";
//		
//	}
}
