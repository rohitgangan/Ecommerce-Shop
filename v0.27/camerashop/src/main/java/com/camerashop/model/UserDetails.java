package com.camerashop.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import com.google.gson.annotations.Expose;

@SuppressWarnings("serial")
@Entity
public class UserDetails implements Serializable{

@Id
@Expose
private int userId;
@Expose
private String firstName;
@Expose
private String lastName;
@Expose
private String username;
@Expose
private String password;
@Expose
private String emailId;
@Expose
private String contactNo;
@Expose
private String alternateContactNo;
@Expose
private int cartId;
@Expose
private int roleId;

@OneToOne
@JoinColumn(name="userId", nullable=false, updatable=false, insertable = false)
private User user;

@OneToOne
@JoinColumn(name="cartId", insertable=false, nullable=false, updatable=false)
public Cart cart;
@OneToOne
@JoinColumn(name="billingAddressId")
public BillingAddress billingAddress;
@OneToOne
@JoinColumn(name="shippingAddressId")
public ShippingAddress shippingAddress;

@OneToOne
@JoinColumn(name="supplierAddressId")
public Supplier supplier;

public Supplier getSupplier() {
	return supplier;
}
public void setSupplier(Supplier supplier) {
	this.supplier = supplier;
}
@OneToOne
@JoinColumn(name="userId", insertable=false, nullable=false, updatable=false)
private UserRole userrole;


public int getRoleId() {
	return roleId;
}
public void setRoleId(int roleId) {
	this.roleId = roleId;
}
public int getUserId() {
	return userId;
}
public void setUserId(int userId) {
	this.userId = userId;
}
public String getFirstName() {
	return firstName;
}
public void setFirstName(String firstName) {
	this.firstName = firstName;
}
public String getLastName() {
	return lastName;
}
public void setLastName(String lastName) {
	this.lastName = lastName;
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
public String getAlternateContactNo() {
	return alternateContactNo;
}
public void setAlternateContactNo(String alternateContactNo) {
	this.alternateContactNo = alternateContactNo;
}


public int getCartId() {
	return cartId;
}
public void setCartId(int cartId) {
	this.cartId = cartId;
}


public User getUser() {
	return user;
}
public void setUser(User user) {
	this.user = user;
}
public UserRole getUserrole() {
	return userrole;
}
public void setUserrole(UserRole userrole) {
	this.userrole = userrole;
}
public Cart getCart() {
	return cart;
}
public void setCart(Cart cart) {
	this.cart = cart;
}
public BillingAddress getBillingAddress() {
	return billingAddress;
}
public void setBillingAddress(BillingAddress billingAddress) {
	this.billingAddress = billingAddress;
}
public ShippingAddress getShippingAddress() {
	return shippingAddress;
}
public void setShippingAddress(ShippingAddress shippingAddress) {
	this.shippingAddress = shippingAddress;
}


}
