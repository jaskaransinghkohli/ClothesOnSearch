package com.T4a.ClothesOnSearch.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.T4a.ClothesOnSearch.Services.AdminServices;
import com.T4a.ClothesOnSearch.beans.CustomerDetails;
import com.T4a.ClothesOnSearch.beans.Users;

@Controller
public class LoginController {

	@Autowired
	AdminServices adminService;

	@RequestMapping("/")
	public String indexPage() {
		System.out.println("My Changes");
		return "index";
	}

	@RequestMapping(value = "/user-login", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("user") @Valid Users user, BindingResult result, ModelAndView model,
			HttpServletRequest request) {
		Users user_details = adminService.userLogin(user.getUserEmail(), user.getUserPassword());
		if (user_details == null) {

			model.addObject("ERROR", "ERROR");
			model.setViewName("user-login");
		} else {

			request.getSession().setAttribute("USERS", user);
			model.setViewName("redirect:/seller");
		}
		return model;

	}

	@RequestMapping(value = "/customer-login", method = RequestMethod.GET)
	public String login() {

		return "account-login";

	}

	@RequestMapping(value = "/user-login", method = RequestMethod.GET)
	public String userLogin() {

		return "user-login";

	}

	@RequestMapping(value = "/customer-login", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("customer") @Valid CustomerDetails customer, BindingResult result,
			ModelAndView model, HttpServletRequest request) {

		CustomerDetails customer_details = adminService.customerLogin(customer.getCustomerEmail(),
				customer.getCustomerPassword());
		if (customer_details == null) {
			model.addObject("ERROR", "Wrong Email or Password");
			model.setViewName("redirect:/customer-login");
		} else {
			model.setViewName("redirect:/");
			request.getSession().setAttribute("USERS", customer_details);
		}
		return model;
	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		request.getSession().invalidate();

		return "redirect:/";

	}

}
