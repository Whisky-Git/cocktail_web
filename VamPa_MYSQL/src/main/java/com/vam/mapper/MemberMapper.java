package com.vam.mapper;

import com.vam.model.MemberVO;

public interface MemberMapper {

    //ȸ������
    public void memberJoin(MemberVO member);

    // ���̵� �ߺ� �˻�
    public int idCheck(String memberId);
}