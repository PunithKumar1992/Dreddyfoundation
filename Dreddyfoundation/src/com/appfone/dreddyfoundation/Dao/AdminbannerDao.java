package com.appfone.dreddyfoundation.Dao;

import java.util.List;

import com.appfone.dreddyfoundation.Pojo.Dreddyfbanner;


public interface AdminbannerDao {

	public List<Dreddyfbanner> getallbannerlist();
	public int getbannersize();
	public void deletebanner(int banner_id);
	public void saveBanner(Dreddyfbanner banner);
	public Dreddyfbanner getSinglebanner(int banner_id);
	
}
