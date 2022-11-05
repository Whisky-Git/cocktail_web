package com.spring.model;

import java.util.List;

public class SelectDTO {

	/* 칵테일 번호 */
	private int cocktailNo;
	
	/* 칵테일 이름 */
	private String cocktailName;
	
	/* 칵테일 평점 */
	private double cocktailRating;	
	
	/* 상품 이미지 */
	private List<CocktailImageVO> imageList;

	public int getCocktailNo() {
		return cocktailNo;
	}

	public void setCocktailNo(int cocktailNo) {
		this.cocktailNo = cocktailNo;
	}

	public String getCocktailName() {
		return cocktailName;
	}

	public void setCocktailName(String cocktailName) {
		this.cocktailName = cocktailName;
	}

	public double getCocktailRating() {
		return cocktailRating;
	}

	public void setCocktailRating(double cocktailRating) {
		this.cocktailRating = cocktailRating;
	}

	public List<CocktailImageVO> getImageList() {
		return imageList;
	}

	public void setImageList(List<CocktailImageVO> imageList) {
		this.imageList = imageList;
	}

	@Override
	public String toString() {
		return "SelectDTO [cocktailNo=" + cocktailNo + ", cocktailName=" + cocktailName + ", cocktailRating="
				+ cocktailRating + ", imageList=" + imageList + "]";
	}

	
	
	
    
}
