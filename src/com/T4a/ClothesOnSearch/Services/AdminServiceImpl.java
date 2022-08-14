package com.T4a.ClothesOnSearch.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.T4a.ClothesOnSearch.Dao.AdminDao;
import com.T4a.ClothesOnSearch.beans.CustomerDetails;
import com.T4a.ClothesOnSearch.beans.Users;

@Service
public class AdminServiceImpl implements AdminServices {
	@Autowired
	AdminDao adminDao;

	@Override
	public Users userLogin(String email_id, String password) {
		System.out.println(email_id + " service" + password);
		return adminDao.userLogin(email_id, password);
	}

	@Override
	public CustomerDetails customerLogin(String customerEmail, String customerPassword) {
		// TODO Auto-generated method stub
		return adminDao.customerLogin(customerEmail, customerPassword);
	}

}
