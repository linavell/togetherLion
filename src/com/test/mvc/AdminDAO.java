package com.test.mvc;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.util.ArrayList;

import com.test.mybatis.AdNoticeListDTO;
import com.test.util.DBConn;

public class AdminDAO implements IAdminDAO
{
	private Connection conn;

	@Override
	public int insertNoticeArticle(AdNoticeListDTO dto)
	{
		int result=0;
		
		try
		{
			conn = DBConn.getConnection();
			 
			
			
		} 
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		finally 
		{
			try
			{
				DBConn.close();
			} 
			catch (Exception e2)
			{
				System.out.println(e2.toString());
			}
		}
		
		return result;
	}

	@Override
	public ArrayList<AdNoticeListDTO> modifyNoticeArticle(AdNoticeListDTO dto)
	{
		ArrayList<AdNoticeListDTO> result = null;
		
		try
		{
			conn = DBConn.getConnection();
			
		 
			
		} 
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		finally 
		{
			try
			{
				DBConn.close();
			} 
			catch (Exception e2)
			{
				System.out.println(e2.toString());
			}
		}
		
		return result;
	}
 
}
