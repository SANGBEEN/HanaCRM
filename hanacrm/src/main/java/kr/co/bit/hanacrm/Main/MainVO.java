package kr.co.bit.hanacrm.Main;

import java.math.BigDecimal;

public class MainVO {
	private int no;
	private String name;
	private int count;
	
	public MainVO() {
	}

	public MainVO(int no, String name, int count) {
		this.no = no;
		this.name = name;
		this.count = count;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("MainVO [no=").append(no).append(", name=").append(name).append(", count=").append(count)
				.append("]");
		return builder.toString();
	}


	
	
}
