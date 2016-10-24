package com.camerashop.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.annotations.Expose;

@Entity
public class Product {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Expose
	private int productId;
	@NotEmpty(message="Name can not be empty")
	@Expose
	private String productName;
	@NotEmpty(message="Description can not be empty")
	@Expose
	private String productDescription;
	@NotEmpty(message="rent can not be empty")
	@Expose
	private String productRent;
	@Expose
	private int categoryId;
	@Expose
	private int subCategoryId;
	@Expose
	private int supplierId;
	@Transient
	private MultipartFile image;
	
	public MultipartFile getImage() {
		return image;
	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}

	@ManyToOne
	@JoinColumn(name="categoryId", nullable=false, insertable=false, updatable=false)
	private Category category;
	
	@ManyToOne
	@JoinColumn(name="subCategoryId", nullable=false, insertable=false, updatable=false)
	private Subcategory subcategory;
	
	@ManyToOne
	@JoinColumn(name="supplierId", nullable=false, insertable=false, updatable=false)
	private Supplier supplier;

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public String getProductRent() {
		return productRent;
	}

	public void setProductRent(String productRent) {
		this.productRent = productRent;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public int getSubCategoryId() {
		return subCategoryId;
	}

	public void setSubCategoryId(int subCategoryId) {
		this.subCategoryId = subCategoryId;
	}

	public int getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Subcategory getSubcategory() {
		return subcategory;
	}

	public void setSubcategory(Subcategory subcategory) {
		this.subcategory = subcategory;
	}

	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	
	
	
}
