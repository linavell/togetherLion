package com.test.mybatis;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class LoginController
{
   @Autowired
   private SqlSession sqlSession;
   
   @RequestMapping(value="/loginform.lion")   
   public String login(Model model)
   {
      return "/WEB-INF/view/user/user_loginForm.jsp";
   }
   
   @RequestMapping(value="/loginmember.lion", method=RequestMethod.POST)
   public String loginMember(MemberDTO member, HttpServletRequest request)
   {
      String result = null;
      
      IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
      HttpSession session = request.getSession();
      
      String member_code = null;
      String nickName = null;
      int banMemberCount = 0;
      
      member_code = dao.loginMember(member);
      
      if (member_code != null)
	  {
         MemberDTO dto = dao.search(member_code);
         nickName = dto.getNickname();
    	 banMemberCount = dao.count(member_code);
	  }

      
      if (member_code == null)									// 회원 정보가 없을 경우
      {
    	result = "redirect:loginalert.lion?code=1";	
      }
      else if (banMemberCount == 1)								// 영구정지 회원일 경우
      {
    	result = "redirect:loginalert.lion?code=2";	    	  
      }
      else														// 정상 로그인
      {	
    	 session.setAttribute("member_code", member_code);
    	 session.setAttribute("nickName", nickName);
         result = "redirect:main.lion";
      }
      
      return result;
   }
   
   @RequestMapping(value="/loginadmin.lion", method=RequestMethod.POST)
   public String loginAdmin(AdminDTO admin, Model model, HttpServletRequest request)
   {
      String result = null;
      
      IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);
      HttpSession session = request.getSession();
      String member_code = null;
      member_code = dao.loginAdmin(admin);
      
      if (member_code == null)									// 관리자 정보가 없을 경우
      {
    	  result = "redirect:loginalert.lion?code=1";
      }
      else														// 정상 로그인
      {
    	 session.setAttribute("member_code", member_code);
         result = "redirect:/admin/admin_main.jsp";
      }
      return result;
   }
   
   
	@RequestMapping(value="/loginalert.lion", method = RequestMethod.GET)
	public String loginAlert()
	{
		String result = null;
		
		result = "/WEB-INF/view/user/user_loginAlert.jsp";
		
		return result;
	}
	
	
	@RequestMapping(value="/logout.lion")
	public String logOut(HttpServletRequest request)
	{
		
		HttpSession session = request.getSession();
		session.invalidate();
		
		return "redirect:main.lion"; 
		
	}
	
	
	@RequestMapping(value="/idfind.lion")
	public String idFind()
	{
		return "/WEB-INF/view/user/user_findIdForm.jsp"; 
		
	}
	

	@RequestMapping(value="/idsearch.lion")
	public String idSearch(MemberDTO member, Model model)
	{
	    IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
	    String result = null;
	    String id = null;
	    String regist_datetime;
	    
	
	    id = dao.idFind(member);
	    
		if (id == null)												// 회원 아이디가 없을 경우
		{
			result = "redirect:loginalert.lion?code=3";
		}
		else														// 회원 아이디가 존재할 경우
		{
		   regist_datetime = dao.regFind(member.getTel());
		   
		   model.addAttribute("id", id);
		   model.addAttribute("regist_datetime", regist_datetime);
		   result = "/WEB-INF/view/user/user_findId_success.jsp";
		}
	    
		return result; 
	}
	
	
	@RequestMapping(value="/pwfind.lion")
	public String pwFind()
	{
		return "/WEB-INF/view/user/user_findPwForm.jsp"; 
	}
	
	
	@RequestMapping(value="/pwmodify.lion")
	public String pwModify(MemberDTO member, Model model)
	{
		model.addAttribute("id", member.getId());
		return "/WEB-INF/view/user/user_findPw_modifyForm.jsp"; 
	}
	
	
	@RequestMapping(value="/telcheck2.lion")
	public String telcheck2(MemberDTO member, Model model)
	{
	   IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
	   
	   int resultNum;
	   int checkIdTelCount = 0;
	   
	   checkIdTelCount = dao.checkIdTel(member);
	   
	   if (checkIdTelCount >= 1)
		   resultNum = 0;
	   else
		   resultNum = 1;
	   
	   model.addAttribute("resultNum", resultNum);
	   
	   return "/WEB-INF/view/user/user_checkOk.jsp";
	}
	
	
	@RequestMapping(value="/pwmodifyok.lion")
	public String pwModifyOk(MemberDTO member, Model model)
	{
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		
		dao.modifyPw(member);
		
		return "redirect:loginform.lion"; 
	}
	
}



