package com.skilldistillery.dnd.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.dnd.data.CampaignDAO;

@Controller
public class IndexController {
	
	@Autowired
	CampaignDAO dao;
	
	@RequestMapping(path= {"/", "index.do"})
	public String index(HttpSession session) {
		session.setAttribute("campaigns", dao.getAllCampaigns());
		return "index";
	}
	
	@RequestMapping(path="readme.do")
	public String readme(HttpSession session) {
		return "readme";
	}
}
