package com.camerashop.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import com.google.gson.annotations.Expose;

@Entity
public class SupplierActivation {

	@Id
	@Expose
	private int userId;
	@Expose
	private String username;
	@Expose
	private String password;
	@Expose
	private Boolean enabled;
	@Expose
	private String emailId;
	@Expose
	private String contactNo;
	@Expose
	private String supplierCompanyName;
	@Expose
	private String address1;
	@Expose
	private String address2;
	@Expose
	private String comapanyUrl;
	@Expose
	private String District;
	@Expose
	private String pinCode;
	@Expose
	private String state;
	@Expose
	private String landmark;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Boolean getEnabled() {
		return enabled;
	}
	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getContactNo() {
		return contactNo;
	}
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}
	public String getSupplierCompanyName() {
		return supplierCompanyName;
	}
	public void setSupplierCompanyName(String supplierCompanyName) {
		this.supplierCompanyName = supplierCompanyName;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	
	public String getComapanyUrl() {
		return comapanyUrl;
	}
	public void setComapanyUrl(String comapanyUrl) {
		this.comapanyUrl = comapanyUrl;
	}
	public String getDistrict() {
		return District;
	}
	public void setDistrict(String district) {
		District = district;
	}
	public String getPinCode() {
		return pinCode;
	}
	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getLandmark() {
		return landmark;
	}
	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}
	
}
