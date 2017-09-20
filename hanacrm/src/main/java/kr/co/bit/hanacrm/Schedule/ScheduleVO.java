package kr.co.bit.hanacrm.Schedule;

import java.sql.Date;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.co.bit.hanacrm.Customer.CusVO;

//할일, 예약, 생일, 기념일, 명절, 진행상황등등
@Component
public class ScheduleVO {

	private Integer no;

	private Integer employeeNo;

	private Integer customerNo;

	private String location;

	// meeting 2
	private String type;

	private String comments;

	// YYMMDDHH24MI
	private String startDate;

	// YYMMDDHH24MI
	private String endDate;

	// YYMMDD
	private String regDate;

	// 매우 중요 2
	private Integer importance;

	// 한번,매일,매주,매달,매년
	private String repetition;
	
	// 날짜 String type
	private String date;
	
	// 고객 정보
	private CusVO customer;
	
	public ScheduleVO() {
		super();
	}
	
	public ScheduleVO(Integer no, Integer employeeNo, Integer customerNo, String location, String type,
			String comments, String startDate, String endDate, String regDate, Integer importance, String repetition) {
		super();
		this.no = no;
		this.employeeNo = employeeNo;
		this.customerNo = customerNo;
		this.location = location;
		this.type = type;
		this.comments = comments;
		this.startDate = startDate;
		this.endDate = endDate;
		this.regDate = regDate;
		this.importance = importance;
		this.repetition = repetition;
	}

	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
	}

	public Integer getEmployeeNo() {
		return employeeNo;
	}

	public void setEmployeeNo(Integer employeeNo) {
		this.employeeNo = employeeNo;
	}

	public Integer getCustomerNo() {
		return customerNo;
	}

	public void setCustomerNo(Integer customerNo) {
		this.customerNo = customerNo;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public Integer getImportance() {
		return importance;
	}

	public void setImportance(Integer importance) {
		this.importance = importance;
	}

	public String getRepetition() {
		return repetition;
	}

	public void setRepetition(String repetition) {
		this.repetition = repetition;
	}
	
	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
	public CusVO getCustomer() {
		return customer;
	}

	public void setCustomer(CusVO customer) {
		this.customer = customer;
	}
	
	/*
	// type - typeName 매칭
	public String typeName() {
		String result = "Meeting";
		
		switch (type) {
		case 1:
			result = "Meeting";
			break;
		case 2:			
			result = "Task";
			break;
		case 3:
			result = "Call";
			break;
		case 4:
			result = "Event";		
			break;
		case 5:
			result = "Other";			
			break;

		default:
			break;
		}
		
		return result;
	}
*/	
/*	public String color() {
		String result = "2FABE9";
		
		switch (type) {
		case 1:
			result = "#00A300";
			break;
		case 2:			
			result = "#2D89EF";
			break;
		case 3:
			result = "#FFC40D";
			break;
		case 4:
			result = "#999";		
			break;
		case 5:
			result = "#333";			
			break;

		default:
			break;
		}
		
		return result;
	}*/


	@Override
	public String toString() {
		String json = "";
		//VO to JSON
		ObjectMapper mapper = new ObjectMapper();
		try {
			json = mapper.writeValueAsString(this);
			//System.out.println(json);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}

		/*
		StringBuilder builder = new StringBuilder();
		 builder.append("ScheduleVO [no=").append(no).append(", employeeNo=").append(employeeNo).append(", customerNo=")
				.append(customerNo).append(", location=").append(location).append(", type=").append(type)
				.append(", comments=").append(comments).append(", startDate=").append(startDate).append(", endDate=")
				.append(endDate).append(", regDate=").append(regDate).append(", importance=").append(importance)
				.append(", repetition=").append(repetition).append(", date=").append(date).append("]");
		 */
		return json; //builder.toString();
	}	

}