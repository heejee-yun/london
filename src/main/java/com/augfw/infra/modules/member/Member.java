package com.augfw.infra.modules.member;

public class Member {
	// ccg를 디폴트로 code를 넣는 걸로 
	// private Integer codeseq; 나중에 추가하기
	private String seq;
	private String id;
	private String name;
	private String mobile;
	private String email;
	private String dob;
	private Integer gender;
	private Integer signupPath;
	private String goal;
	private String joinDate;
	private String resignDate;
	private Integer resignNy;
	
	
	
	
	public Integer getSignupPath() {
		return signupPath;
	}
	public void setSignupPath(Integer signupPath) {
		this.signupPath = signupPath;
	}
	public String getGoal() {
		return goal;
	}
	public void setGoal(String goal) {
		this.goal = goal;
	}
	public String getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}
	public String getResignDate() {
		return resignDate;
	}
	public void setResignDate(String resignDate) {
		this.resignDate = resignDate;
	}
	public Integer getResignNy() {
		return resignNy;
	}
	public void setResignNy(Integer resignNy) {
		this.resignNy = resignNy;
	}
	public Integer getGender() {
		return gender;
	}
	public void setGender(Integer gender) {
		this.gender = gender;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	
	// ------
	

}
