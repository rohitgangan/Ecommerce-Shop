package com.camerashop.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@SuppressWarnings("serial")
@Entity
public class UserRole implements Serializable{
	
	@Id
	private int userId;
	private int roleId;
	
	@OneToOne
	@JoinColumn(name="userId", insertable=false, nullable=false, updatable=false)
	public User user;
	
	@OneToOne
	@JoinColumn(name="roleId", insertable=false, nullable=false, updatable=false)
	public Role role;

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getRoleId() {
		return roleId;
	}

	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}

	

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}
}
