package com.camerashop.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import com.google.gson.annotations.Expose;

@Entity
public class ProductView {

	@Id
	@Expose
	private int productId;
	@Expose
	private int categoryId;
	@Expose
	private int subCategoryId;
	@Expose
	private String categoryName;
	
	@Expose
	private String subCategoryName;
	@Expose
	private String productName;
	@Expose
	private String productDescription;
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
	private String username;
	@Expose
	private String supplierCompanyName;
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
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
	
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getSubCategoryName() {
		return subCategoryName;
	}
	public void setSubCategoryName(String subCategoryName) {
		this.subCategoryName = subCategoryName;
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
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getSupplierCompanyName() {
		return supplierCompanyName;
	}
	public void setSupplierCompanyName(String supplierCompanyName) {
		this.supplierCompanyName = supplierCompanyName;
	}
	
	
}
