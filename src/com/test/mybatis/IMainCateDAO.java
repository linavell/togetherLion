package com.test.mybatis;

import java.util.ArrayList;

public interface IMainCateDAO
{
	// 대분류 카테고리 리스트 출력
	public ArrayList<MainCateDTO> list();
	
	// 대분류 카테고리 코드로 대분류 카테고리 조회
	public MainCateDTO search(String code);
	
	// 소분류 카테고리 코드로 대분류 카테고리 조회
	public MainCateDTO searchBySubCate(String code);
	
}
