package com.augfw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.augfw.infra.modules.codegroup.CodeGroup;
import com.augfw.infra.modules.codegroup.CodeGroupVo;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		List<Member> list = dao.selectList(vo);
		return list;
	}
	
	@Override
	public int insert(Member dto) throws Exception{
		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public Member selectOne(MemberVo vo) throws Exception{
		Member result = dao.selectOne(vo);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public int selectOneCount(MemberVo vo) throws Exception{
		int result = dao.selectOneCount(vo);
		System.out.println("service result: " + result);
		return result;
	}
 	
	
}


