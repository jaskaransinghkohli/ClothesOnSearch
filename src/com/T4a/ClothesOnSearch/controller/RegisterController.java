package com.T4a.ClothesOnSearch.controller;

import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.T4a.ClothesOnSearch.Services.ProductServices;
import com.T4a.ClothesOnSearch.Services.RegistrationServices;
import com.T4a.ClothesOnSearch.beans.CustomerDetails;
import com.T4a.ClothesOnSearch.beans.ProductCategory;
import com.T4a.ClothesOnSearch.beans.ProductSubCategory;
import com.T4a.ClothesOnSearch.beans.UserAddress;
import com.T4a.ClothesOnSearch.beans.UserBankAndTaxDetails;
import com.T4a.ClothesOnSearch.beans.UserSellingCategory;
import com.T4a.ClothesOnSearch.beans.Users;

@Controller
public class RegisterController {

	@Autowired
	private RegistrationServices registrationServices;
	@Autowired
	private LoginController loginController;
	@Autowired
	private ProductServices productServices;

	@RequestMapping(value = "/register-customer", method = RequestMethod.POST)
	public ModelAndView registerCustomer(@ModelAttribute CustomerDetails customerDetails, BindingResult result,
			HttpServletRequest request, ModelAndView model) {
		if (customerDetails.getCustomerId() == null || customerDetails.getCustomerId() <= 0) {
			customerDetails.setCreationDate(LocalDateTime.now());
		}
		boolean status = registrationServices.registerCustomer(customerDetails);
		if (status) {
			model = loginController.login(customerDetails, result, model, request);
		}
		return model;

	}

	@RequestMapping(value = "/register-seller", method = RequestMethod.POST)
	public ModelAndView registerSeller(@ModelAttribute("user") Users user, BindingResult result,
			HttpServletRequest request, ModelAndView model) {
		if (user.getUserId() == null || user.getUserId() <= 0) {
			user.setUserCreationDate(LocalDateTime.now());
		}
		boolean status = registrationServices.registerSeller(user);
		if (status) {

			model = loginController.login(user, result, model, request);
			model.setViewName("redirect:/register-seller/business-details");
		}

		return model;
	}

	@RequestMapping(value = "/register-seller", method = RequestMethod.GET)
	public String registerSeller(HttpServletRequest request) {
		request.setAttribute("BASIC_DETAILS", true);

		return "register-seller-final";

	}

	@RequestMapping(value = "/register-seller/business-details", method = RequestMethod.POST)
	public ModelAndView businessDetails(@ModelAttribute("user") Users user,
			@ModelAttribute("userAddress") UserAddress userAddress, BindingResult result, HttpServletRequest request,
			ModelAndView model) {
		Users loginUser = (Users) request.getSession().getAttribute("USERS");
		userAddress.setUserId(loginUser);
		boolean status = registrationServices.saveBusinnessDetails(userAddress);
		if (status) {
			System.out.println(user.getStoreName());
			loginUser.setStoreName(user.getStoreName());
			registrationServices.registerSeller(loginUser);

			model.setViewName("redirect:/register-seller/tax-details");
		}
		return model;
	}

	@RequestMapping(value = "/register-seller/business-details", method = RequestMethod.GET)
	public String businessDetails(HttpServletRequest request) {
		request.setAttribute("BUSINESS_DETAILS", true);
		return "register-seller-final";
	}

	@RequestMapping(value = "/register-seller/tax-details", method = RequestMethod.POST)
	public ModelAndView taxDetails(@ModelAttribute("taxDetails") UserBankAndTaxDetails taxDetails, BindingResult result,
			HttpServletRequest request, ModelAndView model) {
		Users loginUser = (Users) request.getSession().getAttribute("USERS");
		taxDetails.setUserId(loginUser);
		boolean status = registrationServices.saveTaxDetails(taxDetails);
		if (status) {
			model.setViewName("redirect:/register-seller/categories-details");
		}
		return model;
	}

	@RequestMapping(value = "/register-seller/tax-details", method = RequestMethod.GET)
	public String taxDetails(HttpServletRequest request) {
		request.setAttribute("TAX_DETAILS", true);
		return "register-seller-final";

	}

	@RequestMapping(value = "/register-seller/categories-details", method = RequestMethod.POST)
	public ModelAndView categories(HttpServletRequest request, ModelAndView model) {
		Users loginUser = (Users) request.getSession().getAttribute("USERS");
		String[] subCategoryId = request.getParameterValues("subCategoryIds");
		boolean status = false;
		for (String s : subCategoryId) {
			System.out.println("Sub category id " + s);
			ProductSubCategory p = productServices.getProductSubCategoryById(Long.parseLong(s));
			UserSellingCategory sellingCategory = new UserSellingCategory();
			sellingCategory.setSubCategoryId(p);
			sellingCategory.setUserId(loginUser);
			status = productServices.saveOrUpdateUserSellingCategory(sellingCategory);
		}

		model.setViewName("redirect:seller/dashboard");
		return model;

	}

	@RequestMapping(value = "/register-seller/categories-details", method = RequestMethod.GET)
	public String categories(HttpServletRequest request) {
		List<ProductCategory> productCategoryList = productServices.getAllCategories();

		request.setAttribute("CATEGORY_LIST", productCategoryList);
		request.setAttribute("CATEGORIES_DETAILS", true);
		return "register-seller-final";

	}
}
