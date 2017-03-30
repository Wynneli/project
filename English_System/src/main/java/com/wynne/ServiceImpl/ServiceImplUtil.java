package com.wynne.ServiceImpl;

import com.wynne.Entity.Compare_Result;

public class ServiceImplUtil {
	private static final String RIGHT="right";

	private static final String ERROR="error";

	public static Compare_Result Compare_Answer(String answer,String answer2){
		Compare_Result compare_Result=new Compare_Result();
		compare_Result.setR_answer(answer2);
		compare_Result.setC_answer(answer);
		if(answer.equals(answer2)){
			compare_Result.setIsError(RIGHT);		   
		}else{
			compare_Result.setIsError(ERROR);		 
		}
		return compare_Result;
	}
}
