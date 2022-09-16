package com.augfw.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.augfw.infra.constants.Constants;

@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;
	

	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(Model model, CodeGroupVo vo) throws Exception {
		
		System.out.println("vo.getShDelNy(): " + vo.getShDelNy());
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/codegroup/xdmin/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupForm")
	public String codeGroupForm(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		
		System.out.println("vo.getMainKey(): form :" + vo.getMainKey());
		
		if (vo.getMainKey().equals("0") || vo.getMainKey().equals("")){
			// insert
		} else {
			CodeGroup item = service.selectOne(vo);
			model.addAttribute("item", item);
		}
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	@SuppressWarnings(value = {"all"})
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		
		vo.setMainKey(dto.getSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		if (Constants.INSERT_AFTER_TYPE == 1) {
			return "redirect:/codeGroup/codeGroupList";
		} else {
			return "redirect:/codeGroup/codeGroupList";
		}
	}
	
	@RequestMapping(value="codeGroupView")
	public String codeGroupView(CodeGroupVo vo, Model model) throws Exception{
		CodeGroup result = service.selectOne(vo);
		model.addAttribute("item", result);
		return "infra/codegroup/xdmin/codegroupForm";
	}
	

	
}
