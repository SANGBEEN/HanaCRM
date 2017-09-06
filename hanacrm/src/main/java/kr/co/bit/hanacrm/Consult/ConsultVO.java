package kr.co.bit.hanacrm.Consult;

import java.sql.Date;

//상담내역 (진행중인)
public class ConsultVO {

	private Integer no;

	private Integer customerNo;

	private Integer employeeNo;

	private String content;

	// YYYYMMDD
	private Date regDate;

	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
	}

	public Integer getCustomerNo() {
		return customerNo;
	}

	public void setCustomerNo(Integer customerNo) {
		this.customerNo = customerNo;
	}

	public Integer getEmployeeNo() {
		return employeeNo;
	}

	public void setEmployeeNo(Integer employeeNo) {
		this.employeeNo = employeeNo;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public ConsultVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ConsultVO(Integer no, Integer customerNo, Integer employeeNo, String content, Date regDate) {
		super();
		this.no = no;
		this.customerNo = customerNo;
		this.employeeNo = employeeNo;
		this.content = content;
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("ConsultVO [no=").append(no).append(", customerNo=").append(customerNo).append(", employeeNo=")
				.append(employeeNo).append(", content=").append(content).append(", regDate=").append(regDate)
				.append("]");
		return builder.toString();
	}

	
}
