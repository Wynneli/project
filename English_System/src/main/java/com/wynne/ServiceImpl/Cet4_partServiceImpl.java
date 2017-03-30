package com.wynne.ServiceImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wynne.Dao.Answer2Mapper;
import com.wynne.Dao.AnswerMapper;
import com.wynne.Dao.Cet4_Part1Mapper;
import com.wynne.Dao.Cet4_Part2Mapper;
import com.wynne.Dao.Cet4_Part3AMapper;
import com.wynne.Dao.Cet4_Part3BMapper;
import com.wynne.Dao.Cet4_Part3CMapper;
import com.wynne.Dao.Cet4_Part4Mapper;
import com.wynne.Dao.ChartMapper;
import com.wynne.Entity.Answer;
import com.wynne.Entity.Answer2;
import com.wynne.Entity.Cet4_Part1Custom;
import com.wynne.Entity.Cet4_Part2Custom;
import com.wynne.Entity.Cet4_Part3A;
import com.wynne.Entity.Cet4_Part3B;
import com.wynne.Entity.Cet4_Part3C;
import com.wynne.Entity.Cet4_Part4;
import com.wynne.Entity.Chart;
import com.wynne.Entity.Compare_Result;
import com.wynne.Serivce.ICet4_partService;
import com.wynne.Utils.HandleUserName;
@Service("iCet4_part2Service")
public class Cet4_partServiceImpl implements ICet4_partService{
	@Autowired
	private Cet4_Part2Mapper cet4_Part2Mapper;

	@Autowired
	private Cet4_Part1Mapper cet4_Part1Mapper;

	@Autowired
	private Cet4_Part3AMapper cet4_Part3AMapper;

	@Autowired
	private Cet4_Part3BMapper cet4_Part3BMapper;

	@Autowired
	private Cet4_Part3CMapper cet4_Part3CMapper;

	@Autowired 
	private Cet4_Part4Mapper cet4_Part4Mapper;

	@Autowired
	private AnswerMapper answerMapper;

	@Autowired
	private Answer2Mapper answer2Mapper;

	@Autowired
	private ChartMapper chartMapper;



	public List<Cet4_Part2Custom> find_part2_infoBycet42TestId(String cet42TestId)throws Exception{
		return cet4_Part2Mapper.selectBycet42TestId(cet42TestId);
	}

	public Cet4_Part1Custom find_Cet4_Part1Custom_ByPrimary(String cet4TestId) throws Exception {
		return cet4_Part1Mapper.selectByPrimaryKey(cet4TestId);
	}

	public Cet4_Part3A find_Cet4_Part3A_ByPrimary(String cet4Part3aId) throws Exception {
		return cet4_Part3AMapper.selectByPrimaryKey(cet4Part3aId);
	}

	public Cet4_Part3B find_Cet4_Part3B_ByPrimary(String cet4Part3bId) throws Exception {
		return cet4_Part3BMapper.selectByPrimaryKey(cet4Part3bId);
	}


	public List<Cet4_Part3C> find_Cet4_Part3C_Bycet4PartcIds(String cet4PartcIds) throws Exception {
		return cet4_Part3CMapper.selectBycet4PartcIds(cet4PartcIds);
	}

	public Cet4_Part4 find_Cet4_Part4_ByPrimary(String cet4Part4Id) throws Exception {
		return cet4_Part4Mapper.selectByPrimaryKey(cet4Part4Id);
	}

	public int insertAnswer(Answer answer) {
		return answerMapper.insertSelective(answer);
	}

	public Answer findBycetTypeAndUserName(Answer answer) {
		return answerMapper.selectBycetTypeAndUserName(answer);
	}

	public int updateAnswer(Answer answer) {
		return answerMapper.updateByPrimaryKeySelective(answer);
	}

	public Answer findByPrimaryKey(Integer answerId) {
		return answerMapper.selectByPrimaryKey(answerId);
	}

	public Answer findByUserName(String username) {
		return answerMapper.selectByUserName(username);
	}

	public Answer2 findByPrimaryKey(String aCetId) {
		return answer2Mapper.selectByPrimaryKey(aCetId);
	}


	public List<Compare_Result> HandlePart2(Answer answer,Answer2 answer2){
		List<Compare_Result> list=new ArrayList<Compare_Result>();
		int count=0;
		Chart chart=new Chart();
		chart.setChartCetId(answer.getCetType());
		chart.setChartUsername(answer.getaUsername());
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer1(),answer2.getA1()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer2(),answer2.getA2()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer3(),answer2.getA3()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer4(),answer2.getA4()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer5(),answer2.getA5()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer6(),answer2.getA6()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer7(),answer2.getA7()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer8(),answer2.getA8()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer9(),answer2.getA9()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer10(),answer2.getA10()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer11(),answer2.getA11()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer12(),answer2.getA12()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer13(),answer2.getA13()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer14(),answer2.getA14()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer15(),answer2.getA15()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer16(),answer2.getA16()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer17(),answer2.getA17()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer18(),answer2.getA18()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer19(),answer2.getA19()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer20(),answer2.getA20()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer21(),answer2.getA21()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer22(),answer2.getA22()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer23(),answer2.getA23()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer24(),answer2.getA24()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer25(),answer2.getA25()));
		for(int i=0;i<list.size();i++){
			if(list.get(i).getIsError().equals("right")){
				count++;
			}
		}
		Chart record=chartMapper.selectBychartCetIdAndchartUsername(chart);
		if(record!=null){
			record.setChartPart1(count);
			chartMapper.updateByPrimaryKeySelective(record);
		}else{
			chart.setChartPart1(count);
			chartMapper.insertSelective(chart);
		}
		return list;
	}

	public Compare_Result HandlePart1(Answer answer,Answer2 answer2){
		Compare_Result compare_Result=new Compare_Result();
		compare_Result.setC_answer(answer.getaPart1());
		compare_Result.setR_answer(answer2.getaPart1());
		return compare_Result;
	}

	public Compare_Result HandlePart4(Answer answer,Answer2 answer2){
		Compare_Result compare_Result=new Compare_Result();
		compare_Result.setC_answer(answer.getaPart4());
		compare_Result.setR_answer(answer2.getaPart4());
		return compare_Result;
	}

	public List<Compare_Result> HandlePart3(Answer answer, Answer2 answer2) {
		List<Compare_Result> list=new ArrayList<Compare_Result>();
		int count=0;
		int count1=0;
		int count2=0;
		Chart chart=new Chart();
		chart.setChartCetId(answer.getCetType());
		chart.setChartUsername(answer.getaUsername());
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer26(),answer2.getA26()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer27(),answer2.getA27()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer28(),answer2.getA28()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer29(),answer2.getA29()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer30(),answer2.getA30()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer31(),answer2.getA31()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer32(),answer2.getA32()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer33(),answer2.getA33()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer34(),answer2.getA34()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer35(),answer2.getA35()));
		for(int i=0;i<list.size();i++){
			if(list.get(i).getIsError().equals("right")){
				count++;
			}
		}
		chart.setChartPart2(count);
		//chartMapper.insertSelective(chart);
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer36(),answer2.getA36()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer37(),answer2.getA37()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer38(),answer2.getA38()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer39(),answer2.getA39()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer40(),answer2.getA40()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer41(),answer2.getA41()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer42(),answer2.getA42()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer43(),answer2.getA43()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer44(),answer2.getA44()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer45(),answer2.getA45()));
		for(int i=10;i<list.size();i++){
			if(list.get(i).getIsError().equals("right")){
				count1++;
			}
		}
		chart.setChartPart3(count1);
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer46(),answer2.getA46()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer47(),answer2.getA47()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer48(),answer2.getA48()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer49(),answer2.getA49()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer50(),answer2.getA50()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer51(),answer2.getA51()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer52(),answer2.getA52()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer53(),answer2.getA53()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer54(),answer2.getA54()));
		list.add(ServiceImplUtil.Compare_Answer(answer.getAnswer55(),answer2.getA55()));
		for(int i=20;i<list.size();i++){
			if(list.get(i).getIsError().equals("right")){
				count2++;
			}
		}
		chart.setChartPart4(count2);
		Chart record=chartMapper.selectBychartCetIdAndchartUsername(chart);
		if(record!=null){
			record.setChartPart2(count);
			record.setChartPart3(count1);
			record.setChartPart4(count2);
			chartMapper.updateByPrimaryKeySelective(record);
		}else{
			chartMapper.insertSelective(chart);
		}
		return list;

	}

	public Chart findBychartCetIdAndchartUsername(Chart record) {
		return chartMapper.selectBychartCetIdAndchartUsername(record);
	}

	public List<Cet4_Part1Custom> findBycet4TestId(String cet4TestId) {
		return cet4_Part1Mapper.selectBycet4TestId(cet4TestId);
	}
}
