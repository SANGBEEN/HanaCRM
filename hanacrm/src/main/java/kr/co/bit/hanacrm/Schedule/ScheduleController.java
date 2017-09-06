package kr.co.bit.hanacrm.Schedule;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.bit.hanacrm.Employee.EmpService;
import kr.co.bit.hanacrm.Employee.EmpVO;

@Controller
public class ScheduleController {

	@Autowired
	private ScheduleService scheduleService;
	
	//메인화면(대시보드)
	@RequestMapping(value="/schedule", method=RequestMethod.GET)
	public String main(){
		return "/schedule/schedule";
	}
}
