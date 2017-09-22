package kr.co.bit.hanacrm.Region;

import org.springframework.stereotype.Component;

@Component
public class RegionVO {
	private Integer no;
	private String code;
	private String name;
	public RegionVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public RegionVO(Integer no, String code, String name) {
		super();
		this.no = no;
		this.code = code;
		this.name = name;
	}
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("RegionVO [no=").append(no).append(", code=").append(code).append(", name=").append(name)
				.append("]");
		return builder.toString();
	}
	
	
}
