package com.guksi.controller;

import java.util.List;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.guksi.dto.MusicalDto;
import com.guksi.service.MusicalService;

@Controller
public class MainController {
	

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	@Autowired
	MusicalService musical;
	
	@GetMapping(value="/Main2")
	public String CMain(Model model) {
		List<MusicalDto> mdto = musical.getCurrentmusicals_desc();
		model.addAttribute("musicalC", mdto);
		mdto=musical.getPastMusicals_desc();
		model.addAttribute("musicalP", mdto);
		mdto=musical.getFutureMusicals_desc();
		model.addAttribute("musicalF", mdto);
		return "Main2";
	}
	

	
	@GetMapping(value="/musicalInfo")
	public String getMusicals(@RequestParam String title,Model model) {
		MusicalDto mdto = musical.getMusicals(title);
		model.addAttribute("musical",mdto);
		return "musicalInfo";
	}
	
	
	
	
}
