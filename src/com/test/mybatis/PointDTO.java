package com.test.mybatis;

public class PointDTO
{
	// 행, 아이디, 이름, 닉네임, 충전금액, 일자(카테고리별 변동 --충전일,결제일..)
	// , 공동구매코드, 환불사유, 인출계좌정보,  
	private String num, id, name, nickname, amount, datetime
					, buypost_code, reason, withdrawal_account_info;

	// GETTER / SETTER
	
	
	
	public String getNum()
	{
		return num;
	}

	public String getWithdrawal_account_info()
	{
		return withdrawal_account_info;
	}

	public void setWithdrawal_account_info(String withdrawal_account_info)
	{
		this.withdrawal_account_info = withdrawal_account_info;
	}

	public void setNum(String num)
	{
		this.num = num;
	}

	public String getId()
	{
		return id;
	}

	public void setId(String id)
	{
		this.id = id;
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

	public String getAmount()
	{
		return amount;
	}

	public void setAmount(String amount)
	{
		this.amount = amount;
	}

	public String getDatetime()
	{
		return datetime;
	}

	public void setDatetime(String datetime)
	{
		this.datetime = datetime;
	}

	public String getBuypost_code()
	{
		return buypost_code;
	}

	public void setBuypost_code(String buypost_code)
	{
		this.buypost_code = buypost_code;
	}

	public String getReason()
	{
		return reason;
	}

	public void setReason(String reason)
	{
		this.reason = reason;
	}

	
	
	
	
	
}




