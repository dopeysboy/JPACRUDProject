package com.skilldistillery.dnd.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.dnd.data.UserDAO;
import com.skilldistillery.dnd.entities.User;

@Controller
public class LoginController {

	@Autowired
	UserDAO dao;
	
	@RequestMapping(path="login.do")
	public String loginScreen(HttpSession session) {
		return "login";
	}
	
	@RequestMapping(path="login.do", method=RequestMethod.POST)
	public String loginUser(HttpSession session, String username, String password) {
		User user = dao.getUserByUsrNamePass(username, password); 

		if(user == null) {
			session.setAttribute("badLogin", true);
			return "redirect:login.do";
		} else {
			session.setAttribute("user", user);
			return "redirect:index.do";
		}
	}
	
	@RequestMapping(path="createUser.do", method=RequestMethod.POST)
	public String createUser(HttpSession session, String username, String password) {
		User user = dao.createUser(username, password);
		session.setAttribute("user", user);
		return "redirect:index.do";
	}
	
	@RequestMapping(path="logout.do")
	public String logoutUser(HttpSession session) {
		session.invalidate();
		return "redirect:index.do";
	}
}
