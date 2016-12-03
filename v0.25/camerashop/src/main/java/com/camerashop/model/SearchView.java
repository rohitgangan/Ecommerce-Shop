package com.camerashop.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

import com.google.gson.annotations.Expose;

@SuppressWarnings("serial")
@Entity
public class SearchView implements Serializable{
	
	@Id
	@Expose
	private int categoryId;
	@Expose
	private String categoryName;
	
	
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	
	
}
