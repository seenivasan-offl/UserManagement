package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.DAO.UserDAO;
import com.example.demo.model.User1;

@Controller
public class UserController {
	
	@Autowired
	UserDAO userdao;
	
	@GetMapping("index")
	public String user() {
		return "index.jsp";
	}
	@GetMapping("addUser")
	public String adduser(User1 user1) {
		userdao.save(user1);
		return "index.jsp";
	}
	
	@RequestMapping("getUser")
	public ModelAndView getUser(@RequestParam int id) {
	    ModelAndView mav = new ModelAndView("showUser.jsp");
	    User1 user = userdao.findById(id).orElse(null);
	    if (user != null) {
	        mav.addObject("user", user);  // Send user object to JSP
	    } else {
	        mav.addObject("message", "User not found");
	    }
	    return mav;
	}

	
	@RequestMapping("deleteUser")
	public ModelAndView deleteUser(@RequestParam int id) {
	    ModelAndView mav = new ModelAndView("deleteUser.jsp");
	    User1 user = userdao.findById(id).orElse(null);
	    if (user != null) {
	        userdao.deleteById(id);  // Delete the user
	        mav.addObject("message", "User deleted successfully");
	    } else {
	        mav.addObject("message", "User not found");
	    }
	    return mav;
	}
	@RequestMapping("updateUser")
	public ModelAndView updateuser(User1 user) {
		ModelAndView mav= new ModelAndView("UpdateUser.jsp");
		user=userdao.findById(user.getId()).orElse(new User1());
		userdao.deleteById(user.getId());
		mav.addObject(user);
		return mav;
	}
}
