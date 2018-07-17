package com.appfone.dreddyfoundation.Controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.appfone.dreddyfoundation.Pojo.Dreddyfadminregiestration;
import com.appfone.dreddyfoundation.Pojo.Dreddyfbanner;
import com.appfone.dreddyfoundation.Pojo.Dreddyfgallarey;
import com.appfone.dreddyfoundation.Service.AdminLoginService;
import com.appfone.dreddyfoundation.Service.AdminRecoveryService;
import com.appfone.dreddyfoundation.Service.AdminactiveService;
import com.appfone.dreddyfoundation.Service.AdminbannerService;
import com.appfone.dreddyfoundation.Service.AdmingalleryService;
import com.appfone.dreddyfoundation.util.Emailutility;


@Controller
public class DreddyfoundationController {
	@Autowired
	private ServletContext context;
	
	@Autowired
	private HttpSession sessionn;

	
	
	@RequestMapping(value="/")
	public ModelAndView Controller()
	{
		List<Dreddyfbanner> list = adminbannerservice.getallbannerlist();
		ModelAndView mv = new ModelAndView();
		mv.addObject("bannerlist", list);
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping(value="/index")
	public ModelAndView indexController()
	{
		List<Dreddyfbanner> list = adminbannerservice.getallbannerlist();
		ModelAndView mv = new ModelAndView();
		mv.addObject("bannerlist", list);
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping(value="/about")
	public ModelAndView aboutController()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("about");
		return mv;
	}
	
	
	@RequestMapping(value="/Blog")
	public ModelAndView blogController()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("blog");
		return mv;
	}
	
	
	@RequestMapping(value="/education")
	public ModelAndView educationController()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("education");
		return mv;
	}
	
	@RequestMapping(value="/gallery")
	public ModelAndView galleryController()
	{
		List<Dreddyfgallarey> gallerylist = admingalleryservice.allimglist();
		ModelAndView mv = new ModelAndView();
		mv.addObject("galerylist", gallerylist);
		mv.setViewName("gallery");
		return mv;
	}
	
	
	@RequestMapping(value="/volunteer")
	public ModelAndView volunteerController()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("volunteer");
		return mv;
	}
	

	@RequestMapping(value="/contact")
	public ModelAndView contactController()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("contact");
		return mv;
	}
	
	@RequestMapping(value="/blogdetails")
	public ModelAndView blogdetailsController()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("blogdetails");
		return mv;
	}
	
	@RequestMapping(value="/admin")
	public ModelAndView adminController()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	
	@Autowired
	private AdminLoginService adminloginservice;
	
	@RequestMapping(value="/adminlogin")
	public String adminloginController(@RequestParam("username")String username,@RequestParam("password")String pass)
	{
		
		int res= adminloginservice.checkAdmin(username, pass);
		System.out.println("res is " +res);
		if(res==1)
		{
			sessionn.setAttribute("activeuser", username);
			sessionn.setAttribute("activepassword", pass);
			
			return "redirect:/adminloginsuccess";
			
		}
		
		return "redirect:/adminloginfailure";
		
		
		
		
	}
	
	@RequestMapping(value="/adminloginsuccess")
	public ModelAndView adminloginsuccessController()
	{	
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}

		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminindex");
		return mv;
	}
	
	
	@RequestMapping(value="/adminloginfailure")
	public ModelAndView adminloginfailureController()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		String err="Username or Password Missmatch";
		mv.addObject("logerr", err);
		return mv;
	}
	
	@RequestMapping(value="/adminlogout")
	public String adminlogoutController()
	{
		sessionn.invalidate();
		return "redirect:/admin";
	}
	
	@RequestMapping(value="dashboard")
	public String dashboardController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			
			return "redirect:/admin";
		}
		return"redirect:/adminloginsuccess";
	}
	
	
	
	
	@Autowired
	private AdminactiveService adminactivservice;
	
	@RequestMapping(value="/adminprofile")
	public ModelAndView adminprofileController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		String username= sessionn.getAttribute("activeuser").toString();
		String password = sessionn.getAttribute("activepassword").toString();
		List<Dreddyfadminregiestration>list = adminactivservice.getCurrentuser(username, password);
		ModelAndView mv = new ModelAndView();
		mv.addObject("adminactivelist", list);
		mv.setViewName("adminprofile");
		return mv;
	}
	
	@RequestMapping(value="/adminsetting")
	public ModelAndView adminsettingController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		ModelAndView mv= new ModelAndView();
		Dreddyfadminregiestration addadmin = new Dreddyfadminregiestration();
		List<Dreddyfadminregiestration> list = adminactivservice.getalladmin();
		mv.addObject("alladminlist", list);
		mv.addObject("addnewadmin", addadmin);
		mv.setViewName("adminsetting");
		return mv;
	}
	
	@RequestMapping(value="/admindelete")
	public String admindeleteController(@RequestParam("admin_id")int id)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			return"redirect:/admin";
		}
		adminactivservice.deleteSingleAdmin(id);
		return "redirect:/adminsetting";
		
		
	}
	
	@RequestMapping(value="/editadmin")
	public ModelAndView editadminController(@RequestParam("admin_id")int id)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		sessionn.setAttribute("editadmin", id);
		Dreddyfadminregiestration editadmin=adminactivservice.getSingleadmin(id);
		ModelAndView mv= new ModelAndView();
		
		mv.setViewName("editadmin");
		mv.addObject("editadmin", editadmin);
		return mv;
		
	}
	
	@RequestMapping(value="/saveeditadmin")
	public String saveeditadminController(@ModelAttribute("editadmin")Dreddyfadminregiestration newadmin)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			return"redirect:/admin";
		}
		String adminname=newadmin.getAdmin_name();
		String activename = sessionn.getAttribute("activeuser").toString();
		 int res= adminactivservice.checkadminNameavailable(adminname);
		 if(adminname.equals(activename))
		 {
			 res=0;
		 }
		 if(res==0)
		 {
		adminactivservice.saveAdmin(newadmin);
		return"redirect:/adminsetting";
		 }
		 int admin_id=Integer.parseInt(sessionn.getAttribute("editadmin").toString());
		 return "redirect:/saveeditadminfailure?admin_id="+admin_id;
		
	}
	@RequestMapping(value="/saveeditadminfailure")
	public ModelAndView saveeditadminfailureController(@RequestParam("admin_id")int id)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		
		Dreddyfadminregiestration editadmin=adminactivservice.getSingleadmin(id);
		ModelAndView mv= new ModelAndView();
		String errmsg = "Choosen admin name is already taken !!!";
		mv.setViewName("editadmin");
		mv.addObject("editadmin", editadmin);
		mv.addObject("editadminexist", errmsg);
		return mv;
		
		
		
	}
	
	@RequestMapping(value="/saveadmin")
	public String saveadminController(@ModelAttribute("addnewadmin")Dreddyfadminregiestration newadmin)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			return"redirect:/admin";
		}
		String adminname=newadmin.getAdmin_name();
		 int res= adminactivservice.checkadminNameavailable(adminname);
		 if(res==0)
		 {
		adminactivservice.saveAdmin(newadmin);
		
		return"redirect:/adminsetting";
		 }
		 return "redirect:/saveadminfailure";
		
	}
	
	@RequestMapping(value="/saveadminfailure")
	public ModelAndView saveadminfailureController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		ModelAndView mv= new ModelAndView();
		Dreddyfadminregiestration addadmin = new Dreddyfadminregiestration();
		List<Dreddyfadminregiestration> list = adminactivservice.getalladmin();
		String errmsg = "Choosen admin name already exists !!";
		mv.addObject("alladminlist", list);
		mv.addObject("addnewadmin", addadmin);
		mv.addObject("adminexists", errmsg);
		mv.setViewName("adminsetting");
		return mv;
		
	}
	
	@RequestMapping(value="/forgetpassword")
	public ModelAndView forgetpasswordController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("forgetpassword");
		return mv;
	}
	
	@Autowired
	private AdminRecoveryService adminrecoveryservice;
	
	@RequestMapping(value="/recovery")
	public ModelAndView recoveryController(@RequestParam("useremail")String email)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		
		int res=adminrecoveryservice.checkMailidtosend(email);
		if(res==1)
		{
			String username=adminrecoveryservice.getusername(email);
			String password=adminrecoveryservice.getpassword(email);
			String subject ="login credentials Recovery ";
			String msg="Dear Admin your username and password is as follows \n \n \n Username :" +username +"\n Password is :"+password +"\n \n \n Please don't reply to this message this is computer generated";
		Emailutility.send(email, subject, msg);
		
			ModelAndView mv = new ModelAndView();
		mv.setViewName("popup");
		return mv;
		}
		ModelAndView mv=new ModelAndView();
		mv.setViewName("forgetpassword");
		String recerror="please enter the registred email id";
		mv.addObject("recerr", recerror);
		return mv;
		
		
	}
	@Autowired
	private AdminbannerService adminbannerservice;
	
	@RequestMapping(value="/adminbanner")
	public ModelAndView adminbannerController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		List<Dreddyfbanner> list = adminbannerservice.getallbannerlist();
		int size=adminbannerservice.getbannersize();
		ModelAndView mv= new ModelAndView();
		Dreddyfbanner banner = new Dreddyfbanner();
		mv.addObject("adminbannerlist", list);
		mv.addObject("adminbanner", banner);
		mv.addObject("bannersize", size);
		mv.setViewName("adminbanner");
		
		return mv;
		
	}
	
	@RequestMapping(value="/saveadminbanner")
	public String saveadminbannerController(@ModelAttribute("adminbanner")Dreddyfbanner banner)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			return"redirect:/admin";
		}
		boolean check = false;
		MultipartFile file= banner.getBannerfile();
		String fileName = file.getOriginalFilename();
		banner.setBanner_image(fileName);
		String uploadpath = context.getRealPath("")+File.separator+"images"+File.separator+"bannerimages";
		System.out.println("uploadpath is" +uploadpath);
		   File targetFile = new File(uploadpath, fileName);  
		   check = targetFile.exists();
		   if(check==false)
		   {
		   try {
			file.transferTo(targetFile);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		   adminbannerservice.saveBanner(banner);
		   return "redirect:/adminbanner";
		   
		   }
		   return "redirect:/savebannerfailure";
		   
	}
	
	@RequestMapping(value="/adminbanneredit")
	public ModelAndView adminbannereditController(@RequestParam("banner_image")String bannerimg,@RequestParam("banner_id")int banner_id)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		Dreddyfbanner editbanner = adminbannerservice.getSinglebanner(banner_id);
		
		ModelAndView mv= new ModelAndView();
		mv.setViewName("adminbanneredit");
		mv.addObject("editadminbanner", editbanner);
		mv.addObject("banimgtoedit", bannerimg);
		return mv;
	}
	
	
	@RequestMapping(value="/saveadminbanneredit")
	public String saveadminbannereditController(@ModelAttribute("editadminbanner")Dreddyfbanner editbanner,@RequestParam("bannerimgtoedit")String deleteimage)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			return"redirect:/admin";
		}
		boolean check = false;
		String uploadpath = context.getRealPath("")+File.separator+"images"+File.separator+"bannerimages";
		MultipartFile file = editbanner.getBannerfile();
		String fileName= file.getOriginalFilename();
		System.out.println("uploadpath is" +uploadpath);
		   File targetFile = new File(uploadpath, fileName);  
		   check = targetFile.exists();
		   System.out.println("file check value is " +check);
		   if(check==false)
		   {
		   try {
			file.transferTo(targetFile);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		   editbanner.setBanner_image(fileName);
		   File deletefile = new File(uploadpath,deleteimage);
		   deletefile.delete();
		   adminbannerservice.saveBanner(editbanner);
		   return "redirect:/adminbanner";
		   }
		   
		   return "redirect:/savebannerfailure";

	}
	
	@RequestMapping(value="/savebannerfailure")
	public ModelAndView savebannerfailureController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		List<Dreddyfbanner> list = adminbannerservice.getallbannerlist();
		String fileerr= "Duplicate file The uploading file is already exits";
		int size=adminbannerservice.getbannersize();
		ModelAndView mv= new ModelAndView();
		Dreddyfbanner banner = new Dreddyfbanner();
		mv.addObject("adminbannerlist", list);
		mv.addObject("adminbanner", banner);
		mv.addObject("bannersize", size);
		mv.addObject("fileerr", fileerr);
		mv.setViewName("adminbanner");
		
		return mv;
	}
	
	@RequestMapping(value="/adminbannerdelete")
	public String adminbannerdeleteController(@RequestParam("banner_id")int banner_id,@RequestParam("banner_image")String banimg)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			return"redirect:/admin";
		}
		String floderpath= context.getRealPath("")+File.separator+"images"+File.separator+"bannerimages"+File.separator;
		System.out.println("floder path is " +floderpath);
		File delfile=new File(floderpath,banimg);
		delfile.delete();
		adminbannerservice.deletebanner(banner_id);
		return "redirect:/adminbanner";
		
	}
	
	@RequestMapping(value="/admingallery")
	public ModelAndView admingalleryController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admingallery");
		return mv ;
	}
	
	@Autowired
	private AdmingalleryService admingalleryservice;
	
	@RequestMapping(value="/adminblooddonationimages")
	public ModelAndView admintimelineimagesController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		Dreddyfgallarey galleryimage= new Dreddyfgallarey();
		ModelAndView mv = new ModelAndView();
		List<Dreddyfgallarey> gallerylist = admingalleryservice.allimglist();
		mv.addObject("blooddonationimggal", galleryimage);
		mv.addObject("adminblodimg", gallerylist);
		mv.setViewName("adminbloodimg");
		return mv;
		
	}
	
	
	@RequestMapping(value="/saveadminblooddonationimg")
	public String saveadminblooddonationimgController(@ModelAttribute("blooddonationimggal")Dreddyfgallarey blooddonationimg)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			return"redirect:/admin";
		}
		boolean check = false;
		MultipartFile file= blooddonationimg.getGalleryfile();
		String fileName = file.getOriginalFilename();
		blooddonationimg.setGallery_image(fileName);
		blooddonationimg.setGalleryimg_type("blooddonation");
		String uploadpath = context.getRealPath("")+File.separator+"images"+File.separator+"galleryimages";
		System.out.println("uploadpath is" +uploadpath);
		   File targetFile = new File(uploadpath, fileName);  
		   check = targetFile.exists();
		   if(check==false)
		   {
		   try {
			file.transferTo(targetFile);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		   admingalleryservice.savegalleryImg(blooddonationimg);
		   return "redirect:/adminblooddonationimages";
		   }
		   return "redirect:/saveadminblooddonationimgfailure";
		
	}
	
	@RequestMapping(value="/saveadminblooddonationimgfailure")
	public ModelAndView saveadminblooddonationimgfailureController()
	{
		
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		Dreddyfgallarey galleryimage= new Dreddyfgallarey();
		String fileerr= "Duplicate file The uploading file is already exits";
		ModelAndView mv = new ModelAndView();
		List<Dreddyfgallarey> gallerylist = admingalleryservice.allimglist();
		mv.addObject("blooddonationimggal", galleryimage);
		mv.addObject("adminblodimg", gallerylist);
		mv.addObject("fileerr", fileerr);
		mv.setViewName("adminbloodimg");
		return mv;
		
	}
	
	
	@RequestMapping(value="/deleteadminbloodimg")
	public String deleteadmintimeimgController(@RequestParam("gallery_id")int gallery_id,@RequestParam("gallery_img")String gallery_img)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			return "redirect:/admin";
		}
		String floderpath= context.getRealPath("")+File.separator+"images"+File.separator+"galleryimages"+File.separator;
		System.out.println("floder path is " +floderpath);
		File delfile=new File(floderpath,gallery_img);
		delfile.delete();
		admingalleryservice.deletegalleryImg(gallery_id);
		return "redirect:/adminblooddonationimages";
	}
	
	@RequestMapping(value="/adminmedicalimg")
	public ModelAndView adminmedicalimgController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		Dreddyfgallarey galleryimage= new Dreddyfgallarey();
		ModelAndView mv = new ModelAndView();
		List<Dreddyfgallarey> gallerylist = admingalleryservice.allimglist();
		mv.addObject("medicalimggal", galleryimage);
		mv.addObject("adminmedicalimg", gallerylist);
		mv.setViewName("adminmedicalimg");
		return mv;
		
	}
	
	@RequestMapping(value="/saveadminmedicalimg")
	public String saveadminmedicalimgController(@ModelAttribute("medicalimggal")Dreddyfgallarey blooddonationimg)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			return"redirect:/admin";
		}
		boolean check = false;
		MultipartFile file= blooddonationimg.getGalleryfile();
		String fileName = file.getOriginalFilename();
		blooddonationimg.setGallery_image(fileName);
		blooddonationimg.setGalleryimg_type("medicalcamp");
		String uploadpath = context.getRealPath("")+File.separator+"images"+File.separator+"galleryimages";
		System.out.println("uploadpath is" +uploadpath);
		   File targetFile = new File(uploadpath, fileName);  
		   check = targetFile.exists();
		   if(check==false)
		   {
		   try {
			file.transferTo(targetFile);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		   admingalleryservice.savegalleryImg(blooddonationimg);
		   return "redirect:/adminmedicalimg";
		   }
		   return "redirect:/saveadminmedicalimgfailure";
		
	}

	
	@RequestMapping(value="/saveadminmedicalimgfailure")
	public ModelAndView saveadminmedicalimgfailureController()
	{
		
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		Dreddyfgallarey galleryimage= new Dreddyfgallarey();
		String fileerr= "Duplicate file The uploading file is already exits";
		ModelAndView mv = new ModelAndView();
		List<Dreddyfgallarey> gallerylist = admingalleryservice.allimglist();
		mv.addObject("medicalimggal", galleryimage);
		mv.addObject("adminmedicalimg", gallerylist);
		mv.addObject("fileerr", fileerr);
		mv.setViewName("adminmedicalimg");
		return mv;
		
	}
	
	@RequestMapping(value="/deleteadminmedicalimg")
	public String deleteadminmedicalimgController(@RequestParam("gallery_id")int gallery_id,@RequestParam("gallery_img")String gallery_img)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			return "redirect:/admin";
		}
		String floderpath= context.getRealPath("")+File.separator+"images"+File.separator+"galleryimages"+File.separator;
		System.out.println("floder path is " +floderpath);
		File delfile=new File(floderpath,gallery_img);
		delfile.delete();
		admingalleryservice.deletegalleryImg(gallery_id);
		return "redirect:/adminmedicalimg";
	}
	
	@RequestMapping(value="/adminfundimg")
	public ModelAndView adminfundimgController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		Dreddyfgallarey galleryimage= new Dreddyfgallarey();
		ModelAndView mv = new ModelAndView();
		List<Dreddyfgallarey> gallerylist = admingalleryservice.allimglist();
		mv.addObject("fundimggal", galleryimage);
		mv.addObject("adminfunimg", gallerylist);
		mv.setViewName("adminfundimg");
		return mv;
		
	}
	
	@RequestMapping(value="/saveadminfundimg")
	public String saveadminfundimgController(@ModelAttribute("fundimggal")Dreddyfgallarey fundraiseimg)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			return"redirect:/admin";
		}
		boolean check = false;
		MultipartFile file= fundraiseimg.getGalleryfile();
		String fileName = file.getOriginalFilename();
		fundraiseimg.setGallery_image(fileName);
		fundraiseimg.setGalleryimg_type("fundraise");
		String uploadpath = context.getRealPath("")+File.separator+"images"+File.separator+"galleryimages";
		System.out.println("uploadpath is" +uploadpath);
		   File targetFile = new File(uploadpath, fileName);  
		   check = targetFile.exists();
		   if(check==false)
		   {
		   try {
			file.transferTo(targetFile);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		   admingalleryservice.savegalleryImg(fundraiseimg);
		   return "redirect:/adminfundimg";
		   }
		   return "redirect:/saveadminfundimgfailure";
		
	}
	
	@RequestMapping(value="/saveadminfundimgfailure")
	public ModelAndView saveadminfundimgfailureController()
	{
		
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		Dreddyfgallarey galleryimage= new Dreddyfgallarey();
		String fileerr= "Duplicate file The uploading file is already exits";
		ModelAndView mv = new ModelAndView();
		List<Dreddyfgallarey> gallerylist = admingalleryservice.allimglist();
		mv.addObject("fundimggal", galleryimage);
		mv.addObject("adminfunimg", gallerylist);
		mv.addObject("fileerr", fileerr);
		mv.setViewName("adminfundimg");
		return mv;
		
	}
	
	@RequestMapping(value="/deleteadminfundimg")
	public String deleteadminfundimgController(@RequestParam("gallery_id")int gallery_id,@RequestParam("gallery_img")String gallery_img)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			return "redirect:/admin";
		}
		String floderpath= context.getRealPath("")+File.separator+"images"+File.separator+"galleryimages"+File.separator;
		System.out.println("floder path is " +floderpath);
		File delfile=new File(floderpath,gallery_img);
		delfile.delete();
		admingalleryservice.deletegalleryImg(gallery_id);
		return "redirect:/adminfundimg";
	}
	
	@RequestMapping(value="/adminplantingimg")
	public ModelAndView adminplantingimgController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		Dreddyfgallarey galleryimage= new Dreddyfgallarey();
		ModelAndView mv = new ModelAndView();
		List<Dreddyfgallarey> gallerylist = admingalleryservice.allimglist();
		mv.addObject("plantingimggal", galleryimage);
		mv.addObject("adminplantingimg", gallerylist);
		mv.setViewName("adminplanting");
		return mv;
		
	}
	
	@RequestMapping(value="/saveadminplantingimg")
	public String saveadminplantingimgController(@ModelAttribute("plantingimggal")Dreddyfgallarey plantingimg)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			return"redirect:/admin";
		}
		boolean check = false;
		MultipartFile file= plantingimg.getGalleryfile();
		String fileName = file.getOriginalFilename();
		plantingimg.setGallery_image(fileName);
		plantingimg.setGalleryimg_type("planting");
		String uploadpath = context.getRealPath("")+File.separator+"images"+File.separator+"galleryimages";
		System.out.println("uploadpath is" +uploadpath);
		   File targetFile = new File(uploadpath, fileName);  
		   check = targetFile.exists();
		   if(check==false)
		   {
		   try {
			file.transferTo(targetFile);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		   admingalleryservice.savegalleryImg(plantingimg);
		   return "redirect:/adminplantingimg";
		   }
		   return "redirect:/saveadminplantingimgfailure";
		
	}
	
	@RequestMapping(value="/saveadminplantingimgfailure")
	public ModelAndView saveadminplantingimgfailureController()
	{
		
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		Dreddyfgallarey galleryimage= new Dreddyfgallarey();
		String fileerr= "Duplicate file The uploading file is already exits";
		ModelAndView mv = new ModelAndView();
		List<Dreddyfgallarey> gallerylist = admingalleryservice.allimglist();
		mv.addObject("plantingimggal", galleryimage);
		mv.addObject("adminplantingimg", gallerylist);
		mv.addObject("fileerr", fileerr);
		mv.setViewName("adminplantdimg");
		return mv;
		
	}
	
	@RequestMapping(value="/deleteadminplantingimg")
	public String deleteadminplantingimgController(@RequestParam("gallery_id")int gallery_id,@RequestParam("gallery_img")String gallery_img)
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			return "redirect:/admin";
		}
		String floderpath= context.getRealPath("")+File.separator+"images"+File.separator+"galleryimages"+File.separator;
		System.out.println("floder path is " +floderpath);
		File delfile=new File(floderpath,gallery_img);
		delfile.delete();
		admingalleryservice.deletegalleryImg(gallery_id);
		return "redirect:/adminplantingimg";
	}
	
	@RequestMapping(value="/adminquotes")
	public ModelAndView adminquotesController()
	{
		if((sessionn.getAttribute("activeuser"))==null)
		{
			ModelAndView mv= new ModelAndView();
			mv.setViewName("adminlogin");
			return mv;
		}
		
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminquotes");
		return mv;
		
	}
	
	@RequestMapping(value="/saveadminquotes")
	public String saveadminquotesController(@RequestParam("quotes")String quotes)
	{
		
		System.out.println(quotes);
		return"redirect:/adminquotes";
		
	}

}
