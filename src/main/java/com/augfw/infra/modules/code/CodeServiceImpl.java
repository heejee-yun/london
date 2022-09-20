package com.augfw.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
	@Override
	public int insert(Code dto) throws Exception {
		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public Code selectOne(CodeVo vo) throws Exception{
		Code result = dao.selectOne(vo);
		System.out.println("service result: " + result);
		return result;
	}
	
	// for cache
	@PostConstruct
	public void selectListCachedCodeArrayList() throws Exception {
		List<Code> codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
//		codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
		Code.cachedCodeArrayList.clear(); 
		Code.cachedCodeArrayList.addAll(codeListFromDb);
		System.out.println("cachedCodeArrayList: " + Code.cachedCodeArrayList.size() + " chached !");
	}
	
	public static List<Code> selectListCachedCode(String ifcgSeq) throws Exception {
		List<Code> rt = new ArrayList<Code>();
		for(Code codeRow : Code.cachedCodeArrayList) {
			if (codeRow.getCcg_seq().equals(ifcgSeq)) {
				rt.add(codeRow);
			} else {
				// by pass
			}
		}
		return rt;
	}
	
	/*
	 * public static String selectOneCachedCode(int code) throws Exception { String
	 * rt = ""; for(Code codeRow : Code.cachedCodeArrayList) { if
	 * (codeRow.getCcg_seq().equals(code)) { rt = codeRow.getCodename(); } else { //
	 * by pass } } return rt; }
	 * 
	 * 
	 * public static void clear() throws Exception {
	 * Code.cachedCodeArrayList.clear(); }
	 */
	
}


