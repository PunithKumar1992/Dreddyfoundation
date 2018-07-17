package com.appfone.dreddyfoundation.Serviceimpl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.appfone.dreddyfoundation.Dao.AdminLoginDao;
import com.appfone.dreddyfoundation.Service.AdminLoginService;

@Service
public class AdminLoginServiceimpl implements AdminLoginService {

	@Autowired
	private AdminLoginDao logindao;
	
	@Override
	@Transactional
	public int checkAdmin(String username, String pass) {
		int res = logindao.checkAdmin(username, pass);
		return res;
	}

}
