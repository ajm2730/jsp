package com.webjjang.board.service;

import com.webjjang.board.dao.BoardDAO;
import com.webjjang.board.dto.BoardDTO;

public class BoardWriteService {
	public void process(BoardDTO boardDTO){
		System.out.println("BoardViewService.process()");
		// list에 데이터를 가져와서 채우는 프로그램 작성
		// 객체 생성하고 호출
		BoardDAO boardDAO = new BoardDAO();
		boardDAO.write(boardDTO);
	}
}
