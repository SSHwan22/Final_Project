package com.ace.thrifty.ptj.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.ace.thrifty.board.model.vo.Board;
import com.ace.thrifty.board.model.vo.Image;
import com.ace.thrifty.ptj.model.vo.Ptj;

public interface PtjService {

	public Ptj selectPtjDetail(int boardNo);
	
	public List<Ptj> selectPtjAll();
	
	public int insertPtj(Board b, Ptj p, MultipartFile image , String webPath , String serverFolderPath) throws Exception;
	
	public int deleteBoard(Board b);
	
	public Ptj updateFormPtj(int boardNo);
	
	public int updatePtj(Ptj p , Board b, Image img , String webPath , String serverFolderPath) throws Exception;
	
	public int workEnd(Ptj p);

}
