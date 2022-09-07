package com.augfw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.augfw.infra.modules.code.Code;
import com.augfw.infra.modules.code.CodeVo;

@Controller
@RequestMapping(value = "/member/")
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	

	@RequestMapping(value = "memberList")
	public String codeList(Model model, MemberVo vo) throws Exception {
		
		System.out.println("vo.getShDelNy(): " + vo.getShDelNy());
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		
		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null ? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL) : vo.getShDateStart());  	
		vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDateTime.nowString() : vo.getShDateEnd());
		
		
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/member/xdmin/memberList";
	}
	
	@RequestMapping(value="memberForm")
	public String memberForm(Model model, MemberVo vo) throws Exception{
		return "infra/code/xdmin/memberForm";
	}
	
	@RequestMapping(value="codeInt")
	public String codeInt(Member dto) throws Exception{
		
		int result = service.insert(dto);
		System.out.println("controller result: " + result);
		
		return "redirect:/member/memberList";
	}
	

	
}
