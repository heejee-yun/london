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
		List<Member> list = sqlSession.selectList("com.augfw.infra.modules.member.MemberMapper.selectList",vo);
		return list; 
		}

	public int insert(Member dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " +  result);
		return result;
	}

	public Member selectOne(MemberVo vo) {
		Member result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result:" + result);
		return result;
	}
	
	
	/* return 할 값 기준으로 넣음 => int selectOneCount */
	public int selectOneCount(MemberVo vo) {  
		int result = sqlSession.selectOne("com.augfw.infra.modules.member.MemberMapper.selectOneCount", vo);
		return result;
	}

	
	public int delete(MemberVo vo) { 
		return sqlSession.delete(namespace + ".delete", vo); }

	
	
	
}


