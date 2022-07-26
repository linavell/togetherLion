package com.test.mybatis;

public class AdminDTO
{
	private String code, id, pw, name, tel
				 , profile_path, admin_grade_code, member_code;

	public String getCode()
	{
		return code;
	}

	public void setCode(String code)
	{
		this.code = code;
	}

	public String getId()
	{
		return id;
	}

	public void setId(String id)
	{
		this.id = id;
	}

	public String getPw()
	{
		return pw;
	}

	public void setPw(String pw)
	{
		this.pw = pw;
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public String getTel()
	{
		return tel;
	}

	public void setTel(String tel)
	{
		this.tel = tel;
	}

	public String getProfile_path()
	{
		return profile_path;
	}

	public void setProfile_path(String profile_path)
	{
		this.profile_path = profile_path;
	}

	public String getAdmin_grade_code()
	{
		return admin_grade_code;
	}

	public void setAdmin_grade_code(String admin_grade_code)
	{
		this.admin_grade_code = admin_grade_code;
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
