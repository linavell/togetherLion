package com.test.mybatis;

import java.io.UnsupportedEncodingException;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.util.Naver_Sens_V2;

@Controller
public class JoinController
{
   @Autowired
   private SqlSession sqlSession;
   
   
   @RequestMapping(value="/join.lion")   
   public String join(Model model)
   {
      return "/WEB-INF/view/user/user_joinInsertForm.jsp";
   }
   
   
   @RequestMapping(value="/idcheck.lion")   
   public String idCheck(HttpServletRequest request, Model model)
   {
	   IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
	   
	   String id = request.getParameter("id");
	   //System.out.println(id);
	   
	   int resultNum;
	   int checkDuplicateIdCount = 0;
	   int checkWithdrawalIdCount = 0;
	   
	   checkDuplicateIdCount = dao.checkDuplicateId(id);
	   checkWithdrawalIdCount = dao.checkWithdrawalId(id);
	   
	   if (checkDuplicateIdCount >= 1)
	   {
		   //System.out.println("중복");
		   resultNum = 0;
	   }
	   else if (checkWithdrawalIdCount == 1)
	   {
		   //System.out.println("탈퇴");
		   resultNum = 1;
	   }
	   else
	   {
		   //System.out.println("정상");
		   resultNum = 2;
	   }
		   
	  model.addAttribute("resultNum", resultNum);
	   
      return "/WEB-INF/view/user/user_checkOk.jsp";
      
   }
   
   
   @RequestMapping(value="/nicknamecheck.lion")   
   public String nickNameCheck(HttpServletRequest request, Model model)
   {
	  IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
	  
	  String nickname = request.getParameter("nickname");
	  
	  int resultNum;
	  int checkDuplicateNicknameCount = 0;
	  
	  checkDuplicateNicknameCount = dao.checkDuplicateNickName(nickname);
	  
	  if (checkDuplicateNicknameCount >= 1)
		   resultNum = 0;
	  else
		  resultNum = 1;
	  
	  model.addAttribute("resultNum", resultNum);
	  
      return "/WEB-INF/view/user/user_checkOk.jsp";
   }
   
   
   
   @RequestMapping(value="/telcheck.lion")   
   public String telCheck(HttpServletRequest request, Model model)
   {
	   IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
	   
	   String tel = request.getParameter("tel");
	   
	   int resultNum;
	   int checkDuplicateTelCount = 0;
	   
	   checkDuplicateTelCount = dao.checkDuplicateTel(tel);
	   
	   if (checkDuplicateTelCount >= 1)
		   resultNum = 0;
	   else
		   resultNum = 1;
	   
	   model.addAttribute("resultNum", resultNum);
	   
	   return "/WEB-INF/view/user/user_checkOk.jsp";
   }
   
   
   @RequestMapping(value="/telauth.lion")
   public String phoneAuth(HttpServletRequest request, HttpServletResponse response) 
   {
		HttpSession session = request.getSession();

		try 
		{
			request.setCharacterEncoding("utf-8");
		} 
		catch (UnsupportedEncodingException e) 
		{
			e.printStackTrace();
		}

		Naver_Sens_V2 ns = new Naver_Sens_V2();
		String tel = request.getParameter("tel");
		Random rand = new Random();
		String numStr = "";
		
		for (int i = 0; i < 6; i++) 
		{
			String ran = Integer.toString(rand.nextInt(10));
			numStr += ran;
		}
		
		System.out.println(tel);
		System.out.println("회원가입 문자 인증 => " + numStr);

		ns.send_msg(tel, numStr);
		request.setAttribute("result", numStr);
		session.setAttribute("rand", numStr);

		return "/WEB-INF/view/user/user_telAuth.jsp";
	}
   
   
   @RequestMapping(value="/telauthok.lion")
   public String phoneAuthOk(HttpServletRequest request, HttpServletResponse response) 
   {
		HttpSession session = request.getSession();
		try 
		{
			request.setCharacterEncoding("utf-8");
		} 
		catch (UnsupportedEncodingException e) 
		{
			e.printStackTrace();
		}

		String rand = (String) session.getAttribute("rand");
		String telCheckNum = (String) request.getParameter("telCheckNum");

		System.out.println(rand + " : " + telCheckNum);

		if (rand.equals(telCheckNum)) 
		{
			request.setAttribute("result", false);
		} else 
		{
			request.setAttribute("result", true);
		}

		return "/WEB-INF/view/user/user_telAuth.jsp";
	}

   
   @RequestMapping(value="/joininsert.lion", method = RequestMethod.POST)   
   public String joinInsert(MemberDTO member)
   {
	  IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
	  
	  dao.addMember(member);
	  
      return "redirect:loginform.lion";
   }
   
   
}



