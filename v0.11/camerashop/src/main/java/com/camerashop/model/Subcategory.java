package com.camerashop.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.hibernate.validator.constraints.NotEmpty;

import com.google.gson.annotations.Expose;

@Entity
public class Subcategory {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Expose
	private int subCategoryId;
	
	@Expose
	@NotEmpty(message = "Name can not be empty")
	private String subCategoryName;
	
	@Expose
	@NotEmpty(message = "Desciption can not be empty")
	private String subCategoryDescription;
	
	@Expose
	private int categoryId;
	
	@OneToMany(mappedBy="subcategory", cascade=CascadeType.ALL, fetch = FetchType.EAGER)
	private Set<Product> product;
	
	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public Category getCategory() {
		return category;
	}
	@ManyToOne
	@JoinColumn(name="categoryId", nullable=false, insertable=false, updatable=false)
	private Category category;
	
	
	public Set<Product> getProduct() {
		return product;
	}

	public void setProduct(Set<Product> product) {
		this.product = product;
	}

	public void setCategory(Category category)
	{
		this.category = category;
		
	}
	
	public int getSubCategoryId() {
		return subCategoryId;
	}
	public void setSubCategoryId(int subCategoryId) {
		this.subCategoryId = subCategoryId;
	}
	public String getSubCategoryName() {
		return subCategoryName;
	}
	public void setSubCategoryName(String subCategoryName) {
		this.subCategoryName = subCategoryName;
	}
	public String getSubCategoryDescription() {
		return subCategoryDescription;
	}
	public void setSubCategoryDescription(String subCategoryDescription) {
		this.subCategoryDescription = subCategoryDescription;
	}
}
