package com.guksi.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.guksi.dto.ReplyDto;
import com.guksi.service.ReplyService;

@Controller
public class ReplyController {
	
	@Autowired
	ReplyService service;
	
	@GetMapping("/reply")
	public String showReply (Model model) {
		return "reply";
	}
	
	@GetMapping("/insertEmp")
	public @ResponseBody Map<String, Object> insertReply (Model model, ReplyDto reply){
		Map<String, Object> result = new HashMap<>();
		int data = -1;
		try {
			data = service.insertReply(reply);
			if(data == 1) {
				result.put("status", "success");
			}else {
				result.put("status", "fail");
				result.put("msg", "오류 없으나 등록 실패");
			}
		}catch(Exception e) {
			result.put("status", "fail");
			result.put("msg", e.getMessage());
		}
		return result;
	}


}
