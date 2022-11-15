package com.spring.model;

import java.util.Arrays;

public class forum_criteria {
	
	/* 게시물 번호(댓글 기능에서 사용) */
	private int forum_no;
	
	/* 현재 페이지 */
    private int pageNum;
    
    /* 한 페이지 당 보여질 게시물 갯수 */
    private int amount;
    
    /* 스킵 할 게시물 수( (pageNum-1) * amount ) */
    private int skip;
    
    
    /*검색 키워드*/
    private String keyword;
    
    /* 검색 타입 */
    private String type;
    
    /* 검색 타입 배열 */
    private String[] typeArr;
    
    /* 기본 생성자 -> 기봅 세팅 : pageNum = 1, amount = 10 */
    public forum_criteria() {
        this(1,10);
        this.skip = 0;
    }
    
    /* 생성자 => 원하는 pageNum, 원하는 amount */
    public forum_criteria(int pageNum, int amount) {
        this.pageNum = pageNum;
        this.amount = amount;
        this.skip = (pageNum-1)*amount;
    }

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.skip = (pageNum-1)*this.amount;
		this.pageNum = pageNum;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.skip = (this.pageNum-1)*amount;
		this.amount = amount;
	}

	public int getForum_no() {
		return forum_no;
	}

	public int getSkip() {
		return skip;
	}

	public String getKeyword() {
		return keyword;
	}

	public String getType() {
		return type;
	}

	public String[] getTypeArr() {
		return typeArr;
	}

	public void setForum_no(int forum_no) {
		this.forum_no = forum_no;
	}

	public void setSkip(int skip) {
		this.skip = skip;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public void setType(String type) {
		this.type = type;
		this.typeArr = type.split("");
	}

	public void setTypeArr(String[] typeArr) {
		this.typeArr = typeArr;
	}

	@Override
	public String toString() {
		return "Criteria [forum_no=" + forum_no + ", pageNum=" + pageNum + ", amount=" + amount + ", skip=" + skip
				+ ", keyword=" + keyword + ", type=" + type + ", typeArr=" + Arrays.toString(typeArr) + "]";
	}


	
	
    
    
}
