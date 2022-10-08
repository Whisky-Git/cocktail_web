package com.spring.model;

public class SelectDTO {

	/* 칵테일 번호 */
	private int cocktailNo;
	
	/* 칵테일 이름 */
	private String cocktailName;
	
	/* 칵테일 평점 */
	private double cocktailRating;	
	
	/* 상품 이미지 */
	private String cocktailImage;

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

	public String getCocktailImage() {
		return cocktailImage;
	}

	public void setCocktailImage(String cocktailImage) {
		this.cocktailImage = cocktailImage;
	}

	@Override
	public String toString() {
		return "SelectDTO [cocktailNo=" + cocktailNo + ", cocktailName=" + cocktailName + ", cocktailRating="
				+ cocktailRating + ", cocktailImage=" + cocktailImage + "]";
	}
	
	
    
}
