package com.augfw.infra.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class MemberDao {
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.augfw.infra.modules.member.MemberMapper";
	
	public List<Member> selectList(MemberVo vo){
		List<Member> list = sqlSession.selectList("com.augfw.infra.modules.member.MemberMapper",vo);
		return list; 
		}

	public int insert(Member dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " +  result);
		return result;
	}

}


