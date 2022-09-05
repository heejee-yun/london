package com.augfw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.augfw.infra.modules.codegroup.CodeGroup;
import com.augfw.infra.modules.codegroup.CodeGroupDao;
import com.augfw.infra.modules.codegroup.CodeGroupVo;

@Service
public class CodeServiceImpl implements CodeService{
	
	@Autowired
	CodeDao dao;
	
//	@Override
//	public List<CodeGroup> selectList(CodeVo vo) throws Exception {
//		return dao.selectList(vo);
//	}
	
	
	@Override
	public List<Code> selectList(CodeVo vo) throws Exception {
		List<Code> list = dao.selectList(vo);
		return list;
	}	
	
}


