package com.augfw.infra.modules.codegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.augfw.infra.modules.code.Code;

@Repository
public class CodeGroupDao {
	
	@Inject 	// autowired 대신 inject 씀 
	@Resource(name = "sqlSession") //어떤 db 와 커넥션 있는지 이름 정하는 곳
	private SqlSession sqlSession;
	
	private static String namespace = "com.augfw.infra.modules.codegroup.CodeGroupMapper";
	
//	public List<CodeGroup> selectList(CodeGroupVo vo){ return sqlSession.selectList(namespace +  ".selectList",vo);}
	
	public List<CodeGroup> selectList(CodeGroupVo vo){
		// 컨트롤러에 있는 리스트 ? 
	//	List<CodeGroup> list = sqlSession.selectList(namespace + ".selectList", vo);
		List<CodeGroup> list = sqlSession.selectList("com.augfw.infra.modules.codegroup.CodeGroupMapper.selectList", vo);
		return list;
		}
	
	public int insert(CodeGroup dto){
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " +  result);
		return result;
		}
	
	public CodeGroup selectOne(CodeGroupVo vo) {
		CodeGroup result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result:" + result);
		return result;
	}
	
//	for cache
	public List<Code> selectListCachedCodeArrayList(){ return sqlSession.selectList(namespace + ".selectListCachedCodeArrayList", null); }
	
//	for update	/ uelete /delete
	public int update(CodeGroup dto) {return sqlSession.update(namespace + ".update", dto);}
	public int uelete(CodeGroup dto) {return sqlSession.update(namespace + ".uelete", dto);}
	public int delete(CodeGroupVo vo) {return sqlSession.delete(namespace + ".delete", vo);}
	
	
}
