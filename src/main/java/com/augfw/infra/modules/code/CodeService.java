package com.augfw.infra.modules.code;

import java.util.List;

import com.augfw.infra.modules.codegroup.CodeGroupVo;

public interface CodeService {

	public List<Code> selectList(CodeVo vo) throws Exception; 
	

	
	
}