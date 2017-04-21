package com.wynne.Serivce;

import com.wynne.Entity.Unknown_WordCustom;

public interface IUnknownWordService {
	
	public int countUnWord(String cetid,String username);

	public int Add_UnknownWord(Unknown_WordCustom wordCustom);

	public int Remove_UnknownWord(String  unCetId);
	
	public Unknown_WordCustom findByusernameAndunCetId(String unCetId,String username);
}
