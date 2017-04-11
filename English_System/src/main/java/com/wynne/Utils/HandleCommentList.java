package com.wynne.Utils;

import java.util.List;

import com.wynne.Entity.CommentCustom;

public class HandleCommentList {
	public static List<CommentCustom> handle(List<CommentCustom> list){

		for(int i=0;i<list.size();i++){
			if(list.get(i).getCommentToUsername().equals("")){
				list.get(i).setCommentToUsername("无");
			}
		}
		return list;
	}
}
