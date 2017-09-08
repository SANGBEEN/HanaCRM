package kr.co.bit.hanacrm.Consult;

public class ConsultProductVO {
	private Integer no;
	private Integer consultNo;
	private Integer type;
	private Integer productNo;
	
	public ConsultProductVO() {
	}

	public ConsultProductVO(Integer no, Integer consultNo, Integer type, Integer productNo) {
		this.no = no;
		this.consultNo = consultNo;
		this.type = type;
		this.productNo = productNo;
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
				.append(type).append(", productNo=").append(productNo).append("]");
		return builder.toString();
	}	
}
