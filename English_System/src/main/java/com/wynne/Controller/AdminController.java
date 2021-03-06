package com.wynne.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.taglibs.standard.lang.jstl.test.beans.PublicBean1;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.wynne.Entity.Admin;
import com.wynne.Entity.Cet4Custom;
import com.wynne.Entity.CommentCustom;
import com.wynne.Entity.UserCustom;
import com.wynne.Serivce.IAdminService;
import com.wynne.Serivce.ICet4LoadingService;
import com.wynne.Serivce.ICommentService;
import com.wynne.Serivce.IUserService;
import com.wynne.Utils.HandleCet;
import com.wynne.Utils.HandleNull;
import com.wynne.Utils.Handlepage;
import com.wynne.test.readfile;
@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired  
	private IUserService userService;

	@Autowired
	private ICommentService commentService;

	@Autowired
	private ICet4LoadingService cet4LoadingService;

	@Autowired
	private IAdminService adminService;

	private final static String SUCCESS="success";

	private final static String FAILURE="failure";


	@RequestMapping("/checkadmin")
	public @ResponseBody Object checkadmin(@RequestBody Admin admin2 ){
		JSONObject jsonObject=new JSONObject();
		Admin admin=new Admin();
		admin=adminService.checkadmin(admin2.getAdminname(), admin2.getAdminpassword());
		if(admin!=null){
			jsonObject.put("attr", "success");
		}else{
			jsonObject.put("attr", "false");
			jsonObject.put("message", "账号或者密码错误");
		}

		return jsonObject;
	}


	@RequestMapping("/login")
	public String  login( HttpServletRequest request,HttpSession session ){
		Admin admin=new Admin();
		admin=adminService.checkadmin(request.getParameter("username"), request.getParameter("userpassword"));
		session.setAttribute("admin", admin);
		return "redirect:/Page/admin4/admin.jsp";
	}
	
	@RequestMapping("/loginout")
	public String login_out(HttpSession session){
		session.invalidate();
		return "redirect:/Page/admin4/adminLogin.jsp";
	}

	@RequestMapping("/show_userinfo")
	public ModelAndView show_userinfo(){
		ModelAndView modelAndView=new ModelAndView();
		List<UserCustom> allUser_list =new ArrayList<UserCustom>();
		int count=0;
		List<Integer> count_list=new ArrayList<Integer>();
		allUser_list=userService.findAllUser();
		count=userService.totalUser();
		int pagecontent=Handlepage.handlepage(count);
		modelAndView.addObject("pagecontent_user", pagecontent);
		for(int i=0;i<pagecontent;i++){
			count_list.add(i);
		}

		modelAndView.addObject("count_list",count_list);

		if(allUser_list!=null){ 
			modelAndView.addObject("AllUser_list", allUser_list);
		}
		modelAndView.setViewName("admin4/UserManage");
		return modelAndView;
	}





	@RequestMapping("/show_commentifo")
	public ModelAndView show_CommenInfo(){
		ModelAndView modelAndView=new ModelAndView();
		List<CommentCustom> allComment_list =new ArrayList<CommentCustom>();
		List<Integer> commentlist=new ArrayList<Integer>();
		allComment_list= commentService.findAllComment(0);
		int commentpage=Handlepage.handlepage(commentService.countComment());
		for(int i=0;i<commentpage;i++){
			commentlist.add(i);
		}
		if(commentpage>0){
			modelAndView.addObject("commentlist",commentlist);
			modelAndView.addObject("commentpage",commentpage);
		}
		if(allComment_list!=null){
			modelAndView.addObject("allComment_list", allComment_list);
		}else{
			modelAndView.addObject("false", FAILURE);
		}
		System.out.println("modelandview2");
		modelAndView.setViewName("admin4/CommentManage");
		return modelAndView;
	}


	@RequestMapping("/show_cet4info/{cet}")
	public ModelAndView show_cet4info(@PathVariable(value="cet") String cet){
		ModelAndView modelAndView=new ModelAndView();
		List<Cet4Custom> cet4_list =new ArrayList<Cet4Custom>();
		List<Integer> cet4list=new ArrayList<Integer>();
		cet4_list= cet4LoadingService.findCet4(cet,0);
		int count=cet4LoadingService.countCet4(cet);
		int cet4page=Handlepage.handlepage(count);
		System.out.println("show_cet4info");
		for(int i=0;i<cet4page;i++){
			cet4list.add(i);
		}
		if(cet4page>0){
			modelAndView.addObject("cet4list",cet4list);
			modelAndView.addObject("cet4page",cet4page);
		}
		if(cet4_list!=null){
			modelAndView.addObject("cet4_list", cet4_list);
		}else{
			modelAndView.addObject("false", FAILURE);
		}
		if(cet.equals("cet4_")){
			modelAndView.addObject("cetType", "cet4");
		}else{
			modelAndView.addObject("cetType", "cet6");
		}
		modelAndView.setViewName("admin4/Cet");
		return modelAndView;
	}




	@RequestMapping("/return_cet_info/{cet4Id}")
	public ModelAndView return_cet_info(@PathVariable(value="cet4Id") String cet4Id){
		System.out.println("return_cet_info");
		ModelAndView modelAndView=new ModelAndView();
		List<Cet4Custom> cet4_list =new ArrayList<Cet4Custom>();
		List<Integer> cet4list=new ArrayList<Integer>();
		String cet=cet4Id.substring(0,4);
		System.out.println(cet);
		cet4_list= cet4LoadingService.findCet4(cet,Handlepage.handlepagebyCetid(cet4Id));
		int cet4page=Handlepage.handlepage(cet4LoadingService.countCet4(cet));
		for(int i=0;i<cet4page;i++){
			cet4list.add(i);
		}
		System.out.println(cet4list.size());
		if(cet4page>0){
			modelAndView.addObject("cet4list",cet4list);
			modelAndView.addObject("cet4page",cet4page);
		}
		if(cet4_list!=null){
			modelAndView.addObject("cet4_list", cet4_list);
		}else{
			modelAndView.addObject("false", FAILURE);
		}
		System.out.println(cet4_list.toString());
		if(cet.equals("cet4_")){
			modelAndView.addObject("cetType", "cet4");
		}else{
			modelAndView.addObject("cetType", "cet6");
		}

		modelAndView.setViewName("admin4/Cet");
		return modelAndView;
	}


	@RequestMapping("/add_new_cetword/{cetType}")
	public ModelAndView add_new_cetword(@PathVariable(value="cetType") String cetType){
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("maxcetId", cet4LoadingService.findLastCet4Id(cetType));
		modelAndView.addObject("cetType", cetType);
		modelAndView.setViewName("admin4/AddCetWord");
		return modelAndView;
	}


	@RequestMapping("/search")
	public @ResponseBody Object search(@RequestBody UserCustom userCustom){
		JSONObject jsonObject=new JSONObject();
		List<UserCustom> obscure_list=new ArrayList<UserCustom>();
		obscure_list=userService.Obscure_find(userCustom);
		obscure_list=HandleNull.HandleUser(obscure_list);
		jsonObject.put("obscure_list", obscure_list);
		return jsonObject;
	}

	@RequestMapping("/deleteuser")
	public @ResponseBody Object deleteuser( HttpServletRequest request){
		JSONObject jsonObject=new JSONObject();
		int count=0;
		int userid=Integer.parseInt(request.getParameter("userid"));
		count=userService.deleteByPrimaryKey(userid);
		List<UserCustom> allUser_list =new ArrayList<UserCustom>();
		allUser_list=userService.findAllUser();
		if(count==1&&allUser_list!=null){
			allUser_list=HandleNull.HandleUser(allUser_list);
			jsonObject.put("attr", SUCCESS);
			jsonObject.put("allUser_list", allUser_list);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject;
	}




	@RequestMapping("/uniquepage")
	public @ResponseBody Object uniquepage(HttpServletRequest request){
		JSONObject jsonObject=new JSONObject();
		String qString=request.getParameter("pagecontent");
		int page=Integer.parseInt(qString);
		List<UserCustom> userlist=userService.findAllUser2(Handlepage.handlepageoff(page));
		if(userlist!=null){
			jsonObject.put("userlist", userlist);
			jsonObject.put("attr", SUCCESS);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject; 
	}

	@RequestMapping("/unique_comment_page")
	public @ResponseBody Object unique_comment_page(HttpServletRequest request){
		JSONObject jsonObject=new JSONObject();
		String qString=request.getParameter("pagecontent");
		int page=Integer.parseInt(qString);
		List<CommentCustom> commentlist=commentService.findAllComment(Handlepage.handlepageoff(page));
		if(commentlist!=null){
			jsonObject.put("commentlist", commentlist);
			jsonObject.put("attr", SUCCESS);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject; 
	}

	@RequestMapping("/unique_cet_page")
	public @ResponseBody Object unique_cet_page(HttpServletRequest request){
		JSONObject jsonObject=new JSONObject();
		String qString=request.getParameter("pagecontent");
		String cet=request.getParameter("cet").substring(0,4);
		int page=Integer.parseInt(qString);
		List<Cet4Custom> cet4list=cet4LoadingService.findCet4(cet,Handlepage.handlepageoff(page));
		if(cet4list!=null){
			jsonObject.put("cet4list", cet4list);
			jsonObject.put("attr", SUCCESS);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject; 
	}




	@RequestMapping("/search_page")
	public @ResponseBody Object search_page(HttpServletRequest request){
		JSONObject jsonObject=new JSONObject();
		String qString=request.getParameter("page");
		int page=Integer.parseInt(qString);
		List<CommentCustom> commentlist=commentService.findAllComment(Handlepage.handlepageoff(page));
		if(commentlist!=null){
			jsonObject.put("commentlist", commentlist);
			jsonObject.put("attr", SUCCESS);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject; 
	}

	@RequestMapping("/search_cet_page")
	public @ResponseBody Object search_cet_page(HttpServletRequest request){
		JSONObject jsonObject=new JSONObject();
		String qString=request.getParameter("page");
		int page=Integer.parseInt(qString);
		String cet=request.getParameter("cet").substring(0,4);
		//		System.out.println(Handlepage.handlepageoff(page));
		List<Cet4Custom> cet4list=cet4LoadingService.findCet4(cet,Handlepage.handlepageoff(page));
		if(cet4list!=null){
			jsonObject.put("cet4list", cet4list);
			jsonObject.put("attr", SUCCESS);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject; 
	}


	@RequestMapping("/cet_edit/{cet4Id}")
	public ModelAndView cet_edit(@PathVariable(value="cet4Id") String cet4Id){
		System.out.println("edit");
		ModelAndView modelAndView = new ModelAndView();
		Cet4Custom cet4Custom=cet4LoadingService.Select_cet4_info_ByPrimary(cet4Id);
		System.out.println(cet4Custom.toString());
		modelAndView.addObject("cet4Custom", cet4Custom);
		modelAndView.setViewName("/admin4/Cet_edit");
		return modelAndView;
	}

	@RequestMapping("/cet_editAndsave")
	public @ResponseBody Object cet_editAndsave(@RequestBody Cet4Custom cet4Custom){
		JSONObject jsonObject=new JSONObject();
		int count=cet4LoadingService.updateCet4(cet4Custom);
		if(count==1){
			jsonObject.put("attr", SUCCESS);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject;
	}



	@RequestMapping("/saveAndSubbmit")
	public @ResponseBody Object saveAndSubbmit(@RequestBody Cet4Custom cet4Custom){
		JSONObject jsonObject=new JSONObject();
		int count=cet4LoadingService.insertCetRecord(cet4Custom);
		String cetId=HandleCet.handleCetId(cet4Custom.getCet4Id());
		if(count==1){
			jsonObject.put("attr", SUCCESS);
			jsonObject.put("cetId", cetId);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject;
	}


	@RequestMapping("/cet_delete")
	public @ResponseBody Object cet_delete(HttpServletRequest request){
		JSONObject jsonObject=new JSONObject();
		String cet2=request.getParameter("cet4Id");
		System.out.println(cet2);
		int index=cet2.lastIndexOf("/");
		String cetid=cet2.substring(index+1,cet2.length());
		System.out.println(cetid);
		String cet=cetid.substring(0,4);
		int  page=Integer.parseInt(request.getParameter("page"));
		int count=cet4LoadingService.deleteCet4(cetid);
		System.out.println(count);
		if(count==1){
			List<Cet4Custom> cet4list=cet4LoadingService.findCet4(cet,Handlepage.handlepageoff(page));
			if(cet4list!=null){
				jsonObject.put("cet4list", cet4list);
			}
			jsonObject.put("attr", SUCCESS);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject;
	}


	@RequestMapping("/BatchdeleteCet")
	public @ResponseBody Object BatchdeleteCet(HttpServletRequest request){
		JSONObject jsonObject=new JSONObject();
		List<Cet4Custom> cet4list=new ArrayList<Cet4Custom>();
		int counts=0;
		String CetIdList=request.getParameter("CetIdList");
		String[] items=CetIdList.split(",");
		String cet=request.getParameter("cetType").substring(0,4);
		for(int i=0;i<items.length;i++){
			int count=cet4LoadingService.deleteCet4(items[i]);
			System.out.println(items[i]);
			if(count==1){
				counts=counts+1;
			}
		}
		if(counts==items.length){
			jsonObject.put("attr", SUCCESS);
		}else{
			jsonObject.put("attr", FAILURE);
			jsonObject.put("successcount", counts);
			jsonObject.put("failurecount", items.length-counts);
		}
		String qString=request.getParameter("page");
		int page=Integer.parseInt(qString);
		cet4list=cet4LoadingService.findCet4(cet,Handlepage.handlepageoff(page));
		if(!cet4list.isEmpty()){
			jsonObject.put("cet4list", cet4list);
			jsonObject.put("page", page);
		}else{
			cet4list=cet4LoadingService.findCet4(cet,Handlepage.handlepageoff(page-1));
			jsonObject.put("cet4list", cet4list);
			jsonObject.put("page", page-1);
		}
		return jsonObject;
	}


}
