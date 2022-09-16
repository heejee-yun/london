package com.augfw.infra.modules.codegroup;

public class CodeGroupVo {
	
	private Integer shOption;
	private String shValue;
	private String shDelNy;
	//---
	private String seq;
	//--
	//--
	private String mainKey;
	public Integer getMainKey() {
		return mainKey;
	}
	public void setMainKey(String string) {
		this.mainKey = string;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	//------
	public Integer getShOption() {
		return shOption;
	}
	public void setShOption(Integer shOption) {
		this.shOption = shOption;
	}
	public String getShValue() {
		return shValue;
	}
	public void setShValue(String shValue) {
		this.shValue = shValue;
	}
	public String getShDelNy() {
		return shDelNy;
	}
	public void setShDelNy(String shDelNy) {
		this.shDelNy = shDelNy;
	}

	
}
