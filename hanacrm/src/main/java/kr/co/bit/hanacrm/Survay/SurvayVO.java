package kr.co.bit.hanacrm.Survay;

//고객 설문(평가) - 명함
public class SurvayVO {

	private Integer no;

	private Integer customerNo;

	private Integer employeeNo;

	// 별??
	private String score;

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

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public SurvayVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SurvayVO(Integer no, Integer customerNo, Integer employeeNo, String score) {
		super();
		this.no = no;
		this.customerNo = customerNo;
		this.employeeNo = employeeNo;
		this.score = score;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("SurvayVO [no=").append(no).append(", customerNo=").append(customerNo).append(", employeeNo=")
				.append(employeeNo).append(", score=").append(score).append("]");
		return builder.toString();
	}
	
}