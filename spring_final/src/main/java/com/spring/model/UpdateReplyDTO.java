package com.spring.model;

public class UpdateReplyDTO {

	private int cocktailNo;
	
	private double cocktailRating;

	public int getCocktailNo() {
		return cocktailNo;
	}

	public void setCocktailNo(int cocktailNo) {
		this.cocktailNo = cocktailNo;
	}

	public double getCocktailRating() {
		return cocktailRating;
	}

	public void setCocktailRating(double cocktailRating) {
		this.cocktailRating = cocktailRating;
	}

	@Override
	public String toString() {
		return "UpdateReplyDTO [cocktailNo=" + cocktailNo + ", cocktailRating=" + cocktailRating + "]";
	}
	
    
}
