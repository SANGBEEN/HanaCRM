package kr.co.bit.hanacrm.Consult;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class ConsultProductVO {
	private int no;
	private int consultNo;
	private int type;
	private int productNo;
	//상품정보 표시하기 위한 이름. 디비테이블에는 없음 
	private String productName;
	
	public ConsultProductVO() {
	}

	public ConsultProductVO(int no, int consultNo, int type, int productNo, String productName) {
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

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getConsultNo() {
		return consultNo;
	}

	public void setConsultNo(int consultNo) {
		this.consultNo = consultNo;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	@Override
	public String toString() {
		/*StringBuilder builder = new StringBuilder();
		builder.append("ConsultProductVO [no=").append(no).append(", consultNo=").append(consultNo).append(", type=")
				.append(type).append(", productNo=").append(productNo).append(", productName=").append(productName)
				.append("]");
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
