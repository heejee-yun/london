package com.augfw.infra.modules.code;

public class Code {
	// ccg를 디폴트로 code를 넣는 걸로 

	private Integer seq;
	private String name;
	private String codename;
	private Integer order_seq;
	private Integer cc_seq; 
	private Integer delNy;
	
	//------
	
	public Integer getSeq() {
		return seq;
	}
	public void setSeq(Integer seq) {
		this.seq = seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCodename() {
		return codename;
	}
	public void setCodename(String codename) {
		this.codename = codename;
	}
	public Integer getOrder_seq() {
		return order_seq;
	}
	public void setOrder_seq(Integer order_seq) {
		this.order_seq = order_seq;
	}
	public Integer getCc_seq() {
		return cc_seq;
	}
	public void setCc_seq(Integer cc_seq) {
		this.cc_seq = cc_seq;
	}
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	} 

	
	//-----


}
