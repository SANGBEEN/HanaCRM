package kr.co.bit.hanacrm.Memo;

import java.sql.Date;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

//사원의 개인적인 메모
@Component
public class MemoVO {

	private Integer no;

	private String content;

	private Integer employeeNo;

	private Date regDate;

	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getEmployeeNo() {
		return employeeNo;
	}

	public void setEmployeeNo(Integer employeeNo) {
		this.employeeNo = employeeNo;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public MemoVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MemoVO(Integer no, String content, Integer employeeNo, Date regDate) {
		super();
		this.no = no;
		this.content = content;
		this.employeeNo = employeeNo;
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		
		String json = "";
		//VO to JSON
		ObjectMapper mapper = new ObjectMapper();
		try {
			json = mapper.writeValueAsString(this);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		
		return json;
		/*StringBuilder builder = new StringBuilder();
		builder.append("MemoVO [no=").append(no).append(", content=").append(content).append(", employeeNo=")
				.append(employeeNo).append(", regDate=").append(regDate).append("]");
		return builder.toString();*/
	}

}