package com.vam.service;

import com.vam.model.MemberVO;

public interface MemberService {

    //sign in
    public void memberJoin(MemberVO member) throws Exception;

    // ���̵� �ߺ� �˻�
    public int idCheck(String memberId) throws Exception;

}