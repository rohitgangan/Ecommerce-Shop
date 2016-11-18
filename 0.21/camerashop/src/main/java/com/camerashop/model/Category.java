package com.camerashop.model;




import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.validator.constraints.NotEmpty;

import com.google.gson.annotations.Expose;

@SuppressWarnings("serial")
@Entity
public class Category implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Expose
	private int categoryId;

	@NotEmpty(message = "Name can not be empty")
	@Expose
	private String categoryName;

	@NotEmpty(message = "Description can not be Empty")
	@Expose
	private String categoryDescription;
	
	@OneToMany(mappedBy="category", cascade=CascadeType.ALL, fetch = FetchType.EAGER)
	private Set<Subcategory> subCategory; 

	public Set<Subcategory> getSubCategory() {
		return subCategory;
	}

	public void setSubCategory(Set<Subcategory> subCategory) {
		this.subCategory = subCategory;
	}

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

	public String getCategoryDescription() {
		return categoryDescription;
	}

	public void setCategoryDescription(String categoryDescription) {
		this.categoryDescription = categoryDescription;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return categoryId + categoryName + categoryDescription;
	}

}
