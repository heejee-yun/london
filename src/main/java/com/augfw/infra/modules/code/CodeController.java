package com.augfw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.augfw.infra.modules.codegroup.CodeGroup;
import com.augfw.infra.modules.codegroup.CodeGroupServiceImpl;
import com.augfw.infra.modules.codegroup.CodeGroupVo;

@Controller
@RequestMapping(value = "/code/")
public class CodeController {

	@Autowired
	CodeServiceImpl service;
	

	@RequestMapping(value = "codeList")
	public String codeList(Model model, CodeVo vo) throws Exception {
		
		System.out.println("vo.getShdelNy(): " + vo.getShdelNy());
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShCcgCode(): " + vo.getShCcgCode());
		
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/code/xdmin/codeList";
	}
	
	@RequestMapping(value="codeForm")
	public String codeForm(Model model, CodeVo vo) throws Exception{
		return "infra/code/xdmin/codeForm";
	}
	

	@RequestMapping(value = "codeInst")
	public String codeInst(CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {

		service.insert(dto);
		
		vo.setSeq(dto.getSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/code/codeForm";

	}
	
	@RequestMapping(value="codeView")
	public String codeView(CodeVo vo, Model model) throws Exception{
		Code result = service.selectOne(vo);
		model.addAttribute("item", result);
		return "infra/code/xdmin/codeForm";
	}
	
	@RequestMapping(value="home")
	public String home(CodeVo vo, Model model) throws Exception{
		return "infra/home/home";
	}
	
	
	
	
	
	
	
}
