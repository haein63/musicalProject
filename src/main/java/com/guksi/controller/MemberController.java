package com.guksi.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.guksi.dto.MemberDto;
import com.guksi.service.MemberService;

@Controller

public class MemberController {

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
	public String login(String id, HttpSession session) {
		try {
			if (session.getAttribute("id") != null) {
				session.setAttribute("id", session.getAttribute("id"));
			}
		} catch (Exception e) {
		}
		return "login";
	}

	@PostMapping(value = "loginCheck")
	public String loginCheck(HttpSession session, String mem_id, String mem_pw) {
		MemberDto dto = service.loginCheck(mem_id, mem_pw);
		if (dto == null) {
			return "login";
		} else {
			session.setAttribute("id", mem_id);
			return "Main2";
		}

	}

}
