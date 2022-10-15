package com.skilldistillery.dnd.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.dnd.data.CampaignDAO;
import com.skilldistillery.dnd.entities.Campaign;

@Controller
public class CampaignController {

	@Autowired
	CampaignDAO dao;

	@RequestMapping(path= "getCampaign.do")
	public String getCampaign(int id, HttpSession session) {
		List<Campaign> campaigns = new ArrayList<>();
		campaigns.add(dao.getCampaignById(id));
		
		session.setAttribute("campaigns", campaigns);
		
		return "campaign";
	}

	@RequestMapping(path="createCampaign.do", method=RequestMethod.GET)
	public String toCreateCampaign(HttpSession session) {
		return "createCampaign";
	}
	
	@RequestMapping(path="createCampaign.do", method=RequestMethod.POST)
	public String createCampaign(HttpSession session, Campaign camp) {
		session.setAttribute("camp", dao.createCampaign(camp));
		
		return "redirect:createdCampaign.do";
	}
	
	@RequestMapping(path="createdCampaign.do")
	public String createdCampaign(HttpSession session) {
		return "resultPage";
	}
	
	@RequestMapping(path="manageCampaigns.do")
	public String manageCampaigns(HttpSession session) {
		session.setAttribute("campaigns", dao.getAllCampaigns());
		return "manageCampaigns";
	}
	
	@RequestMapping(path="deleteCamp.do")
	public String deleteCampaign(HttpSession session, int id) {
		session.setAttribute("removed", dao.destroyCampaign(id));
		return "resultPage";
	}
	
	@RequestMapping(path="updateCamp.do")
	public String updateCampaign(HttpSession session, int id) {
		session.setAttribute("camp", dao.getCampaignById(id));
		return "updateCampaign";
	}
	
	@RequestMapping(path="updateCampaign.do", method=RequestMethod.POST)
	public String updateCampaign(HttpSession session, Campaign camp, int id) {
		session.setAttribute("camp", dao.updateCampaign(camp, id));
		return "redirect:updatedCampaign.do";
	}
	
	@RequestMapping(path="updatedCampaign.do")
	public String updatedCampaign(HttpSession session) {
		return "resultPage";
	}
	
	@RequestMapping(path="searchCampaign.do")
	public String searchCampaign(HttpSession session) {
		return "searchForm";
	}
	
	@RequestMapping(path="searchById.do")
	public String searchById(HttpSession session, int id) {
		List<Campaign> campaigns = new ArrayList<>();
		campaigns.add(dao.getCampaignById(id));
		session.setAttribute("campaigns", campaigns);
		return "campaign";
	}
	@RequestMapping(path="searchByKeyword.do")
	public String searchByKeyword(HttpSession session, String keyword) {
		session.setAttribute("campaigns", dao.getCampaignsByKeyword(keyword));
		return "campaign";
	}
	@RequestMapping(path="searchBySetting.do")
	public String searchBySetting(HttpSession session, String setting) {
		session.setAttribute("campaigns", dao.getCampaignsBySetting(setting));
		return "campaign";
	}
	@RequestMapping(path="searchByUser.do")
	public String searchByUser(HttpSession session, String username) {
		session.setAttribute("campaigns", dao.getCampaignsByUser(username));
		return "campaign";
	}
}
