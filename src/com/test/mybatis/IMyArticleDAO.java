/*======================
	IArticleDAO.java
	- 인터페이스
======================*/

package com.test.mybatis;

import java.util.ArrayList;

public interface IMyArticleDAO
{

	public ArrayList<MyArticleDTO> buypost(String member_code);
	
	public ArrayList<MyArticleDTO> buypost_reply(String member_code);
	
	public String delete(String code);
}
