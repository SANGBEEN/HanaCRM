package kr.co.bit.hanacrm.Consult;

import java.util.Date;
import java.util.List;

import kr.co.bit.hanacrm.Customer.CusVO;

//상담내역 (진행중인)
public class ConsultVO {

	private Integer no;
	private Integer customerNo;
	private Integer employeeNo;
	private String content;
	private Date regDate;
	
	private CusVO customerVO;
	
	private List<ConsultProductVO> consultProduct;
	
	public ConsultVO() {
	}	

	public ConsultVO(Integer no, Integer customerNo, Integer employeeNo, String content, Date regDate, CusVO cusVO,
			List<ConsultProductVO> consultProduct) {
		super();
		this.no = no;
		this.customerNo = customerNo;
		this.employeeNo = employeeNo;
		this.content = content;
		this.regDate = regDate;
		this.cusVO = cusVO;
		this.consultProduct = consultProduct;
	}



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

	public List<ConsultProductVO> getConsultProduct() {
		return consultProduct;
	}

	public void setConsultProduct(List<ConsultProductVO> consultProduct) {
		this.consultProduct = consultProduct;
	}	

	public CusVO getCustomerVO() {
		return customerVO;
	}

	public void setCustomerVO(CusVO customerVO) {
		this.customerVO = customerVO;
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
