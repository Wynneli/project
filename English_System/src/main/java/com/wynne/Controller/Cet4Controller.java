package com.wynne.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wynne.Entity.Cet4;
import com.wynne.Entity.Cet4Custom;
import com.wynne.Entity.Cet4_Part1Custom;
import com.wynne.Entity.Cet4_Part2Custom;
import com.wynne.Entity.Cet4_Part3A;
import com.wynne.Entity.Cet4_Part3B;
import com.wynne.Entity.Cet4_Part3C;
import com.wynne.Entity.Cet4_Part4;
import com.wynne.Entity.ProcessCustom;
import com.wynne.Entity.Unknown_WordCustom;
import com.wynne.Entity.UserCustom;
import com.wynne.Serivce.ICet4LoadingService;
import com.wynne.Serivce.ICet4_partService;

/**
 *<p>Title: </p>
 *<p>Description:用于读取单词信息 </p>
 * @author liweining
 *@date 2017年3月5日 下午5:17:07 
 */
@Controller
@RequestMapping("cet4")
public class Cet4Controller {

	@Autowired
	private ICet4LoadingService cet4LoadingService;
	@Autowired
	private ICet4_partService cet4_partService;

	private static final String cet4_id_init="cet4_0001";
	private static final String CET4_="cet4_";
	@RequestMapping("/loading")
	public String Add()throws Exception{
		cet4LoadingService.Add();
		return "success";

	}
	//
	//	@RequestMapping("/add_unknown_word")
	//	public String Addfor_Unknown()throws Exception{
	//		System.out.println("正在添加默认单词......");
	//		return "cet4/cet4_vocabulary";
	//	}
	//
	//	@RequestMapping("/ajax")
	//	public void test(@RequestBody UserCustom userCustom)throws Exception{
	//		System.out.println("正在调用ajax");
	//	}

	@RequestMapping("ajax")
	public @ResponseBody String test()throws Exception{
		System.out.println("正在调用ajax");
		return "134645";
	}


	@RequestMapping("/nextword")
	public @ResponseBody Cet4Custom nextword(@RequestBody Cet4Custom cet4Custom)throws Exception{
		System.out.println("执行nextword");
		String cet4_id=cet4Custom.getCet4Id();
		System.out.println(cet4_id);
		if(cet4_id.equals("")){
			cet4_id="cet4_0001";
		}else{
			cet4_id=cet4Custom.getCet4Id();
//			System.out.println(cet4_id);
//			System.out.println(cet4_id.substring(5, cet4_id.length()));
			int num=Integer.parseInt(cet4_id.substring(5, cet4_id.length()))+1;
			String num2=String.valueOf(num);
			if(num2.length()==1){
				num2="000"+num2;
			}else if(num2.length()==2){
				num2="00"+num2;
			}else if(num2.length()==3){
				num2="0"+num2;
			}
			cet4_id=CET4_+num2;
		}
		cet4Custom=cet4LoadingService.Select_cet4_info_ByPrimary(cet4_id);
//		System.out.println(cet4Custom.toString());
		return cet4Custom;
	}

	@RequestMapping("/preword")
	public @ResponseBody Cet4Custom preword(@RequestBody Cet4Custom cet4Custom)throws Exception{
		System.out.println("执行preword");
		String cet4_id=cet4Custom.getCet4Id();
		if(!cet4_id.equals("")&&!cet4_id.equals("cet4_0001")){
			cet4_id=cet4Custom.getCet4Id();
//			System.out.println(cet4_id);
//			System.out.println(cet4_id.substring(5, cet4_id.length()));
			int num=(Integer.parseInt(cet4_id.substring(5, cet4_id.length()))-1);
			String num2=String.valueOf(num);
			if(num2.length()==1){
				num2="000"+num2;
			}else if(num2.length()==2){
				num2="00"+num2;
			}else if(num2.length()==3){
				num2="0"+num2;
			}
			cet4_id=CET4_+num2;
		}
		cet4Custom=cet4LoadingService.Select_cet4_info_ByPrimary(cet4_id);
		return cet4Custom;
	}

	@RequestMapping("/nextword2")
	public @ResponseBody Cet4 nextword2(@RequestBody Cet4 cet4)throws Exception{
		System.out.println("执行nextword");
		System.out.println(cet4.getCet4Id());
		return cet4;
	}
	@RequestMapping("ajax3")
	public @ResponseBody UserCustom test3(@RequestBody UserCustom userCustom,HttpServletRequest request)throws Exception{
		String username=userCustom.getUsername();
		System.out.println("正在调用ajax请求json"+"\t"+username);
		return userCustom;
	}
	@RequestMapping("/loading_cet4_word")
	public String show_cet4_info(HttpSession session){
		Cet4Custom cet4Custom=null;
		UserCustom userCustom=(UserCustom) session.getAttribute("user");
		if(userCustom!=null){
			ProcessCustom processCustom=cet4LoadingService.Loading_Cet4(userCustom.getUserid());
			if(processCustom!=null){
				String cet4_id=processCustom.getpCet4Id();
				cet4Custom=cet4LoadingService.Select_cet4_info_ByPrimary(cet4_id);
				session.setAttribute("cet4Custom", cet4Custom);
				return "redirect:/Page/cet4/cet4_vocabulary.jsp";
			} 
		}
		cet4Custom=cet4LoadingService.Select_cet4_info_ByPrimary(cet4_id_init);
		session.setAttribute("cet4Custom", cet4Custom);
		System.out.println(cet4Custom.getCet4Vocabulary()+"\t"+cet4Custom.getCet4Pronunciation()+"\t"+cet4Custom.getCet4Meaning());
		return "redirect:/Page/cet4/cet4_vocabulary.jsp";
	}

	@RequestMapping("/loading_cet4_word2")
	@ResponseBody
	public String show_cet4_info2(HttpSession session){
		Cet4Custom cet4Custom=(Cet4Custom) session.getAttribute("cet4Custom");
		System.out.println(cet4Custom);
		if(cet4Custom!=null){
			int cet_id=Integer.parseInt(cet4Custom.getCet4Id().substring(5,9))+1;
			String cet4_id=CET4_+cet_id;
			cet4Custom=cet4LoadingService.Select_cet4_info_ByPrimary(cet4_id);
			session.setAttribute("cet4Custom", cet4Custom);
			return "redirect:/Page/cet4/cet4_vocabulary.jsp";
		}
		cet4Custom=cet4LoadingService.Select_cet4_info_ByPrimary(cet4_id_init);
		session.setAttribute("cet4Custom", cet4Custom);
		System.out.println(cet4Custom.getCet4Vocabulary()+"\t"+cet4Custom.getCet4Pronunciation()+"\t"+cet4Custom.getCet4Meaning());
		return "redirect:/Page/cet4/cet4_vocabulary.jsp";
	}

	@RequestMapping("/cet4_test_info")
	public String show_test_info(@RequestParam(value="cet42TestId", required = false) String cet42TestId,HttpSession session) throws Exception{
		List<Cet4_Part2Custom> cet4_Part2Custom_list=null;
		Cet4_Part1Custom cet4_Part1Custom=null;
		Cet4_Part3A cet4_Part3A=null;
		Cet4_Part3B cet4_Part3B=null;
		List<Cet4_Part3C> list_cet4_Part3C=null;
		Cet4_Part4 cet4_Part4=null;
		List<String> list_count=new ArrayList<String>();
		list_count.add("1");
		list_count.add("1");
		list_count.add("1");
		list_count.add("1");
		list_count.add("1");
		list_count.add("1");
		list_count.add("1");
		list_count.add("1");
		list_count.add("1");
		list_count.add("1");

		if(cet42TestId!=null){
			cet4_Part2Custom_list=cet4_partService.find_part2_infoBycet42TestId(cet42TestId);
			cet4_Part1Custom=cet4_partService.find_Cet4_Part1Custom_ByPrimary(cet42TestId);
			cet4_Part3A=cet4_partService.find_Cet4_Part3A_ByPrimary(cet42TestId);
			cet4_Part3B=cet4_partService.find_Cet4_Part3B_ByPrimary(cet42TestId);
			list_cet4_Part3C=cet4_partService.find_Cet4_Part3C_Bycet4PartcIds(cet42TestId);
			cet4_Part4=cet4_partService.find_Cet4_Part4_ByPrimary(cet42TestId);
		}
		if(cet4_Part1Custom!=null){
			session.setAttribute("cet4_Part1Custom", cet4_Part1Custom);
			session.setAttribute("cet4_Part3A", cet4_Part3A);
			session.setAttribute("cet4_Part3B", cet4_Part3B);
			session.setAttribute("cet4_Part4", cet4_Part4);
			session.setAttribute("list_count", list_count);
		}
		if(cet4_Part2Custom_list!=null){
			session.setAttribute("Cet4_Part2Custom_list", cet4_Part2Custom_list);
			session.setAttribute("list_cet4_Part3C", list_cet4_Part3C);
			return "redirect:/Page/cet4/cet4_test_info.jsp";
		}
		return "redirect:/Page/cet4/cet4_test_info.jsp";
	}
   
	@RequestMapping("/add_unknown_word")
	public void add_unknown_word(@RequestBody Cet4Custom cet4Custom){
		Unknown_WordCustom wordCustom=null;
		wordCustom.setUnCetId(cet4Custom.getCet4Id());
		wordCustom.setUnCetMeaning(cet4Custom.getCet4Meaning());
		wordCustom.setUnCetPronunciation(cet4Custom.getCet4Pronunciation());
		wordCustom.setUnCetVocabulary(cet4Custom.getCet4Vocabulary());
		cet4LoadingService.Add_UnknownWord(wordCustom);
	}

	@RequestMapping("/remove_unknown_word")
	public void remove_unknown_word(@RequestBody Cet4Custom cet4Custom){
		String unCetId=cet4Custom.getCet4Id();
		cet4LoadingService.Remove_UnknownWord(unCetId);
	}

}
