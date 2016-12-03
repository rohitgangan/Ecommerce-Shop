package com.camerashop.model;

import java.io.Serializable;

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

@SuppressWarnings("serial")
@Entity
public class Product implements Serializable{

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
	private String productPrice;
	
	@Expose
	private String megapixel;
	@Expose						
	private String warrenty;
	@Expose
	private String iso;
	@Expose
	private String touchScreen;
	@Expose
	private String sensor;
	@Expose
	private String screenSize;
	@Expose
	private String recording;
	@Expose
	private String shutterSpeed;
	@Expose
	private String length;
	@Expose
	private String aparture;
	@Expose
	@NotEmpty(message="quantity can not be empty")
	private String quantity;
	@Expose
	private String supplierName;
	
	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getSupplierName() {
		return supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}

	public String getLength() {
		return length;
	}

	public void setLength(String length) {
		this.length = length;
	}

	public String getAparture() {
		return aparture;
	}

	public void setAparture(String aparture) {
		this.aparture = aparture;
	}

	public String getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}

	public String getMegapixel() {
		return megapixel;
	}

	public void setMegapixel(String megapixel) {
		this.megapixel = megapixel;
	}

	public String getWarrenty() {
		return warrenty;
	}

	public void setWarrenty(String warrenty) {
		this.warrenty = warrenty;
	}

	public String getIso() {
		return iso;
	}

	public void setIso(String iso) {
		this.iso = iso;
	}

	public String getTouchScreen() {
		return touchScreen;
	}

	public void setTouchScreen(String touchScreen) {
		this.touchScreen = touchScreen;
	}

	public String getSensor() {
		return sensor;
	}

	public void setSensor(String sensor) {
		this.sensor = sensor;
	}

	public String getScreenSize() {
		return screenSize;
	}

	public void setScreenSize(String screenSize) {
		this.screenSize = screenSize;
	}

	public String getRecording() {
		return recording;
	}

	public void setRecording(String recording) {
		this.recording = recording;
	}

	public String getShutterSpeed() {
		return shutterSpeed;
	}

	public void setShutterSpeed(String shutterSpeed) {
		this.shutterSpeed = shutterSpeed;
	}

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

	public int getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
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
	private UserDetails userDetails;
	
	public UserDetails getUserDetails() {
		return userDetails;
	}

	public void setUserDetails(UserDetails userDetails) {
		this.userDetails = userDetails;
	}

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



		
	
	
}
