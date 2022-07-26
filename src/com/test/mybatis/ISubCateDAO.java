package com.test.mybatis;

import java.util.ArrayList;

public interface ISubCateDAO
{
	// 해당 대분류 카테고리의 소분류 카테고리 리스트 출력
	public ArrayList<SubCateDTO> searchByMainCateCode(String code);
	
	// 해당 소분류 카테고리의 소분류 카테고리 리스트 출력
	public ArrayList<SubCateDTO> searchBySubCateCode(String code);
	
}
