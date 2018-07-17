package com.appfone.dreddyfoundation.Service;

import java.util.List;

import com.appfone.dreddyfoundation.Pojo.Dreddyfbanner;


public interface AdminbannerService {

	public List<Dreddyfbanner> getallbannerlist();
	public int getbannersize();
	public void deletebanner(int banner_id);
	public void saveBanner(Dreddyfbanner banner);
	public Dreddyfbanner getSinglebanner(int banner_id);
	
}
