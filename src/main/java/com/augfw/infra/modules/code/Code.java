package com.augfw.infra.modules.code;

public class Code {
	// ccg를 디폴트로 code를 넣는 걸로 
	// private Integer codeseq; 나중에 추가하기
	private Integer seq;
	private String name;
	private String codename;
	private Integer oderny;
	
	//----------------
	
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
	public Integer getOderny() {
		return oderny;
	}
	public void setOderny(Integer oderny) {
		this.oderny = oderny;
	}
	

	
	//----------------
	


}
