package com.wynne.Serivce;

import java.util.List;

import com.wynne.Entity.Cet;
import com.wynne.Entity.CetCustomVo;

public interface ICetService {
   public List<Cet> findCetCondition(String cet);
   
   public int findCetId(String cetid);
   
   public int findCetInfo(String cetInfo);
   
   public int insert(Cet cet);
   
   public Cet findCet(String cetid);
   
   public int delete(int cetPrimary);
   
   public Cet findByPrimaryKey(int cetPrimary);
   
   public List<Cet> findAll(String CET);
}
