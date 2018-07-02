package com.guksi.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.guksi.dto.MemberDto;
import com.guksi.dto.MusicalDto;
import com.guksi.service.MemberService;
import com.guksi.service.MusicalService;

@Controller

public class MemberController {
	
	
	private static Logger mylog = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	MusicalService musical;
	
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
			model.addAttribute("result", dto);
			return "myPage";
		} else {
			return "login";
		}
	}

	@RequestMapping(value = "login")
	public String login(String id) {
		return "login";
	}

	@PostMapping(value = "loginCheck")
	public String loginCheck(Model model, HttpSession session, String id, String password) {
		MemberDto dto = service.loginCheck(id, password);
		if (dto == null) {
			return "login";
		} else {
			
			session.setAttribute("id", id);
		
			List<MusicalDto> mdto = musical.getCurrentmusicals_desc();
			model.addAttribute("musicalC", mdto);
			mdto=musical.getPastMusicals_desc();
			model.addAttribute("musicalP", mdto);
			mdto=musical.getFutureMusicals_desc();
			model.addAttribute("musicalF", mdto);
			return "Main2";
		}
		
	}
	
	   @RequestMapping("logout.do")
	    public String logout(HttpSession session,Model model){
		   	session.invalidate();
			List<MusicalDto> mdto = musical.getCurrentmusicals_desc();
			model.addAttribute("musicalC", mdto);
			mdto=musical.getPastMusicals_desc();
			model.addAttribute("musicalP", mdto);
			mdto=musical.getFutureMusicals_desc();
			model.addAttribute("musicalF", mdto);
	        return "Main2";
	    }
	   
	
	   
	   @GetMapping(value="/memberInfo")
		public String memberinfo(HttpSession session , Model model) {
			String sessionid = (String) session.getAttribute("id");
			MemberDto dto = service.idSelect(sessionid);
			model.addAttribute("member",dto);
			return "memberInfo";
		}
	   
	 
	   @ResponseBody
	   @RequestMapping(value="memberupdate")
	   public void memberupdate(MemberDto dto,Model model) {
		   System.out.println("dididqwiodiqwduiqwidqwd"+dto.getId());
		   service.update(dto);
	   }
	   
	   @ResponseBody
	   @RequestMapping(value="del")
	   public void del(MemberDto dto,Model model) {
		   String id = dto.getId();
		   service.delete(id);
	   }
	   
	
	

	


}
