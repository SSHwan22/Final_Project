package com.ace.thrifty.board.model.service;

import java.util.ArrayList;
import java.util.List;

import com.ace.thrifty.board.model.vo.Board;
import com.ace.thrifty.board.model.vo.UpperCategory;

public interface BoardService {

	public Board selectBoard();
	
	public int insertBoard(Board b);
	
	
	
	public List<UpperCategory> selectBoardCategoryList();
}
