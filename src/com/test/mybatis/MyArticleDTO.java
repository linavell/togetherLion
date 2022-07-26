package com.test.mybatis;

public class MyArticleDTO
{
	private String num, code, title, content, write_datetime, buypost_code, member_code;

	public String getNum()
	{
		return num;
	}

	public void setNum(String num)
	{
		this.num = num;
	}
	public String getTitle()
	{
		return title;
	}
	
	public String getCode()
	{
		return code;
	}

	public void setCode(String code)
	{
		this.code = code;
	}

	public void setTitle(String title)
	{
		this.title = title;
	}

	public String getContent()
	{
		return content;
	}

	public void setContent(String content)
	{
		this.content = content;
	}

	public String getWrite_datetime()
	{
		return write_datetime;
	}

	public void setWrite_datetime(String write_datetime)
	{
		this.write_datetime = write_datetime;
	}

	public String getBuypost_code()
	{
		return buypost_code;
	}

	public void setBuypost_code(String buypost_code)
	{
		this.buypost_code = buypost_code;
	}

	public String getMember_code()
	{
		return member_code;
	}

	public void setMember_code(String member_code)
	{
		this.member_code = member_code;
	}
	
}
