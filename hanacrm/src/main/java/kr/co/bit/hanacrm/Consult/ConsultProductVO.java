package kr.co.bit.hanacrm.Consult;

public class ConsultProductVO {
	private Integer no;
	private Integer consultNo;
	private Integer type;
	private Integer productNo;
	//상품정보 표시하기 위한 이름. 디비테이블에는 없음 
	private String productName;
	
	public ConsultProductVO() {
	}

	

	public ConsultProductVO(Integer no, Integer consultNo, Integer type, Integer productNo, String productName) {
		super();
		this.no = no;
		this.consultNo = consultNo;
		this.type = type;
		this.productNo = productNo;
		this.productName = productName;
	}

	public String getProductName() {
		return productName;
	}



	public void setProductName(String productName) {
		this.productName = productName;
	}



	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
	}

	public Integer getConsultNo() {
		return consultNo;
	}

	public void setConsultNo(Integer consultNo) {
		this.consultNo = consultNo;
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

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("ConsultProductVO [no=").append(no).append(", consultNo=").append(consultNo).append(", type=")
				.append(type).append(", productNo=").append(productNo).append(", productName=").append(productName)
				.append("]");
		return builder.toString();
	}

	
}
