package com.ace.thrifty.notice.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ace.thrifty.notice.model.service.NoticeService;

@Controller
@RequestMapping("notice")
public class NoticeController {

	private NoticeService noticeService;
	
	@Autowired
	public NoticeController(NoticeService noticeService) {
		this.noticeService = noticeService;
	}
	
	@GetMapping("")
	public String notice(Model model,
			@RequestParam(defaultValue = "0") int categorySNo,
			@RequestParam(defaultValue = "1") int currentPage
			) {
		
		List<Map<String, String>> noticeCatList = noticeService.noticeCatdList();
		Map<String, Object> paramMap = new HashMap<>();
		Map<String, Object> map = new HashMap<>();
		
		paramMap.put("categorySNo",categorySNo);
		paramMap.put("currentPage",currentPage);
		
		noticeService.noticeList(map, paramMap);
		
		System.out.println(map);
		
		model.addAttribute("map", map);
		model.addAttribute("noticeCatList", noticeCatList);
		
		return "notice/notice";
	}
}
