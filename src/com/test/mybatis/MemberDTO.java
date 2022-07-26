package com.test.mybatis;

public class MemberDTO
{
	private String code, id, pw, name, nickname, tel
				 , profile_path, member_code, regist_datetime;
	// 목록 변수 
	private String num;
	
	// 관리자 회원 목록 관련변수 추가
    // 신고횟수, 휴면여부, 영구정지시작일, 휴면전환일, 휴면경과일, 탈퇴일
    private String reported_count, dormant, start_datetime, change_sleep, sleep_date, datetime;
	
	public String getStart_datetime()
	{
		return start_datetime;
	}

	public void setStart_datetime(String start_datetime)
	{
		this.start_datetime = start_datetime;
	}

	public String getChange_sleep()
	{
		return change_sleep;
	}

	public void setChange_sleep(String change_sleep)
	{
		this.change_sleep = change_sleep;
	}

	public String getSleep_date()
	{
		return sleep_date;
	}

	public void setSleep_date(String sleep_date)
	{
		this.sleep_date = sleep_date;
	}

	public String getDatetime()
	{
		return datetime;
	}

	public void setDatetime(String datetime)
	{
		this.datetime = datetime;
	}

	public String getNum()
	{
		return num;
	}

	public void setNum(String num)
	{
		this.num = num;
	}
	public String getReported_count()
	{
		return reported_count;
	}

	public void setReported_count(String reported_count)
	{
		this.reported_count = reported_count;
	}

	public String getDormant()
	{
		return dormant;
	}

	public void setDormant(String dormant)
	{
		this.dormant = dormant;
	}

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

	public String getNickname()
	{
		return nickname;
	}

	public void setNickname(String nickname)
	{
		this.nickname = nickname;
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

	public String getMember_code()
	{
		return member_code;
	}

	public void setMember_code(String member_code)
	{
		this.member_code = member_code;
	}

	public String getRegist_datetime()
	{
		return regist_datetime;
	}

	public void setRegist_datetime(String regist_datetime)
	{
		this.regist_datetime = regist_datetime;
	}
	
}
