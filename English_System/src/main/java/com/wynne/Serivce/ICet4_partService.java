package com.wynne.Serivce;

import java.util.List;

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

/**
 *<p>Title: </p>
 *<p>Description: 英语试题测试Service接口</p>
 * @author liweining
 *@date 2017年3月12日 下午2:33:10 
 */
public interface ICet4_partService {
    List<Cet4_Part2Custom> find_part2_infoBycet42TestId(String cet42TestId) throws Exception;
    
    Cet4_Part1Custom find_Cet4_Part1Custom_ByPrimary(String cet4TestId)throws Exception;
    
    Cet4_Part3A find_Cet4_Part3A_ByPrimary(String cet4Part3aId)throws Exception;
    
    Cet4_Part3B find_Cet4_Part3B_ByPrimary(String cet4Part3bId)throws Exception;
   
    List<Cet4_Part3C> find_Cet4_Part3C_Bycet4PartcIds(String cet4PartcIds)throws Exception;
    
    Cet4_Part4 find_Cet4_Part4_ByPrimary(String cet4Part4Id)throws Exception;
    
    int insertAnswer(Answer answer);
    
    int updateAnswer(Answer answer);
    
    Answer findBycetTypeAndUserName(Answer answer);
    
    Answer findByPrimaryKey(Integer answerId);
    
    Answer findByUserName(String username);
    
    Answer2 findByPrimaryKey(String a_cet_id);
    
    public List<Compare_Result> HandlePart2(Answer answer,Answer2 answer2);
    
    public Compare_Result HandlePart1(Answer answer,Answer2 answer2);
    
    public Compare_Result HandlePart4(Answer answer,Answer2 answer2);
    
    public List<Compare_Result> HandlePart3(Answer answer,Answer2 answer2);
    
    public Chart findBychartCetIdAndchartUsername(Chart record);
    
    public List<Cet4_Part1Custom> findBycet4TestId(String cet4TestId);
    
}
