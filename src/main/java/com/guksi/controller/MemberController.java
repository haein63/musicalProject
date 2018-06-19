package com.guksi.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.guksi.dto.MemberDto;
import com.guksi.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService service;
	
	@RequestMapping(value="join")
	public String MemberJoin(@RequestParam String id,Model model) {
		MemberDto member = service.idSelect(id);
		model.addAttribute("member",member);
		return "join";
	}
	@RequestMapping(value="login")
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
		mv.addObject("result", service.logincheck(id, pass));
		mv.addObject("id", id);
		mv.setViewName("loginCheck");
		return mv;

	}
}
