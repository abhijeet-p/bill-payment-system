package com.cts.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cts.dao.UserDAOImpl;
import com.cts.entity.User;
import com.cts.entity.UserRole;
import com.cts.service.UserService;

@Controller
public class LoginController {
	
	@Autowired
	UserService userService;
	
	final Logger logger=Logger.getLogger(LoginController.class);
	
	@RequestMapping(value= {"/","/welcome**"}, method=RequestMethod.GET )
	public ModelAndView defaultPage(HttpServletRequest request ,HttpServletResponse response){
		ModelAndView model =new ModelAndView();
		model.setViewName("home");
	
		return model;
		
		
	}
	
	@RequestMapping(value = "/admin",method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView adminPage() {
		ModelAndView model = new ModelAndView();
		List<User>lb=userService.getAllUsers();
		model.getModelMap().addAttribute("users",lb);
		model.setViewName("adminPage");
		
		return model;
	}

	@RequestMapping(value = "/login", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, HttpServletRequest request) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", getErrorMessage(request, "SPRING_SECURITY_LAST_EXCEPTION"));
		}

		if (logout != null) {
			model.addObject("msg", "No more Logged in -- logged out .");
			model.setViewName("login");
		}
		System.out.println("HELLOOOOOOOO");
		model.setViewName("login");
		return model;

	}

	// customize the error message
	private String getErrorMessage(HttpServletRequest request, String key) {

		Exception exception = (Exception) request.getSession().getAttribute(key);

		String error = "";
		if (exception instanceof BadCredentialsException) {
			error = "Invalid username and password!";
		} else if (exception instanceof LockedException) {
			error = exception.getMessage();
		} else {
			error = "Invalid username and password!";
		}

		return error;
	}

	// for 403 access denied page
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView accesssDenied() {

		ModelAndView model = new ModelAndView();

		// check if user is login
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);

			model.addObject("username", userDetail.getUsername());

		}

		model.setViewName("403");
		return model;
	}
	
	
	@RequestMapping(value = "/404", method = RequestMethod.GET)
	public ModelAndView databaseError(HttpServletRequest request) {

		ModelAndView model = new ModelAndView();

		// check if user is login
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			model.addObject("username", userDetail.getUsername());
			
		}

		model.setViewName("404");
		return model;

	}
	
	@GetMapping("/showRegisterForm")
	public String showFormForRegister(Model model){
		User theUser=new User();
		model.addAttribute("user",theUser);
		return "userRegisteration";
	}


	@RequestMapping(value = "/registerUser", method = {RequestMethod.GET,RequestMethod.POST})
	public String saveAUser(@ModelAttribute("user") User theUser , @ModelAttribute("userRole") UserRole theUserRole,Model model )
	{ try{
		System.out.println("theUser:"+theUser);
	System.out.println("theUserRoke:"+theUserRole);
	theUserRole.setUser(theUser);
	userService.saveUser(theUser);
	userService.saveRole(theUserRole);
	return "redirect:/welcome?success";
	}
	catch(Exception e){
		logger.info(e.toString());
		return "redirect:/404?fail";
	}
	
	}
	
	@GetMapping("/logout")
	public String logoutPage(HttpServletRequest request ,HttpServletResponse response)
	{

	    Authentication auth = SecurityContextHolder.getContext().getAuthentication();

	    if (auth != null) {
	        new SecurityContextLogoutHandler().logout(request, response, auth);
	    }

		return "redirect:/welcome?success";
	}

	

}
