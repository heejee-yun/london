package com.augfw.infra.modules.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/user/")
public class userController {

	@Autowired
	UserServiceImpl service;
	
	
	@RequestMapping(value="userView")
	public String userView(UserVo vo, Model model) throws Exception{
		User result = service.selectOne(vo);
		model.addAttribute("item", result);
		return "infra/uer/xdmin/memeberForm";
	}
	
	
	
	/*
	 * // vo.setShOptionDate(vo.getShOptionDate() == null ? 1 :
	 * vo.getShOptionDate()); // vo.setShDateStart(vo.getShDateStart() == null ?
	 * UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(),
	 * Constants.DATE_INTERVAL) : vo.getShDateStart()); //
	 * vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDateTime.nowString() :
	 * vo.getShDateEnd());
	 * 
	 * 
	 * List<Member> list = service.selectList(vo); model.addAttribute("list", list);
	 * 
	 * return "infra/member/xdmin/memberList"; }
	 * 
	 * @RequestMapping(value="memberForm") public String
	 * memberForm(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception{
	 * 
	 * Member result = service.selectOne(vo); model.addAttribute("item", result);
	 * return "infra/member/xdmin/memberForm"; }
	 * 
	 * @RequestMapping(value = "memberInst") public String codeInst(Member vo,
	 * Member dto, RedirectAttributes redirectAttributes) throws Exception {
	 * 
	 * service.insert(dto);
	 * 
	 * vo.setSeq(dto.getSeq());
	 * 
	 * redirectAttributes.addFlashAttribute("vo", vo);
	 * 
	 * return "infra/member/xdmin/memberForm";
	 * 
	 * }
	 * 
	 * @RequestMapping(value="memberView") public String memberView(MemberVo vo,
	 * Model model) throws Exception{ Member result = service.selectOne(vo);
	 * model.addAttribute("item", result); return "infra/member/xdmin/memeberForm";
	 * }
	 */
	 
	 


	
}
