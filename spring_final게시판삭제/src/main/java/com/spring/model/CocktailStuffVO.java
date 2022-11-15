package com.spring.model;

public class CocktailStuffVO {
	private int stuffId;	//id
	private String stuffType;	//재료 종류
	private String stuffName;	//재료 이름
	
	public int getStuffId() {
		return stuffId;
	}
	public void setStuffId(int stuffId) {
		this.stuffId = stuffId;
	}
	public String getStuffType() {
		return stuffType;
	}
	public void setStuffType(String stuffType) {
		this.stuffType = stuffType;
	}
	public String getStuffName() {
		return stuffName;
	}
	public void setStuffName(String stuffName) {
		this.stuffName = stuffName;
	}
	@Override
	public String toString() {
		return "CocktailStuffVO [stuffId=" + stuffId + ", stuffType=" + stuffType + ", stuffName=" + stuffName + "]";
	}


	

}
