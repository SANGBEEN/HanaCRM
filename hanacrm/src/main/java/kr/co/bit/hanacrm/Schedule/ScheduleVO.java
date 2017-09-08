package kr.co.bit.hanacrm.Schedule;

import java.sql.Date;

import org.springframework.stereotype.Component;

//할일, 예약, 생일, 기념일, 명절, 진행상황등등
@Component
public class ScheduleVO {

	private Integer no;

	private Integer employeeNo;

	private Integer customerNo;

	private String location;

	// meeting 2
	private Integer type;

	private String comments;

	// YYMMDDHH24MI
	private Date startDate;

	// YYMMDDHH24MI
	private Date endDate;

	// YYMMDD
	private Date regDate;

	// 매우 중요 2
	private Integer importance;

	// 한번,매일,매주,매달,매년
	private String repetition;
	
	// 날짜 String type
	private String date;
	
	public ScheduleVO() {
		super();
	}
	
	public ScheduleVO(Integer no, Integer employeeNo, Integer customerNo, String location, Integer type,
			String comments, Date startDate, Date endDate, Date regDate, Integer importance, String repetition) {
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

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
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

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("ScheduleVO [no=").append(no).append(", employeeNo=").append(employeeNo).append(", customerNo=")
				.append(customerNo).append(", location=").append(location).append(", type=").append(type)
				.append(", comments=").append(comments).append(", startDate=").append(startDate).append(", endDate=")
				.append(endDate).append(", regDate=").append(regDate).append(", importance=").append(importance)
				.append(", repetition=").append(repetition).append(", date=").append(date).append("]");
		return builder.toString();
	}

	

}