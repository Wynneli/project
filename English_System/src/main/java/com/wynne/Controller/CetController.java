package com.wynne.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.wynne.Entity.Cet;
import com.wynne.Entity.Cet4_Part1Custom;
import com.wynne.Entity.Cet4_Part2Custom;
import com.wynne.Entity.Cet4_Part3A;
import com.wynne.Entity.Cet4_Part3B;
import com.wynne.Entity.Cet4_Part3C;
import com.wynne.Entity.Cet4_Part4;
import com.wynne.Serivce.ICet4_partService;
import com.wynne.Serivce.ICetService;
import com.wynne.Serivce.ICet_Part1Service;
import com.wynne.Serivce.ICet_Part2Service;
import com.wynne.Serivce.ICet_Part3AService;
import com.wynne.Serivce.ICet_Part3BService;
import com.wynne.Serivce.ICet_Part3CService;
import com.wynne.Serivce.ICet_Part4Service;
import com.wynne.Utils.SystemTime;

@Controller
@RequestMapping("/cet")
public class CetController {

	@Autowired
	private ICetService cetService;

	@Autowired
	private ICet4_partService cetPartService;

	@Autowired
	private ICet_Part1Service cet_Part1Service;

	@Autowired
	private ICet_Part4Service cet_Part4Service;

	@Autowired
	private ICet_Part2Service cet_Part2Service;

	@Autowired
	private ICet_Part3AService cet_Part3AService;

	@Autowired
	private ICet_Part3BService cet_Part3BService;

	@Autowired
	private ICet_Part3CService cet_Part3CService;

	private static final String CET4="四级听力试题列表"; 

	private static final String CET6="六级听力试题列表"; 

	private static final String SUCCESS="success"; 

	private static final String FAILURE="failure"; 

	@RequestMapping("/showcetinfo/{cet}")
	public ModelAndView showcetinfo(@PathVariable("cet") String cet){
		ModelAndView modelAndView =new ModelAndView();
		List<Cet>  cet_list=new ArrayList<Cet>();
		if(!cet.equals("")){
			cet_list=cetService.findCetCondition(cet);
		}
		if(cet.equals("cet4_")){
			modelAndView.addObject("cetType", CET4);
		}else{
			modelAndView.addObject("cetType", CET6);
		}
		modelAndView.addObject("cet_list",cet_list);
		modelAndView.setViewName("admin4/Test");
		return modelAndView;
	}

	@RequestMapping("/addCet")
	public @ResponseBody Object addCet(@RequestBody Cet cet){
		JSONObject jsonObject=new JSONObject();
		int count=0;
		int count1=0;
		int count2=0;
		String time=SystemTime.getTime2();
		cet.setCetEntend1(time);
		String cetid=cet.getCetid();
		String cetInfo=cet.getCetInfo();
		if(!cetid.equals("")){
			count=cetService.findCetId(cetid);
		}
		if(!cetInfo.equals("")){
			count1=cetService.findCetInfo(cetInfo);
		}

		if(count1==1){
			jsonObject.put("cetinfo", "试题信息已经存在，请输入其他的！");
		}

		if(count==1){
			jsonObject.put("cetid", "试题编号已经存在，请输入其他的！");
		}

		if(count==0&&count1==0){
			count2=cetService.insert(cet);
			if(count2==1){
				jsonObject.put("attr", SUCCESS);
				System.out.println(cetid);
				cet=cetService.findCet(cetid);
			}
			if(cet!=null){
				jsonObject.put("cet", cet);
			}
		}
		return jsonObject;
	}

	@RequestMapping("/deleteCet")
	public @ResponseBody Object deleteCet(HttpServletRequest request){
		JSONObject jsonObject=new JSONObject();
		int count=0;
		String cetstring=request.getParameter("cetPrimary");
		int cetPrimary=Integer.parseInt(cetstring);
		count=cetService.delete(cetPrimary);
		if(count==1){
			jsonObject.put("attr", SUCCESS);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject;
	}


	@RequestMapping("/editCet/{cetid}")
	public ModelAndView editCet(@PathVariable("cetid") String cet) throws Exception{
		ModelAndView modelAndView =new ModelAndView();
		Cet4_Part1Custom cet4_Part1=new Cet4_Part1Custom();
		List<Cet4_Part2Custom>  cet4_Part2=new ArrayList<Cet4_Part2Custom>();
		Cet4_Part3A cet4_Part3A=new Cet4_Part3A();
		Cet4_Part3B cet4_Part3B=new Cet4_Part3B();
		List<Cet4_Part3C> cet4_Part3C=new ArrayList<Cet4_Part3C>();
		Cet4_Part4 cet4_Part4=new Cet4_Part4();
		if(!cet.equals("")){
			cet4_Part1=cetPartService.find_Cet4_Part1Custom_ByPrimary(cet);
			cet4_Part2=cetPartService.find_part2_infoBycet42TestId(cet);
			cet4_Part3A=cetPartService.find_Cet4_Part3A_ByPrimary(cet);
			cet4_Part3B=cetPartService.find_Cet4_Part3B_ByPrimary(cet);
			cet4_Part3C=cetPartService.find_Cet4_Part3C_Bycet4PartcIds(cet);
			cet4_Part4=cetPartService.find_Cet4_Part4_ByPrimary(cet);
			modelAndView.addObject("cet4_Part1", cet4_Part1);
			modelAndView.addObject("cet4_Part2", cet4_Part2);
			modelAndView.addObject("cet4_Part3A", cet4_Part3A);
			modelAndView.addObject("cet4_Part3B", cet4_Part3B);
			modelAndView.addObject("cet4_Part3C", cet4_Part3C);
			modelAndView.addObject("cet4_Part4", cet4_Part4);
		}
		if(cet.contains("cet4_")){
			modelAndView.addObject("cetType", CET4);
		}else{
			modelAndView.addObject("cetType", CET6);
		}
		modelAndView.setViewName("admin4/editTest");
		return modelAndView;
	}

	@RequestMapping("/editPart1")
	public @ResponseBody Object editPart1(@RequestBody Cet4_Part1Custom cet4_Part1) throws Exception{
		JSONObject jsonObject=new JSONObject();
		int count=0;
		if(cet4_Part1!=null){
			count=cet_Part1Service.updateCetPart1(cet4_Part1);
		}
		if(count==1){
			jsonObject.put("attr", SUCCESS);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject;
	}

	@RequestMapping("/editPart4")
	public @ResponseBody Object editPart4(@RequestBody Cet4_Part4 cet4_Part4) throws Exception{
		JSONObject jsonObject=new JSONObject();
		int count=0;
		if(cet4_Part4!=null){
			count=cet_Part4Service.updatePart4(cet4_Part4);
		}
		if(count==1){
			jsonObject.put("attr", SUCCESS);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject;
	}

	@RequestMapping("/editPart2")
	public @ResponseBody Object editPart2(@RequestBody List<Cet4_Part2Custom> list) throws Exception{
		JSONObject jsonObject=new JSONObject();
		int count=0;
		int count2=0;
		for(int i=0;i<list.size();i++){
			count=cet_Part2Service.updatePart2(list.get(i));
			if(count==1){
				count2=count2+1;
			}
		}
		if(list.size()==count2){
			jsonObject.put("attr", SUCCESS);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject;
	}



	@RequestMapping("/editPart3A")
	public @ResponseBody Object editPart3A(@RequestBody Cet4_Part3A cet4_Part3A) {
		JSONObject jsonObject=new JSONObject();
		int count=0;
		if(cet4_Part3A!=null){
			count=cet_Part3AService.updateCetPart3A(cet4_Part3A);
		}
		if(count==1){
			jsonObject.put("attr", SUCCESS);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject;
	}

	@RequestMapping("/editPart3B")
	public @ResponseBody Object editPart3B(@RequestBody Cet4_Part3B cet4_Part3B) {
		JSONObject jsonObject=new JSONObject();
		int count=0;
		if(cet4_Part3B!=null){
			count=cet_Part3BService.updateCetPart3B(cet4_Part3B);
		}
		if(count==1){
			jsonObject.put("attr", SUCCESS);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject;
	}

	@RequestMapping("/editPart3C")
	public @ResponseBody Object editPart3C(@RequestBody List<Cet4_Part3C> list) {
		JSONObject jsonObject=new JSONObject();
		int count=0;
		int count2=0;
		for(int i=0;i<list.size();i++){
			count=cet_Part3CService.updatePart3C(list.get(i));
			if(count==1){
				count2=count2+1;
			}
		}
		if(list.size()==count2){
			jsonObject.put("attr", SUCCESS);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject;
	}


	@RequestMapping("/addinfo")
	public ModelAndView addinfo() throws Exception{
		ModelAndView modelAndView =new ModelAndView();
		List<Integer>  Part2=new ArrayList<Integer>();
		for(int i=0;i<25;i++){
			Part2.add(i);
		}
		modelAndView.addObject("Part2", Part2);
		modelAndView.addObject("test", "test");
		modelAndView.setViewName("admin4/Add_Test");
		return modelAndView;
	}


	@RequestMapping("/addPart1")
	public @ResponseBody Object addPart1(@RequestBody Cet4_Part1Custom cet4_Part1) throws Exception{
		JSONObject jsonObject=new JSONObject();
		int count=0;
		if(cet4_Part1!=null){
			count=cet_Part1Service.insert(cet4_Part1);
		}
		if(count==1){
			jsonObject.put("attr", SUCCESS);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject;
	}
	
	@RequestMapping("/addPart2")
	public @ResponseBody Object addPart2(@RequestBody List<Cet4_Part2Custom> list) throws Exception{
		JSONObject jsonObject=new JSONObject();
		int count=0;
		int count2=0;
		for(int i=0;i<list.size();i++){
			count=cet_Part2Service.insert(list.get(i));
			if(count==1){
				count2=count2+1;
			}
		}
		if(list.size()==count2){
			jsonObject.put("attr", SUCCESS);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject;
	}

}