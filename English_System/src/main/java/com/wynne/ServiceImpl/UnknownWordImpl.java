package com.wynne.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wynne.Dao.Unknown_WordMapper;
import com.wynne.Entity.Unknown_WordCustom;
import com.wynne.Serivce.IUnknownWordService;
@Service
public class UnknownWordImpl implements IUnknownWordService {

	@Autowired
	private Unknown_WordMapper unknown_WordMapper;

	public int countUnWord(String cetid, String username) {
		return unknown_WordMapper.countUnkownWord(cetid, username);
	}

	public Unknown_WordCustom findByusernameAndunCetId(String unCetId, String username) {

		return unknown_WordMapper.selectByusernameAndunCetId(unCetId, username);
	}


	public int Add_UnknownWord(Unknown_WordCustom wordCustom) {
		return unknown_WordMapper.insert(wordCustom);
	}


	public int Remove_UnknownWord(String  unCetId) {
		return unknown_WordMapper.deleteByunCetId(unCetId);
	}

}
