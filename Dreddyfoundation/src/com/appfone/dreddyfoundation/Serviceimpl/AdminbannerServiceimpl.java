package com.appfone.dreddyfoundation.Serviceimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.appfone.dreddyfoundation.Dao.AdminbannerDao;
import com.appfone.dreddyfoundation.Pojo.Dreddyfbanner;
import com.appfone.dreddyfoundation.Service.AdminbannerService;

@Service
public class AdminbannerServiceimpl implements AdminbannerService {

	@Autowired
	private AdminbannerDao bannerdao;
	@Override
	@Transactional
	public List<Dreddyfbanner> getallbannerlist() {
		List<Dreddyfbanner> list = bannerdao.getallbannerlist();
		return list;
	}

	@Override
	@Transactional
	public int getbannersize() {
		int size = bannerdao.getbannersize();
		return size;
	}

	@Override
	@Transactional
	public void deletebanner(int banner_id) {
		bannerdao.deletebanner(banner_id);

	}

	@Override
	@Transactional
	public void saveBanner(Dreddyfbanner banner) {
		bannerdao.saveBanner(banner);

	}

	@Override
	@Transactional
	public Dreddyfbanner getSinglebanner(int banner_id) {
		Dreddyfbanner banner = bannerdao.getSinglebanner(banner_id);
		return banner;
	}

}
