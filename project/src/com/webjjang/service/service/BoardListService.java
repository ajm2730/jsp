package com.webjjang.service;

import java.util.List;

import com.webjjang.dao.BoardDAO;
import com.webjjang.dto.BoardDTO;

public class BoardListService {
	public List<BoardDTO> process(){
		System.out.println("BoardListService.process()");
		List<BoardDTO> list = null;
		//list에 데이터를 가져와서 채우는 프로그램 작성
		//객체를 생성하고 호출한다.
		BoardDAO boardDAO = new BoardDAO();
		list = boardDAO.list();
		return list;
	}
}
