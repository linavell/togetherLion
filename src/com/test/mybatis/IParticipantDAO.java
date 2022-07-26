package com.test.mybatis;

import java.util.ArrayList;

public interface IParticipantDAO
{
	// 참가자 목록 조회
	public ArrayList<ParticipantDTO> buypostPeople(String code);
}
