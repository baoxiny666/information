package com.tianglhtg.bxy.entity;

import java.util.Date;

public class User {
	// 成员变量
	private Integer uno;
	private String uname;
	private String upassword;
	private String username;
	private Date tianbsj;
	private String uuidindex;
	private int rank;
	private String company;

	// 构造函数
	public User() {
		super();
	}

	public User(Integer uno, String uname, String upassword, String username,Date tianbsj,String uuidindex,int rank,String company) {
		super();
		this.uno = uno;
		this.uname = uname;
		this.upassword = upassword;
		this.username = username;
		this.tianbsj = tianbsj;
		this.uuidindex = uuidindex;
		this.rank = rank;
		this.company = company;
		
	}

	public Integer getUno() {
		return uno;
	}

	public void setUno(Integer uno) {
		this.uno = uno;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpassword() {
		return upassword;
	}

	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Date getTianbsj() {
		return tianbsj;
	}

	public void setTainbsj(Date tianbsj) {
		this.tianbsj = tianbsj;
	}

	public String getUuidindex() {
		return uuidindex;
	}

	public void setUuidindex(String uuidindex) {
		this.uuidindex = uuidindex;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}
	
	
	

	
}
