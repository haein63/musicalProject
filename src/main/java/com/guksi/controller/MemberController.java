package com.guksi.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.guksi.dto.MemberDto;
import com.guksi.service.MemberService;

@Controller

public class MemberController {
	
	
	private static Logger mylog = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private MemberService service;

	@GetMapping(value = "/join")
	public String join(MemberDto memberdto, Model model) {
		return "join";
	}

	@PostMapping(value = "joinResult")
	public String joinResult(MemberDto memberdto, Model model) {
		MemberDto dto2 = service.idSelect(memberdto.getId());
		if (dto2 == null) {
			MemberDto dto = service.joinAfter(memberdto);
			System.out.println("controller+" + dto.getId());
			model.addAttribute("result", dto);
			return "myPage";
		} else {
			System.out.println("이미있는애");
			return "login";
		}
	}

	@RequestMapping(value = "login")
	public String login(String id) {
		return "login";
	}

	@PostMapping(value = "loginCheck")
	public String loginCheck(HttpSession session, String id, String password) {
		MemberDto dto = service.loginCheck(id, password);
		if (dto == null) {
			return "login";
		} else {
			session.setAttribute("id", id);
			return "Main2";
		}
		
	}
	
	   @RequestMapping("logout.do")
	    public ModelAndView logout(HttpSession session){
	        service.logout(session);
	        ModelAndView mav = new ModelAndView();
	        mav.setViewName("login");
	        mav.addObject("msg", "logout");
	        return mav;
	    }
	   
	
	   
	 
	   
	 
	   
	
	   
	
	

	


}
