package com.spring.model;

import java.util.List;

public class forum_replypageDTO {
List<forum_replyDTO> list;
	
	PageMakerDTO pageInfo;

	public List<forum_replyDTO> getList() {
		return list;
	}

	public PageMakerDTO getPageInfo() {
		return pageInfo;
	}

	public void setList(List<forum_replyDTO> list) {
		this.list = list;
	}

	public void setPageInfo(PageMakerDTO pageInfo) {
		this.pageInfo = pageInfo;
	}

	@Override
	public String toString() {
		return "forum_replypageDTO [list=" + list + ", pageInfo=" + pageInfo + "]";
	}
	
	
}
