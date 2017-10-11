package kr.co.bit.hanacrm.Schedule;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.co.bit.hanacrm.Customer.CusVO;

@Component
public class ReservationVO_alone {

	private String name;

	private String phone;

	private char status;

	private String msg;

	public ReservationVO_alone() {
		super();
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

	public char getStatus() {
		return status;
	}

	public void setStatus(char status) {
		this.status = status;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String toString() {
		String json = ""; // super.toString();
		ObjectMapper mapper = new ObjectMapper();
		try {
			json += mapper.writeValueAsString(this);
			// System.out.println(json);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return json;
	}

}