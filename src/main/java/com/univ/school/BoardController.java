package com.univ.school;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {
	
	// return을 void로 설정하면 uri를 jsp forward할때 사용함

	/*@RequestMapping("/board/list.do")
		public String list() {
			return "board/list";
		}
	*/
	
	@RequestMapping(value = "/board_notice", method = RequestMethod.GET)
	public String boardNotice(Locale locale, Model model) {
		return "/board/Bulletin_Board_Notice";
	}
	@RequestMapping(value = "/board_inquiries", method = RequestMethod.GET)
	public String boardInquireies(Locale locale, Model model) {
		return "/board/Bulletin_Board_Inquiries";
	}
	@RequestMapping(value = "/board_free", method = RequestMethod.GET)
	public String boardFree(Locale locale, Model model) {
		return "/board/Bulletin_Free";
	}
	@RequestMapping(value = "/board_tips", method = RequestMethod.GET)
	public String boardTips(Locale locale, Model model) {
		return "/board/Bulletin_Honey_Tips";
	}
	@RequestMapping(value = "/board_chobo", method = RequestMethod.GET)
	public String boardChobo(Locale locale, Model model) {
		return "/board/Bulletin_Invitation";
	}
	@RequestMapping(value = "/board_write", method = RequestMethod.GET)
	public String boardWrite(Locale locale, Model model) {
		return "/board/Bulletin_Board_Write";
	}
	
	
	@RequestMapping(value = "/youtube", method = RequestMethod.GET)
	public String youtube(Locale locale, Model model) {
		return "/Collection_of_YouTube_videos";
	}
	@RequestMapping(value = "/user_modify", method = RequestMethod.GET)
	public String UserModify(Locale locale, Model model) {
		return "/Member_information";
	}
	@RequestMapping(value = "/change_pass", method = RequestMethod.GET)
	public String User(Locale locale, Model model) {
		return "/Change_Password";
	}
	
	
	
		// return type이 void인 경우 uri를 jsp로 forword하는 정보 사용한다.
		// 요청은 get방식으로 글쓰기 폼
		@RequestMapping(value = "/board/write", method = RequestMethod.GET)
		public void writeForm() {

		}

		// 글쓰기 처리->글쓰기 처리가 다 끝나면 자동으로 list로 가야함. sendRedirect
		@RequestMapping(value = "/board/write", method = RequestMethod.POST)
		public String write() {
			System.out.println("글쓰기 처리");
			return "redirect:list";
		}
		
		@RequestMapping(value = "/board/view", method = RequestMethod.GET)
		public void view() {
		}

		
		@RequestMapping(value = "/board/update", method = RequestMethod.GET)
		public void updateForm() {

		}
		// 글수정 처리
		@RequestMapping(value = "/board/update", method = RequestMethod.POST)
		public String update() {
			System.out.println("글 수정 처리");
			return "redirect:view";
		}
		
		//글 삭제 처리
		@RequestMapping(value = "/board/delete", method = RequestMethod.GET)
		public String delete() {
			System.out.println("글 삭제 처리");
			return "redirect:list";
		}

}
