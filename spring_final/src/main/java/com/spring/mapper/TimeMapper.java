package com.spring.mapper;

import org.apache.ibatis.annotations.Select;

public interface TimeMapper {

	@Select("SELECT now() FROM dual")
	public String getTime();
	
}