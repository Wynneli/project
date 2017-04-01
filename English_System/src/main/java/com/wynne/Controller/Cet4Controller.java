package com.wynne.Controller;

import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.wynne.Entity.Answer;
import com.wynne.Entity.Answer2;
import com.wynne.Entity.Cet4;
import com.wynne.Entity.Cet4Custom;
import com.wynne.Entity.Cet4_Part1Custom;
import com.wynne.Entity.Cet4_Part2Custom;
import com.wynne.Entity.Cet4_Part3A;
import com.wynne.Entity.Cet4_Part3B;
import com.wynne.Entity.Cet4_Part3C;
import com.wynne.Entity.Cet4_Part4;
import com.wynne.Entity.Chart;
import com.wynne.Entity.CommentCustom;
import com.wynne.Entity.Compare_Result;
import com.wynne.Entity.ProcessCustom;
import com.wynne.Entity.Unknown_WordCustom;
import com.wynne.Entity.UserCustom;
import com.wynne.Serivce.ICet4LoadingService;
import com.wynne.Serivce.ICet4_partService;
import com.wynne.Utils.HandleUserName;
import com.wynne.Utils.TranferTime;

import net.sf.json.JsonConfig;

/**
 *<p>Title: </p>
 *<p>Description:用于读取单词信息 </p>
 * @author liweining
 *@date 2017年3月5日 下午5:17:07 
 */
@Controller
@RequestMapping("/cet4")
public class Cet4Controller {
	private final static String SUCCESS="success";

	private final static String FAILURE="failure";

	private static final String cet4_id_init="cet4_0001";

	private static final String CET4_="cet4_";

	private static final String CET6_="cet4_";
	@Autowired
	private ICet4LoadingService cet4LoadingService;

	@Autowired
	private ICet4_partService cet4_partService;



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

	@RequestMapping("/test")
	public String  test()throws Exception{
		System.out.println("正在调用ajax");
		return "success";
	}


	@RequestMapping("/nextword")
	public @ResponseBody Object nextword(HttpServletRequest request,Cet4Custom cet4Custom)throws Exception{
		System.out.println("执行nextword");
		JSONObject jsonObject = new JSONObject(); 
		jsonObject.put("message", "收入我的词库");
		String cet4_id=request.getParameter("cet4Id");
		String username=HandleUserName.handle(request.getParameter("username"));
		//		System.out.println(cet4_id+username);
		if(cet4_id.trim().equals("")){
			cet4_id="cet4_0001";
		}else{
			cet4_id=cet4Custom.getCet4Id();
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
		jsonObject.put("Cet4Id", cet4Custom.getCet4Id());
		jsonObject.put("Cet4Meaning", cet4Custom.getCet4Meaning());
		jsonObject.put("Cet4Pronunciation", cet4Custom.getCet4Pronunciation());
		jsonObject.put("Cet4Vocabulary", cet4Custom.getCet4Vocabulary());
		if(!username.trim().equals("")){
			Unknown_WordCustom unknown_WordCustom=cet4LoadingService.findByusernameAndunCetId(cet4_id, username);
			if(unknown_WordCustom!=null){
				jsonObject.put("message", "移出我的词库");
			}
		}
		return jsonObject;
	}

	@RequestMapping("/preword")
	public @ResponseBody Object preword(HttpServletRequest request)throws Exception{
		Cet4Custom cet4Custom=new Cet4Custom();
		System.out.println("执行preword");
		JSONObject jsonObject=new JSONObject();
		String cet4_id=request.getParameter("cet4Id");
		System.out.println(cet4_id);
		String username=HandleUserName.handle(request.getParameter("username"));
		if(!cet4_id.equals("")&&!cet4_id.equals("cet4_0001")){
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
		jsonObject.put("Cet4Id", cet4Custom.getCet4Id());
		jsonObject.put("Cet4Meaning", cet4Custom.getCet4Meaning());
		jsonObject.put("Cet4Pronunciation", cet4Custom.getCet4Pronunciation());
		jsonObject.put("Cet4Vocabulary", cet4Custom.getCet4Vocabulary());
		if(!username.trim().equals("")){
			Unknown_WordCustom unknown_WordCustom=cet4LoadingService.findByusernameAndunCetId(cet4_id, username);
			if(unknown_WordCustom!=null){
				jsonObject.put("message", "移出我的词库");
			}else{
				jsonObject.put("message", "收入我的词库");
			}
		}
		return jsonObject;
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
	public String show_test_info(@RequestParam("cet42TestId") String cet42TestId,HttpSession session) throws Exception{
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
			if(cet42TestId.equals("cet4_2016_6_3")){
				cet4_Part2Custom_list=cet4_partService.find_part2_infoBycet42TestId("cet4_2016_6_1");
			}else{
				cet4_Part2Custom_list=cet4_partService.find_part2_infoBycet42TestId(cet42TestId);

			}

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
	public @ResponseBody Object add_unknown_word(HttpServletRequest request){
		System.out.println("add_unknown_word");
		JSONObject jsonObject=new JSONObject();
		String username=null;
		int num=0;
		String cet=null;
		Boolean flag=false;
		cet=request.getParameter("cet4Id");
		Unknown_WordCustom wordCustom=new Unknown_WordCustom();
		//		System.out.println("执行这里！");
		wordCustom.setUnCetId(cet);
		wordCustom.setUnCetMeaning(request.getParameter("cet4Meaning"));
		wordCustom.setUnCetPronunciation(request.getParameter("cet4Pronunciation"));
		wordCustom.setUnCetVocabulary(request.getParameter("cet4Vocabulary"));
		username=HandleUserName.handle(request.getParameter("username"));
		wordCustom.setUsername(username);
		Unknown_WordCustom  unknown_WordCustom=cet4LoadingService.findByusernameAndunCetId(cet, username);
		if(unknown_WordCustom!=null){
			jsonObject.put("exist", "exist");
		}else{
			num=cet4LoadingService.Add_UnknownWord(wordCustom);
			jsonObject.put("success", SUCCESS);
		}
		return jsonObject;
	}


	@RequestMapping("/remove_unknown_word")
	public  @ResponseBody Cet4Custom remove_unknown_word(@RequestBody Cet4Custom cet4Custom){
		System.out.println("remove_unknown_word");
		String unCetId=cet4Custom.getCet4Id();
		cet4LoadingService.Remove_UnknownWord(unCetId);
		return cet4Custom;
	}


	@RequestMapping("/save_part1")
	public @ResponseBody Object save_part1(@RequestBody Answer answer){
		System.out.println("sava_part1");
		int count=0;
		Answer answer2=null;
		JSONObject jsonObject=new JSONObject();
		answer.setaPart1(answer.getaPart1());
		answer.setaUsername(HandleUserName.handle(answer.getaUsername()));
		answer.setCetType(answer.getCetType());
		System.out.println(answer.getCetType());
		answer2=cet4_partService.findBycetTypeAndUserName(answer);
		//		System.out.println(answer2.toString());
		if(answer2!=null){
			answer.setAnswerId(answer2.getAnswerId());
			count=cet4_partService.updateAnswer(answer);
			//			System.out.println(count);
		}else{
			count=cet4_partService.insertAnswer(answer);
		}
		if(count==1){
			jsonObject.put("result", SUCCESS);
		}else{
			jsonObject.put("result", FAILURE);
		}
		return jsonObject;
	}

	@RequestMapping("/save_part2")
	public @ResponseBody Object save_part2(@RequestBody Answer answer){
		System.out.println("sava_part1");
		int count=0;
		JSONObject jsonObject=new JSONObject();
		answer.setAnswer1(answer.getAnswer1());
		answer.setAnswer2(answer.getAnswer2());
		answer.setAnswer3(answer.getAnswer3());
		answer.setAnswer4(answer.getAnswer4());
		answer.setAnswer5(answer.getAnswer5());
		answer.setAnswer6(answer.getAnswer6());
		answer.setAnswer7(answer.getAnswer7());
		answer.setAnswer8(answer.getAnswer8());
		answer.setAnswer9(answer.getAnswer9());
		answer.setAnswer10(answer.getAnswer10());
		answer.setAnswer11(answer.getAnswer11());
		answer.setAnswer12(answer.getAnswer12());
		answer.setAnswer13(answer.getAnswer13());
		answer.setAnswer14(answer.getAnswer14());
		answer.setAnswer15(answer.getAnswer15());
		answer.setAnswer16(answer.getAnswer16());
		answer.setAnswer17(answer.getAnswer17());
		answer.setAnswer18(answer.getAnswer18());
		answer.setAnswer19(answer.getAnswer19());
		answer.setAnswer20(answer.getAnswer20());
		answer.setAnswer21(answer.getAnswer21());
		answer.setAnswer22(answer.getAnswer22());
		answer.setAnswer23(answer.getAnswer23());
		answer.setAnswer24(answer.getAnswer24());
		answer.setAnswer25(answer.getAnswer25());
		answer.setaUsername(HandleUserName.handle(answer.getaUsername()));
		answer.setCetType(answer.getCetType());
		System.out.println(answer.getCetType());
		Answer answer2=cet4_partService.findBycetTypeAndUserName(answer);
		if(answer2!=null){
			answer.setAnswerId(answer2.getAnswerId());
			count=cet4_partService.updateAnswer(answer);
		}else{
			count=cet4_partService.insertAnswer(answer);
		}

		if(count==1){
			jsonObject.put("result", SUCCESS);
		}else{
			jsonObject.put("result", FAILURE);
		}
		return jsonObject;
	}

	@RequestMapping("/save_part3")
	public @ResponseBody Object save_part3(@RequestBody Answer answer){
		System.out.println("sava_part3");
		int count=0;
		JSONObject jsonObject=new JSONObject();
		answer.setAnswer26(answer.getAnswer26());
		answer.setAnswer27(answer.getAnswer27());
		answer.setAnswer28(answer.getAnswer28());
		answer.setAnswer29(answer.getAnswer29());
		answer.setAnswer30(answer.getAnswer30());
		answer.setAnswer31(answer.getAnswer31());
		answer.setAnswer32(answer.getAnswer32());
		answer.setAnswer33(answer.getAnswer33());
		answer.setAnswer34(answer.getAnswer34());
		answer.setAnswer35(answer.getAnswer35());
		answer.setAnswer36(answer.getAnswer36());
		answer.setAnswer37(answer.getAnswer37());
		answer.setAnswer38(answer.getAnswer38());
		answer.setAnswer39(answer.getAnswer39());
		answer.setAnswer40(answer.getAnswer40());
		answer.setAnswer41(answer.getAnswer41());
		answer.setAnswer42(answer.getAnswer42());
		answer.setAnswer43(answer.getAnswer43());
		answer.setAnswer44(answer.getAnswer44());
		answer.setAnswer45(answer.getAnswer45());
		answer.setAnswer46(answer.getAnswer46());
		answer.setAnswer47(answer.getAnswer47());
		answer.setAnswer48(answer.getAnswer48());
		answer.setAnswer49(answer.getAnswer49());
		answer.setAnswer50(answer.getAnswer50());
		answer.setAnswer51(answer.getAnswer52());
		answer.setAnswer52(answer.getAnswer52());
		answer.setAnswer53(answer.getAnswer53());
		answer.setAnswer54(answer.getAnswer54());
		answer.setAnswer55(answer.getAnswer55());
		answer.setaUsername(HandleUserName.handle(answer.getaUsername()));
		answer.setCetType(answer.getCetType());
		System.out.println(answer.getCetType());
		Answer answer2=cet4_partService.findBycetTypeAndUserName(answer);
		if(answer2!=null){
			answer.setAnswerId(answer2.getAnswerId());
			count=cet4_partService.updateAnswer(answer);
		}else{
			count=cet4_partService.insertAnswer(answer);
		}

		if(count==1){
			jsonObject.put("result", SUCCESS);
		}else{
			jsonObject.put("result", FAILURE);
		}
		return jsonObject;
	}

	@RequestMapping("/save_part4")
	public @ResponseBody Object save_part4(@RequestBody Answer answer){
		System.out.println("sava_part4");
		int count=0;
		Answer answer2=null;
		JSONObject jsonObject=new JSONObject();
		answer.setaPart4(answer.getaPart4());
		answer.setaUsername(HandleUserName.handle(answer.getaUsername()));
		answer.setCetType(answer.getCetType());
		System.out.println(answer.getCetType());
		answer2=cet4_partService.findBycetTypeAndUserName(answer);
		if(answer2!=null){
			answer.setAnswerId(answer2.getAnswerId());
			count=cet4_partService.updateAnswer(answer);
		}else{
			count=cet4_partService.insertAnswer(answer);
		}
		if(count==1){
			jsonObject.put("result", SUCCESS);
		}else{
			jsonObject.put("result", FAILURE);
		}
		return jsonObject;
	}

	@RequestMapping("/load_process")
	public @ResponseBody Object load_process(@RequestBody Answer answer2){
		int count=0;
		Answer answer=new Answer();
		JSONObject jsonObject=new JSONObject();
		answer.setaUsername(HandleUserName.handle(answer2.getaUsername()));
		answer.setCetType(answer2.getCetType());
		answer=cet4_partService.findBycetTypeAndUserName(answer);
		if(answer!=null){
			count=1;
		}
		if(count==1){
			jsonObject.put("result", answer);
		}else{
			jsonObject.put("result", FAILURE);
		}
		return jsonObject;
	}

	@RequestMapping("/check_answer")
	public  String check_answer(@RequestParam("cet42TestId") String cet42TestId,
			@RequestParam("username") String username,HttpSession session){
		Answer answer=new Answer();
		Answer2 answer2=new Answer2();
		answer.setCetType(cet42TestId);
		answer.setaUsername(username);
		answer=cet4_partService.findBycetTypeAndUserName(answer);
		answer2=cet4_partService.findByPrimaryKey(cet42TestId);
		List<Compare_Result> patr2_list=cet4_partService.HandlePart2(answer, answer2);
		List<Compare_Result> patr3_list=cet4_partService.HandlePart3(answer, answer2);
		Compare_Result part1=cet4_partService.HandlePart1(answer, answer2);
		Compare_Result part4=cet4_partService.HandlePart4(answer, answer2);
		session.setAttribute("patr2_list",patr2_list);
		session.setAttribute("patr3_list",patr3_list);
		session.setAttribute("part1", part1);
		session.setAttribute("part4", part4);
		session.setAttribute("cetid", cet42TestId);
		return "redirect:/Page/cet4/answer.jsp";
	}


	@RequestMapping("/show_chart")
	public @ResponseBody Object show_chart(@RequestBody Chart chart){
		JSONObject jsonObject=new JSONObject();
		chart.setChartUsername(HandleUserName.handle(chart.getChartUsername()));
		Chart record=cet4_partService.findBychartCetIdAndchartUsername(chart);
		jsonObject.put("record", record);
		return jsonObject;
	}

	@RequestMapping("/show_Piechart")
	public @ResponseBody Object show_Piechart(@RequestBody Chart chart){
		JSONObject jsonObject=new JSONObject();
		chart.setChartUsername(HandleUserName.handle(chart.getChartUsername()));
		Chart record=cet4_partService.findBychartCetIdAndchartUsername(chart);
		double correct=(double)record.getChartPart1()+record.getChartPart2()+record.getChartPart3()+record.getChartPart4();
		correct=correct/55;
		BigDecimal bigDecimal=new BigDecimal(correct);
		correct=bigDecimal.setScale(4,BigDecimal.ROUND_HALF_UP).doubleValue()*100;
		double error=100-correct;
		jsonObject.put("correct", correct);
		jsonObject.put("error", error);
		return jsonObject;
	}

	@RequestMapping("/show_item")
	public String show_item(@RequestParam("cet4id") String cet4id,HttpSession session){
		List<Cet4_Part1Custom> cet4_Part1Customs_list=null;
		if(cet4id!=null){
			cet4_Part1Customs_list=cet4_partService.findBycet4TestId(cet4id);
		}
		if(cet4_Part1Customs_list==null){
			session.setAttribute("show_item_null", "false");
			return "redirect:/Page/cet4/cet4_questions.jsp";
		}
		session.setAttribute("cet4_Part1Customs_list", cet4_Part1Customs_list);
		return "redirect:/Page/cet4/cet4_questions.jsp";
	}

	@RequestMapping("/cet4_test_item")
	public String cet4_test_item(@RequestParam("question_title")  String question_title,
			@RequestParam("question_cet4_id")  String question_cet4_id,HttpSession session){
		Cet4_Part1Custom cet4_Part1Custom_item=new Cet4_Part1Custom();
		String title=null;
		try {
			title = new String (question_title.getBytes("iso-8859-1"), "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} 
		if(!question_title.equals("")&&!question_cet4_id.equals("")){
			cet4_Part1Custom_item.setCet4TestId(question_cet4_id);
			cet4_Part1Custom_item.setCet4Title(title);
			session.setAttribute("cet4_Part1Custom_item", cet4_Part1Custom_item);
			return "redirect:/Page/cet4/show_item.jsp";
		}
		return "/Error/item_error";
	}
}



