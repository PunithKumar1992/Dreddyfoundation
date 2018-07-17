package com.appfone.dreddyfoundation.Serviceimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.appfone.dreddyfoundation.Dao.AdminactiveDao;
import com.appfone.dreddyfoundation.Pojo.Dreddyfadminregiestration;
import com.appfone.dreddyfoundation.Service.AdminactiveService;

@Service
public class AdminactiveServiceimpl implements AdminactiveService {

	@Autowired
	private AdminactiveDao adminactiv;
	
	@Override
	public List<Dreddyfadminregiestration> getCurrentuser(String username, String password) {
		List<Dreddyfadminregiestration> list = adminactiv.getCurrentuser(username, password);
		return list;
	}

	@Override
	@Transactional
	public List<Dreddyfadminregiestration> getalladmin() {
		List<Dreddyfadminregiestration> list =adminactiv.getalladmin();
		return list;
	}

	@Override
	@Transactional
	public void deleteSingleAdmin(int id) {
		adminactiv.deleteSingleAdmin(id);

	}

	@Override
	@Transactional
	public Dreddyfadminregiestration getSingleadmin(int id) {
		Dreddyfadminregiestration singleadmin = adminactiv.getSingleadmin(id);
		return singleadmin;
	}

	@Override
	@Transactional
	public void saveAdmin(Dreddyfadminregiestration newadmin) {
		adminactiv.saveAdmin(newadmin);

	}

	@Override
	@Transactional
	public int checkadminNameavailable(String adminname) {
		int res = adminactiv.checkadminNameavailable(adminname);
		return res;
	}

}
