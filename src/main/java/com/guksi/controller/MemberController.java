package com.guksi.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.guksi.dao.MemberDao;
import com.guksi.dto.MemberDto;
import com.guksi.service.MemberService;

@Controller

public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@GetMapping(value="/join")
	public String join(MemberDto memberdto,Model model) {
		return "join";
	}

	@PostMapping(value="joinResult")
	public String joinResult(MemberDto memberdto,Model model) {
		MemberDto dto2 = service.idSelect(memberdto.getId());
		if(dto2==null) {
			MemberDto dto = service.joinAfter(memberdto);
			System.out.println("controller+"+dto.getId());
			model.addAttribute("result", dto);
			return "myPage";
		}
		else {
			System.out.println("이미있는애");
			return "login"; 
		}
	
	
	/*@RequestMapping(value="login")
	public String login(String id , HttpSession session) {
		try {
			if (session.getAttribute("id") != null) {
				session.setAttribute("id", session.getAttribute("id"));
			}
		} catch (Exception e) {
		}
		return "login";
	}
	
	@PostMapping(value ="loginCheck")
	public ModelAndView loginCheck(String id, String pass, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("result", service.loginCheck(id, pass));
		mv.addObject("id", id);
		mv.setViewName("loginCheck");
		return mv;

	}*/
	
	
	
	

	
	
	

	
	}
}

