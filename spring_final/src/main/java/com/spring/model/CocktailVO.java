package com.spring.model;

import java.util.List;

public class CocktailVO {
	
	private int cocktailNo;	//칵테일번호
	private String cocktailName;	//칵테일 이름
	private String cocktailMaterials;	//재료
	private String cocktailRecipes;	//제조법
	private int cocktailAbv;	//도수
	private String cocktailLevel; //난이도
	private String cocktailCategory;		//카테고리
	private String cocktailImage;		//이미지
	private double cocktailRating;		//평점

	private List<CocktailImageVO> imageList;  	// 이미지 정보 
	
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
	public String getCocktailMaterials() {
		return cocktailMaterials;
	}
	public void setCocktailMaterials(String cocktailMaterials) {
		this.cocktailMaterials = cocktailMaterials;
	}
	public String getCocktailRecipes() {
		return cocktailRecipes;
	}
	public void setCocktailRecipes(String cocktailRecipes) {
		this.cocktailRecipes = cocktailRecipes;
	}
	public int getCocktailAbv() {
		return cocktailAbv;
	}
	public void setCocktailAbv(int cocktailAbv) {
		this.cocktailAbv = cocktailAbv;
	}
	public String getCocktailLevel() {
		return cocktailLevel;
	}
	public void setCocktailLevel(String cocktailLevel) {
		this.cocktailLevel = cocktailLevel;
	}
	public String getCocktailCategory() {
		return cocktailCategory;
	}
	public void setCocktailCategory(String cocktailCategory) {
		this.cocktailCategory = cocktailCategory;
	}
	public String getCocktailImage() {
		return cocktailImage;
	}
	public void setCocktailImage(String cocktailImage) {
		this.cocktailImage = cocktailImage;
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
		return "CocktailVO [cocktailNo=" + cocktailNo + ", cocktailName=" + cocktailName + ", cocktailMaterials="
				+ cocktailMaterials + ", cocktailRecipes=" + cocktailRecipes + ", cocktailAbv=" + cocktailAbv
				+ ", cocktailLevel=" + cocktailLevel + ", cocktailCategory=" + cocktailCategory + ", cocktailImage=" + cocktailImage + ", cocktailRating="
				+ cocktailRating + ", imageList=" + imageList + "]";
	}
	
	
	
}

