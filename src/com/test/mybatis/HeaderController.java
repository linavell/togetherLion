/*=====================
 	Sample.java
 	- 컨트롤러 객체
======================*/

package com.test.mybatis;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HeaderController
{	
	
	@Autowired
	private SqlSession sqlSession;
	
	// 헤더 페이지
	@RequestMapping(value="/header.lion")
	public String header(Model model)
	{
		IMainCateDAO dao = sqlSession.getMapper(IMainCateDAO.class);
		ArrayList<MainCateDTO> list = dao.list();
		
		model.addAttribute("list", list);
		
		return "/WEB-INF/view/user/user_header.jsp";
	}
		
}
