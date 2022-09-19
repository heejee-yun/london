package com.augfw.infra.modules.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.augfw.infra.modules.codegroup.CodeGroup;
import com.augfw.infra.modules.codegroup.CodeGroupVo;

@Repository
public class CodeDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.augfw.infra.modules.code.CodeMapper";

	/* namespace = "com.augfw.infra.modules.code.CodeMapper" 이기에 
	 * 앞으로는 namespace만 나와도 저 mmp 주소가 있다고 생각해야함  */
	public List<Code> selectList(CodeVo vo){ 
		
		List<Code> list = sqlSession.selectList("com.augfw.infra.modules.code.CodeMapper.selectList", vo); 
		return list;
		}
	
	public int insert(Code dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " + result);
		return result;
		}
	
	public Code selectOne(CodeVo vo) {
		Code result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result:" + result);
		return result;
	}
	
}
