package kr.co.bit.hanacrm.Consult;

import java.sql.Date;

//상담내역 (진행중인)
public class ConsultVO {

	private Integer no;

	private String customerNo;

	private String employeeNo;

	// 여러개?( , , , )
	private String product;

	private String content;

	private Date consultDate;

	private Date regDate;

	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
	}

	public String getCustomerNo() {
		return customerNo;
	}

	public void setCustomerNo(String customerNo) {
		this.customerNo = customerNo;
	}

	public String getEmployeeNo() {
		return employeeNo;
	}

	public void setEmployeeNo(String employeeNo) {
		this.employeeNo = employeeNo;
	}

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getConsultDate() {
		return consultDate;
	}

	public void setConsultDate(Date consultDate) {
		this.consultDate = consultDate;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	// Consult 모델 복사
	public void CopyData(ConsultVO param) {
		this.no = param.getNo();
		this.customerNo = param.getCustomerNo();
		this.employeeNo = param.getEmployeeNo();
		this.product = param.getProduct();
		this.content = param.getContent();
		this.consultDate = param.getConsultDate();
		this.regDate = param.getRegDate();
	}

	public ConsultVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ConsultVO(Integer no, String customerNo, String employeeNo, String product, String content, Date consultDate,
			Date regDate) {
		super();
		this.no = no;
		this.customerNo = customerNo;
		this.employeeNo = employeeNo;
		this.product = product;
		this.content = content;
		this.consultDate = consultDate;
		this.regDate = regDate;
	}
	
}
