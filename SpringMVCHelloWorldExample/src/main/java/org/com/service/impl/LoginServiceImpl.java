package org.com.service.impl;

import org.com.service.LoginService;
import org.com.DAO.LoginDAO;
import org.com.model.Login;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class LoginServiceImpl implements LoginService{
	@Autowired
	LoginDAO loginDAO;
	
	@Override
	public String logindetails(Login login)
	{
		System.out.println("The login values are" + login.getUserId());
		loginDAO.insert(login);
		loginDAO.delete(login);
		return null;
	}

	
	
}
