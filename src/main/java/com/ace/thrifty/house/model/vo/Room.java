package com.ace.thrifty.house.model.vo;

import java.util.ArrayList;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class Room {
	
	private int boardNo;
	private int roomNo;
	private int recruitsNum; // 모집인원
	private int recruitsCurr; // 현재모집인원
	private String division; // 방이름
	private char gender; // 성별
	private String type; // 타입
	private double area; // 면적
	private int deposit; // 보증금
	private int rent; // 월임대료
	private int cost; // 관리비
	private int contrat; // 계약종료일
	
	private ArrayList<RoomImg> imgList;
	
}
