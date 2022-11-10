package com.spring.model;

public class CocktailImageVO {
	
	/* 경로 */
	private String uploadPath;
	
	/* uuid */
	private String uuid;
	
	/* 파일 이름 */
	private String fileName;
	
	/* 칵테일 번호 */
	private int cocktailNo;

	public String getUploadPath() {
		return uploadPath;
	}

	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}

	public String getUuid() {
		return uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public int getCocktailNo() {
		return cocktailNo;
	}

	public void setCocktailNo(int cocktailNo) {
		this.cocktailNo = cocktailNo;
	}

	@Override
	public String toString() {
		return "CocktailImageVO [uploadPath=" + uploadPath + ", uuid=" + uuid + ", fileName=" + fileName
				+ ", cocktailNo=" + cocktailNo + "]";
	}
	
	
}
