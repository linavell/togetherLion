package com.test.mybatis;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.util.Search;

@Controller
public class AdminController
{
	@Autowired
	private SqlSession sqlSession;
	
	// 회원 > 전체회원 (목록, 페이징, 검색)
	@RequestMapping(value = "/admin_member_all.lion", method = RequestMethod.GET)
	public String listMember(Model model, @RequestParam(required = false, defaultValue = "1") int page
						   				, @RequestParam(required = false, defaultValue = "1") int range
										, @RequestParam(required = false, defaultValue = "") String searchType
										, @RequestParam(required = false, defaultValue = "") String keyword) throws Exception
	{
		String result  = null;
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);
		
		Search search = new Search();
		search.setSearchType(searchType);
		search.setKeyword(keyword);
		
		// 전체 게시글 개수
		int listCnt = dao.listAllMemberCount(search);
		
		search.pageInfo(page, range, listCnt);
		
		model.addAttribute("pagination", search);
		model.addAttribute("list", dao.listAllMember(search));
		
		result = "/WEB-INF/view/admin/admin_member_all.jsp";
		
		return result;
	}
	
	//영구정지회원목록
	@RequestMapping(value="/admin_member_permanentBan.lion")
    public String banMember(Model model)
    {
        String result=null;
        
        IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);
        
        model.addAttribute("list", dao.listBanMember());
        
        result = "/WEB-INF/view/admin/admin_member_permanentBan.jsp";

        return result;
    }
	
	//휴면회원목록
	@RequestMapping(value="/admin_member_sleep.lion")
    public String sleepMember(Model model)
    {
        String result=null;
        
        IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);
        
        model.addAttribute("list", dao.listSleepMember());
        
        result = "/WEB-INF/view/admin/admin_member_sleep.jsp";

        return result;
    }
	
	
	//탈퇴회원목록
	@RequestMapping(value="/admin_member_withdrawal.lion")
    public String withdrawalMember(Model model)
    {
        String result=null;
        
        IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);
        
        model.addAttribute("list", dao.listWithdrawalMember());
        
        result = "/WEB-INF/view/admin/admin_member_withdrawal.jsp";

        return result;
    }
	
	//포인트충전
	@RequestMapping(value="/admin_point_charge.lion")
    public String pointCharge(Model model)
    {
        String result=null;
        
        IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);
        
        model.addAttribute("list", dao.listPointCharge());
        
        
        result = "/WEB-INF/view/admin/admin_point_charge.jsp";

        return result;
    }
	
	//포인트결제
	@RequestMapping(value="/admin_point_payment.lion")
    public String pointPayment(Model model)
    {
        String result=null;
        
        IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);
        
        model.addAttribute("list", dao.listPointPayment());
        
        result = "/WEB-INF/view/admin/admin_point_payment.jsp";

        return result;
    }
	
	//포인트환불
	@RequestMapping(value="/admin_point_refund.lion")
    public String PointRefund(Model model)
    {
        String result=null;
        
        IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);
        
		model.addAttribute("list", dao.listPointRefund()); 
        
        result = "/WEB-INF/view/admin/admin_point_refund.jsp";

        return result;
    }
	
	//포인트인출
	@RequestMapping(value="/admin_point_withdrawal.lion")
    public String PointWithdrawal(Model model)
    {
        String result=null;
        
        IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);
        
		model.addAttribute("list", dao.listPointWithdrawal());  
        
        result = "/WEB-INF/view/admin/admin_point_withdrawal.jsp";

        return result;
    }
	
	//완료포인트지급
	@RequestMapping(value="/admin_point_complete.lion")
    public String PointComplete(Model model)
    {
        String result=null;
        
        IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);
        
		model.addAttribute("list", dao.listPointComplete());  
        
        result = "/WEB-INF/view/admin/admin_point_complete.jsp";

        return result;
    }
	
	// 카테고리
	@RequestMapping(value="/admin_homepage_categoryList.lion")
    public String listCategory(Model model)
    {
        String result=null;
        
        IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);
        
		model.addAttribute("list", dao.listCategory());  
		model.addAttribute("sub", dao.listSubCategory());  
        
        result = "/WEB-INF/view/admin/admin_homepage_categoryList.jsp";

        return result;
    }
	
	// 공지사항 메인
    @RequestMapping(value = "/ad_notice_list.lion")
    public String noticeList(Model model) throws SQLException
    {
        String result = null;

        IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);

        model.addAttribute("list", dao.listNotice());

        result = "/WEB-INF/view/admin/admin_homepage_noticeList.jsp";

        return result;
    }



    //공지글조회
    @RequestMapping(value= "/ad_notice_article.lion")
    public String noticeArticle(String code, Model model) 
    {
        String result = null;

        IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class); 
        ArrayList<AdNoticeListDTO> dto = dao.listNoticeArticle(code); 
 

        model.addAttribute("article", dto);
        result = "/WEB-INF/view/admin/admin_homepage_noticeArticle.jsp";

        return result;
    }

    // 공지글쓰기페이지로
    @RequestMapping(value="/ad_notice_insertForm.lion")
    public String noticeInsertForm()
    {
        String result=null;

        result = "/WEB-INF/view/admin/admin_homepage_noticeInsertForm.jsp";

        return result;
    }



    //공지글수정페이지
    @RequestMapping(value="/ad_notice_updateForm.lion", method=RequestMethod.GET)
    public String noticeUpdateForm(String code, Model model)
    {
        String result = null;

        IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class); 
        ArrayList<AdNoticeListDTO> dto = dao.modifyNoticeArticleForm(code); 
 

        model.addAttribute("article", dto);

        result = "/WEB-INF/view/admin/admin_homepage_noticeUpdateForm.jsp";

        return result;
    }
	
    
    // 신고접수내역
    @RequestMapping(value = "/admin_report_receptionList.lion")
    public String reportReceptionList(Model model) 
    {
        String result = null;

        IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);

        model.addAttribute("list", dao.listReportReception());

        result = "/WEB-INF/view/admin/admin_report_receptionList.jsp";

        return result;
    }
    
    //신고접수내역 상세
    @RequestMapping(value = "/admin_report_receptionDetail.lion", method = RequestMethod.GET)
    public String reportReceptionDetail(String code, Model model) 
    {
        String result = null;

        IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);
        ArrayList<ReportDTO> dto = dao.listReportReceptionDetail(code);
        
        model.addAttribute("list", dto);
        
        //model.addAttribute("list", dao.listReportReceptionDetail(code));
        
        result = "/WEB-INF/view/admin/admin_report_receptionDetail.jsp";
        
        
        return result;
        
        
    }

    
}
