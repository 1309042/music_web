package com.hyunseo.spotify.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyunseo.spotify.member.model.dao.MemberDao;
import com.hyunseo.spotify.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private MemberDao memberDao;

	@Override
	public int insertMember(Member m) {
		return memberDao.insertMember(sqlSession, m);
	}
}
