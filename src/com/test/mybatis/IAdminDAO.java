package com.test.mybatis;

import java.sql.SQLException;
import java.util.ArrayList;

import com.test.util.Search;

public interface IAdminDAO
{
	// 로그인
	//public String loginAdmin(String id, String pw);
	public String loginAdmin(AdminDTO admin);
	
	// 검색 조회
	public AdminDTO search(String member_code);
	
	//전체회원목록 페이징처리
	public int listAllMemberCount(Search search) throws Exception;
	
	// 전체회원출력(조회)
	public ArrayList<MemberDTO> listAllMember(Search search) throws Exception;
	
	//영구정지회원출력(조회)
    public ArrayList<MemberDTO> listBanMember();

    //휴면회원출력(조회)
    public ArrayList<MemberDTO> listSleepMember();

    //탈퇴회원출력(조회)
    public ArrayList<MemberDTO> listWithdrawalMember();

    //포인트충전(조회)
    public ArrayList<PointDTO> listPointCharge();

    //포인트결제(조회)
    public ArrayList<PointDTO> listPointPayment();

    //포인트환불(조회)
    public ArrayList<PointDTO> listPointRefund();

    //포인트인출(조회)
    public ArrayList<PointDTO> listPointWithdrawal();
    
    //완료포인트지급(조회)
    public ArrayList<PointDTO> listPointComplete();
	
    // 공지글 목록
    public ArrayList<AdNoticeListDTO> listNotice() throws SQLException;

    // 공지사항 게시물조회 
    public ArrayList<AdNoticeListDTO> listNoticeArticle(String code);

    // 공지사항 게시물수정폼조회
    public ArrayList<AdNoticeListDTO> modifyNoticeArticleForm(String code);
    
    // 메인카테고리 목록
    public ArrayList<MainCateDTO> listCategory();
	
    // 서브카테고리 목록
    public ArrayList<SubCateDTO> listSubCategory();
    
    // 신고접수내역
    public ArrayList<ReportDTO> listReportReception();
    
    // 신고접수내역 상세
    public ArrayList<ReportDTO> listReportReceptionDetail(String code);
}
