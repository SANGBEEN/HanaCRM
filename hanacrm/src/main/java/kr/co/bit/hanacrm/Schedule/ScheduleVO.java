package kr.co.bit.hanacrm.Schedule;

import java.sql.Date;

//할일, 예약, 생일, 기념일, 명절, 진행상황등등
public class ScheduleVO {

	private Integer no;

	private Integer employeeNo;

	private Integer customerNo;

	private Date regDate;

	private String location;

	private String comment;

	private Integer type;

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

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	// Schedule 모델 복사
	public void CopyData(ScheduleVO param) {
		this.no = param.getNo();
		this.employeeNo = param.getEmployeeNo();
		this.customerNo = param.getCustomerNo();
		this.regDate = param.getRegDate();
		this.location = param.getLocation();
		this.comment = param.getComment();
		this.type = param.getType();
	}

	public ScheduleVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ScheduleVO(Integer no, Integer employeeNo, Integer customerNo, Date regDate, String location, String comment,
			Integer type) {
		super();
		this.no = no;
		this.employeeNo = employeeNo;
		this.customerNo = customerNo;
		this.regDate = regDate;
		this.location = location;
		this.comment = comment;
		this.type = type;
	}
	
}
