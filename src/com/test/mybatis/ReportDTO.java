package com.test.mybatis;

public class ReportDTO
{
	//행번호, 접수코드, 피신고자, 게시물종류, 게시물번호, 신고자, 신고사유, 일자 
	private String num, code, member_id, type, buypost_code, reporter_id
				, main_name, datetime, sub_name;

	// getter/ setter

	public String getNum()
	{
		return num;
	}

	public void setNum(String num)
	{
		this.num = num;
	}

	public String getCode()
	{
		return code;
	}

	public void setCode(String code)
	{
		this.code = code;
	}

	public String getMember_id()
	{
		return member_id;
	}

	public void setMember_id(String member_id)
	{
		this.member_id = member_id;
	}

	public String getType()
	{
		return type;
	}

	public void setType(String type)
	{
		this.type = type;
	}

	public String getBuypost_code()
	{
		return buypost_code;
	}

	public void setBuypost_code(String buypost_code)
	{
		this.buypost_code = buypost_code;
	}

	public String getReporter_id()
	{
		return reporter_id;
	}

	public void setReporter_id(String reporter_id)
	{
		this.reporter_id = reporter_id;
	}

	public String getMain_name()
	{
		return main_name;
	}

	public void setMain_name(String main_name)
	{
		this.main_name = main_name;
	}

	public String getDatetime()
	{
		return datetime;
	}

	public void setDatetime(String datetime)
	{
		this.datetime = datetime;
	}

	public String getSub_name()
	{
		return sub_name;
	}

	public void setSub_name(String sub_name)
	{
		this.sub_name = sub_name;
	}


	
	
	
}
