package com.ace.thrifty.admin.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ace.thrifty.admin.model.dao.AdminDao;
import com.ace.thrifty.member.model.vo.Member;

@Service
public class AdminServiceImpl implements AdminService{

	private AdminDao adminDao;
	
	@Autowired
	public AdminServiceImpl(AdminDao adminDao) {
		this.adminDao = adminDao;
	}
	
	
	@Override
	public Member loginAdmin(Member m) {
		return adminDao.loginAdmin(m);
	}


	@Override
	public List<Member> memberList() {
		return adminDao.memberList();
	}

}