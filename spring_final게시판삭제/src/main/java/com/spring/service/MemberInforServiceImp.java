package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.MemberInforMapper;
import com.spring.model.MemberInforVO;


@Service
public class MemberInforServiceImp implements MemberInforService{
	
	@Autowired
	 MemberInforMapper inforMapper;
	
	@Override
	public void useInfo(MemberInforVO info) throws Exception{
		
		inforMapper.useInfo(info);
		
	}
	
	
	@Override
	public void updateInfo(MemberInforVO info) throws Exception{
		
		inforMapper.updateInfo(info);
		
	}
	
	   @Override
	    public MemberInforVO usePrint(MemberInforVO info) throws Exception {
	        
	        return inforMapper.usePrint(info);
	    }
		

}
