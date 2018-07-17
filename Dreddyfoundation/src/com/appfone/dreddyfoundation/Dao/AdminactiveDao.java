package com.appfone.dreddyfoundation.Dao;


import java.util.List;

import com.appfone.dreddyfoundation.Pojo.Dreddyfadminregiestration;


public interface AdminactiveDao {

	public List<Dreddyfadminregiestration> getCurrentuser(String username,String password);

	public List<Dreddyfadminregiestration> getalladmin();
	
	public void deleteSingleAdmin(int id);
	
	public Dreddyfadminregiestration getSingleadmin(int id);
	
	public void saveAdmin(Dreddyfadminregiestration newadmin);
	
	public int checkadminNameavailable(String adminname);
	
}
