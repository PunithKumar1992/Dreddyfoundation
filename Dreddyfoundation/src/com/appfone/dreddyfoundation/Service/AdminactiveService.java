package com.appfone.dreddyfoundation.Service;


import java.util.List;

import com.appfone.dreddyfoundation.Pojo.Dreddyfadminregiestration;


public interface AdminactiveService {

	public List<Dreddyfadminregiestration> getCurrentuser(String username,String password);

	public List<Dreddyfadminregiestration> getalladmin();
	
	public void deleteSingleAdmin(int id);
	
	public Dreddyfadminregiestration getSingleadmin(int id);
	
	public void saveAdmin(Dreddyfadminregiestration newadmin);
	
	public int checkadminNameavailable(String adminname);
	
}
