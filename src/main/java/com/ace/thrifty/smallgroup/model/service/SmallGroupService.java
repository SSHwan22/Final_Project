package com.ace.thrifty.smallgroup.model.service;

import java.util.ArrayList;

import com.ace.thrifty.board.model.vo.Board;
import com.ace.thrifty.smallgroup.model.vo.SmallGroup;

public interface SmallGroupService {

	
	
	public int sgInsertBoard(Board b, SmallGroup sg);
	
	public  ArrayList<SmallGroup> sgSelectList();
}
