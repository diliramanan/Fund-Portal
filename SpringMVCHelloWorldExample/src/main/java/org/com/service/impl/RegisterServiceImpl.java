package org.com.service.impl;

import org.com.DAO.RegisterDAO;
//import org.com.DAO.Impl.RegisterDAOImpl;
import org.com.model.Register;
import org.com.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class RegisterServiceImpl implements RegisterService {
 
	@Autowired
	RegisterDAO regDAO;
	@Override
	public String registeruserDetails(Register register) {
		// TODO Auto-generated method stub
		System.out.println("Value in the Service Class "+register.getFirstName());
		System.out.println("Value in the Service Class "+register.getLastName());
		System.out.println("Value in the Service Class "+register.getEmail());
		System.out.println("Value in the Service Class "+register.getPhone() );
		System.out.println("Value in the Service Class "+register.getProjID() );
		System.out.println("Value in the Service Class "+register.getProjName());
		System.out.println("Value in the Service Class "+register.getUserID() );
		System.out.println("Value in the Service Class "+register.getPassword() );
		regDAO.insert(register);
		regDAO.delete(register);
		return null;
	}

}
