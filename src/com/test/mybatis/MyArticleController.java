package com.test.mybatis;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyArticleController
{
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/myarticle.lion", method = RequestMethod.GET)
	public String buypostList(String member_code, Model model, HttpSession session)
	{
		String result = null;
		
		IMyArticleDAO dao = sqlSession.getMapper(IMyArticleDAO.class);
		
		ArrayList<MyArticleDTO> buypost = dao.buypost(member_code);
		ArrayList<MyArticleDTO> buypost_reply = dao.buypost_reply(member_code);
		
		model.addAttribute("buypost", dao.buypost(member_code));
		model.addAttribute("buypost_reply", dao.buypost_reply(member_code));
		
		result = "/WEB-INF/view/user/user_mypage_myArticle.jsp";
		
		return result;
	}
	
	@RequestMapping(value = "/myarticledelete.lion", method=RequestMethod.GET)
	public String delete(String code, Model model)
	{
		IMyArticleDAO dao = sqlSession.getMapper(IMyArticleDAO.class);
		
		dao.delete(code);
		
		return "redirect:myarticle.lion";
	}

	
}
