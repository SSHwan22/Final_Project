package com.ace.thrifty.freeboard.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ace.thrifty.board.model.vo.Board;
import com.ace.thrifty.freeboard.model.dao.FreeBoardDao;

@Service
public class FreeBoardServiceImpl implements FreeBoardService{
	
	private FreeBoardDao freeBoardDao;
	
	@Autowired
	public FreeBoardServiceImpl(FreeBoardDao freeBoarDao) {
		this.freeBoardDao = freeBoarDao;
	}

	@Override
	public int insertFreeBoard(Board b) {
		return freeBoardDao.insertFreeBoard(b);
	}

}