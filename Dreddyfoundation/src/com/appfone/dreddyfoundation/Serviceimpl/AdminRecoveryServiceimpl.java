package com.appfone.dreddyfoundation.Serviceimpl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.appfone.dreddyfoundation.Dao.AdminRecoveryDao;
import com.appfone.dreddyfoundation.Service.AdminRecoveryService;

@Service
public class AdminRecoveryServiceimpl implements AdminRecoveryService {

	@Autowired
	private AdminRecoveryDao recoverdao;
	
	@Override
	@Transactional
	public int checkMailidtosend(String email) {
		int res = recoverdao.checkMailidtosend(email);
		return res;
	}

	@Override
	@Transactional
	public String getusername(String email) {
		String name = recoverdao.getusername(email);
		return name;
	}

	@Override
	@Transactional
	public String getpassword(String email) {
		String pass = recoverdao.getpassword(email);
		return pass;
	}

}
