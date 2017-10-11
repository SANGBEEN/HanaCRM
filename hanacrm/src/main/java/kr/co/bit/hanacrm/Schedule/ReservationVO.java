package kr.co.bit.hanacrm.Schedule;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.co.bit.hanacrm.Customer.CusVO;

@Component
public class ReservationVO extends ScheduleVO {

	private String name;

	private String phone;

	private String status;

	private String msg;

	public ReservationVO() {
		super();
	}
	
	
	public ReservationVO(Integer no, Integer employeeNo, Integer customerNo, String location, String type,
			String comments, String startDate, String endDate, String regDate, Integer importance, String repetition,
			String name, String phone, String status, String msg) {
		super(no, employeeNo, customerNo, location, type, comments, startDate, endDate, regDate, importance,
				repetition);
		this.name = name;
		this.phone = phone;
		this.status = status;
		this.msg = msg;
	}


	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	

	@Override
	public Integer getNo() {
		// TODO Auto-generated method stub
		return super.getNo();
	}

	@Override
	public void setNo(Integer no) {
		// TODO Auto-generated method stub
		super.setNo(no);
	}

	@Override
	public Integer getEmployeeNo() {
		// TODO Auto-generated method stub
		return super.getEmployeeNo();
	}

	@Override
	public void setEmployeeNo(Integer employeeNo) {
		// TODO Auto-generated method stub
		super.setEmployeeNo(employeeNo);
	}

	@Override
	public Integer getCustomerNo() {
		// TODO Auto-generated method stub
		return super.getCustomerNo();
	}

	@Override
	public void setCustomerNo(Integer customerNo) {
		// TODO Auto-generated method stub
		super.setCustomerNo(customerNo);
	}

	@Override
	public String getLocation() {
		// TODO Auto-generated method stub
		return super.getLocation();
	}

	@Override
	public void setLocation(String location) {
		// TODO Auto-generated method stub
		super.setLocation(location);
	}

	@Override
	public String getType() {
		// TODO Auto-generated method stub
		return super.getType();
	}

	@Override
	public void setType(String type) {
		// TODO Auto-generated method stub
		super.setType(type);
	}

	@Override
	public String getComments() {
		// TODO Auto-generated method stub
		return super.getComments();
	}

	@Override
	public void setComments(String comments) {
		// TODO Auto-generated method stub
		super.setComments(comments);
	}

	@Override
	public String getStartDate() {
		// TODO Auto-generated method stub
		return super.getStartDate();
	}

	@Override
	public void setStartDate(String startDate) {
		// TODO Auto-generated method stub
		super.setStartDate(startDate);
	}

	@Override
	public String getEndDate() {
		// TODO Auto-generated method stub
		return super.getEndDate();
	}

	@Override
	public void setEndDate(String endDate) {
		// TODO Auto-generated method stub
		super.setEndDate(endDate);
	}

	@Override
	public String getRegDate() {
		// TODO Auto-generated method stub
		return super.getRegDate();
	}

	@Override
	public void setRegDate(String regDate) {
		// TODO Auto-generated method stub
		super.setRegDate(regDate);
	}

	@Override
	public Integer getImportance() {
		// TODO Auto-generated method stub
		return super.getImportance();
	}

	@Override
	public void setImportance(Integer importance) {
		// TODO Auto-generated method stub
		super.setImportance(importance);
	}

	@Override
	public String getRepetition() {
		// TODO Auto-generated method stub
		return super.getRepetition();
	}

	@Override
	public void setRepetition(String repetition) {
		// TODO Auto-generated method stub
		super.setRepetition(repetition);
	}

	@Override
	public String getDate() {
		// TODO Auto-generated method stub
		return super.getDate();
	}

	@Override
	public void setDate(String date) {
		// TODO Auto-generated method stub
		super.setDate(date);
	}

	@Override
	public CusVO getCustomer() {
		// TODO Auto-generated method stub
		return super.getCustomer();
	}

	@Override
	public void setCustomer(CusVO customer) {
		// TODO Auto-generated method stub
		super.setCustomer(customer);
	}


	@Override
	public String toString() {
		String json = ""; //super.toString();
		ObjectMapper mapper = new ObjectMapper();
		try {
			json += mapper.writeValueAsString(this);
			//System.out.println(json);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return json;
	}



}