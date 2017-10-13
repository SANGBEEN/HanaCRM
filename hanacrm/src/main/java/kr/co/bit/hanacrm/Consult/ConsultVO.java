package kr.co.bit.hanacrm.Consult;

import java.util.List;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.co.bit.hanacrm.Customer.CusVO;

//상담내역 (진행중인)
public class ConsultVO {

	private int no;
	private int customerNo;
	private int employeeNo;
	private String content;
	private String regDate;
	private String title;

	private CusVO customerVO;
	
	private List<ConsultProductVO> consultProduct;
	
	public ConsultVO() {

	}	

	public ConsultVO(int no, int customerNo, int employeeNo, String content, String regDate,String title,
			List<ConsultProductVO> consultProduct) {
		this.no = no;
		this.customerNo = customerNo;
		this.employeeNo = employeeNo;
		this.content = content;
		this.regDate = regDate;
		this.title = title;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getCustomerNo() {
		return customerNo;
	}

	public void setCustomerNo(int customerNo) {
		this.customerNo = customerNo;
	}

	public int getEmployeeNo() {
		return employeeNo;
	}

	public void setEmployeeNo(int employeeNo) {
		this.employeeNo = employeeNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
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
		/*StringBuilder builder = new StringBuilder();
		builder.append("ConsultVO [no=").append(no).append(", customerNo=").append(customerNo).append(", employeeNo=")
				.append(employeeNo).append(", content=").append(content).append(", regDate=").append(regDate)
				.append(", title=").append(title).append(", customerVO=").append(customerVO).append(", consultProduct=")
				.append(consultProduct).append("]");

		return builder.toString();*/
		
		ObjectMapper mapper = new ObjectMapper();
		
		String VoToJson = null;
		
		try {
			VoToJson = mapper.writeValueAsString(this);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return VoToJson;
	}
	
}
