package com.test.mvc;

import java.util.ArrayList;

import com.test.mybatis.AdNoticeListDTO;

public interface IAdminDAO
{
    // 공지사항 게시물작성  
    public int insertNoticeArticle(AdNoticeListDTO dto);

    // 공지사항 게시물수정   
    public ArrayList<AdNoticeListDTO> modifyNoticeArticle(AdNoticeListDTO dto);
	
	
}
