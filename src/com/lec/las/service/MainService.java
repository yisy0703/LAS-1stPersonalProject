package com.lec.las.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lec.las.dao.MemberDao;
import com.lec.las.dto.MemberDto;

public class MainService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		MemberDao memberDao = new MemberDao();
		ArrayList<MemberDto> members = memberDao.memberList();
		request.setAttribute("members", members);
	}

}
