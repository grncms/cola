package com.junefw.infra.modules.member;

import java.util.HashMap;
//import java.util.Iterator;1
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.junefw.infra.common.constants.Constants;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	private Member rtMember2;

	@RequestMapping(value = "/xdmin/member/memberList")
//	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
	public String memberList(Model model, MemberVo vo) throws Exception {

		List<Member> list = service.selectList(vo);
		model.addAttribute("test", list);
		model.addAttribute("searchWord", vo.getShIfmmName());
		model.addAttribute("searchOption", vo.getShOption());
		
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i).toString());
		}

		for (Member item : list) {
			System.out.println(item.getIfmmId() + " " + item.getIfmmName());
		}

		return "xdmin/member/memberList";
	}

	
	
	@RequestMapping(value = "/xdmin/member/memberView")
	public String memberView(Model model, MemberVo vo) throws Exception {
		
//		service.selectOne(vo);
		
		model.addAttribute("item", service.selectOne(vo));
		
		return "xdmin/member/memberView";
	}

	
	
	
	
	@RequestMapping(value = "/xdmin/member/memberForm")
	public String memberForm(Model model) throws Exception {

		return "xdmin/member/memberForm";
	}

	@RequestMapping(value = "/xdmin/member/memberForm2")
	public String memberForm2(Model model) throws Exception {

		return "xdmin/member/memberForm2";
	}

	@RequestMapping(value = "/xdmin/member/memberInst")
	public String memberInst(Model model, Member dto) throws Exception {

		System.out.println("dto.getIfmmId(): " + dto.getIfmmId());
		System.out.println("dto.getIfmmName(): " + dto.getIfmmName());

		// 입력을 작동시킨다.
		int result = service.insert(dto);

		System.out.println("result: " + result);

		return "xdmin/member/memberForm";
	}


	
	
	// DESC : 멤버 삭제를 위한 함수 생성

	@RequestMapping(value = "/xdmin/member/memberDel")

	@ResponseBody
	public Map<String, Object> memberDel(Member dto) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		int result = service.delete(dto);

		map.put("code", "0000");
		map.put("result", result);

		return map;
	}

	
	
	@RequestMapping(value = "/xdmin/member/loginForm")
	public String loginForm(Model model) throws Exception {

		return "xdmin/member/loginForm";
	}
	
	
	
	
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "loginProc") public Map<String, Object>
	 * loginProc(Member dto, HttpSession httpSession) throws Exception { Map<String,
	 * Object> returnMap = new HashMap<String, Object>();
	 * 
	 * Member rtMember = service.selectOneLogin(dto);
	 * 
	 * if(rtMember != null) { // rtMember = service.selectOneLogin(dto);
	 * 
	 * 
	 * 
	 * returnMap.put("rt", "success"); } else { returnMap.put("rt", "fail"); }
	 * 
	 * return returnMap; }
	 */
	
	
	@ResponseBody
	@RequestMapping(value = "/xdmin/member/loginProc")
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.selectOneId(dto);

		if(rtMember != null) {
			Member rtMember2 = service.selectOneLogin(dto);
			
			if(rtMember2 != null) {
				
				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); //60second * 30 = 30minute
//				session.setMaxInactiveInterval(-1);		//session time unlimited
				
				httpSession.setAttribute("sessSeq", rtMember2.getIfmmSeq());
				httpSession.setAttribute("sessId", rtMember2.getIfmmId());
				httpSession.setAttribute("sessName", rtMember2.getIfmmName());
				
				rtMember2.setIflgResultNy(1);
				service.insertLogLogin(rtMember2);
				
			}
			
				
				returnMap.put("rt", "success");
			} else {
				returnMap.put("rt", "fail");
			}
	
		return returnMap;
	}



	public Member getRtMember2() {
		return rtMember2;
	}



	public void setRtMember2(Member rtMember2) {
		this.rtMember2 = rtMember2;
	}


	
	
}
