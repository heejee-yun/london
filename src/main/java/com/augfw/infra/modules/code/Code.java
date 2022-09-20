package com.augfw.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

public class Code {
	// ccg를 디폴트로 code를 넣는 걸로 

	private String seq;
	private String name;
	private String codename;
	private Integer orderNy;
	private String ccg_seq; 
	private Integer delNy;
	
	
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
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
	public Integer getOrderNy() {
		return orderNy;
	}
	public void setOrderNy(Integer orderNy) {
		this.orderNy = orderNy;
	}
	public String getCcg_seq() {
		return ccg_seq;
	}
	public void setCcg_seq(String ccg_seq) {
		this.ccg_seq = ccg_seq;
	}
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
//	for cache
	public static List<Code> cachedCodeArrayList = new ArrayList<Code>();

}
