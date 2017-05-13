package com.wynne.Utils;

import java.util.List;

import com.wynne.Entity.Cet;
import com.wynne.Entity.UserCustom;

public class HandleNull {

	public static List<UserCustom> HandleUser(List<UserCustom> list){
		for(int i=0;i<list.size();i++){
			if(list.get(i).getUseremail()==null){
				list.get(i).setUseremail("");
			}
			if(list.get(i).getUserphone()==null){
				list.get(i).setUserphone("");
			}
		}
		return list;
	}

	public static Cet HandleCet(Cet cet){
		if(cet.getCetEntend1()==null){
			cet.setCetEntend1("");
		}
		if(cet.getCetEntend2()==null){
			cet.setCetEntend2("");
		}
		if(cet.getCetEntend3()==null){
			cet.setCetEntend3("");
		}
		if(cet.getCetEntend4()==null){
			cet.setCetEntend4("");
		}
		if(cet.getCetEntend5()==null){
			cet.setCetEntend5("");
		}
		return cet;
	}

}
