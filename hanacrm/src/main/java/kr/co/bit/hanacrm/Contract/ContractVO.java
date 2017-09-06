package kr.co.bit.hanacrm.Contract;

import java.sql.Date;

//  계약내역
public class ContractVO {

    private Integer no;

    private Integer customerNo;

    private Integer employeeNo;

    private Integer savingsNo;

    //  계약날짜(YYYMMDD)
    private Date regDate;

    private String comments;

    //  예금 2
    private Integer type;

    private Integer productNo;

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

    public Integer getSavingsNo() {
        return savingsNo;
    }

    public void setSavingsNo(Integer savingsNo) {
        this.savingsNo = savingsNo;
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getProductNo() {
        return productNo;
    }

    public void setProductNo(Integer productNo) {
        this.productNo = productNo;
    }

	public ContractVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ContractVO(Integer no, Integer customerNo, Integer employeeNo, Integer savingsNo, Date regDate,
			String comments, Integer type, Integer productNo) {
		super();
		this.no = no;
		this.customerNo = customerNo;
		this.employeeNo = employeeNo;
		this.savingsNo = savingsNo;
		this.regDate = regDate;
		this.comments = comments;
		this.type = type;
		this.productNo = productNo;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("ContractVO [no=").append(no).append(", customerNo=").append(customerNo).append(", employeeNo=")
				.append(employeeNo).append(", savingsNo=").append(savingsNo).append(", regDate=").append(regDate)
				.append(", comments=").append(comments).append(", type=").append(type).append(", productNo=")
				.append(productNo).append("]");
		return builder.toString();
	}
    
    
}
