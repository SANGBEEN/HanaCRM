package kr.co.bit.hanacrm.Main;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.bit.hanacrm.Employee.EmpService;
import kr.co.bit.hanacrm.Employee.EmpVO;
import kr.co.bit.hanacrm.Schedule.ScheduleService;
import kr.co.bit.hanacrm.Schedule.ScheduleVO;

@Controller
public class MainController {
	
	@Autowired
	private EmpService empService;
	@Autowired
	private ScheduleService scheduleService;
	
	// 로그인
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam("uid") String id, @RequestParam("password") String password, HttpSession session) {
		EmpVO emp = new EmpVO();
		System.out.println("login : " + id);
		emp.setId(id);
		emp.setPassword(password);
		EmpVO loginEmp = new EmpVO();
		loginEmp = empService.login(emp);
		System.out.println(loginEmp);
		if(loginEmp!=null){
			session.setAttribute("emp", loginEmp);
			return "redirect:/main";
		}
		return "redirect:/";
	}
	//메인화면(대시보드)
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public String main(HttpSession session, Model model){
		EmpVO emp = (EmpVO) session.getAttribute("emp");
		List<ScheduleVO> scheduleList = new ArrayList<>();
		
		scheduleList = scheduleService.selectListAll(emp.getNo());
		
		return "/main/main";
	}
	//로그아웃 
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect:/";
	}
}
