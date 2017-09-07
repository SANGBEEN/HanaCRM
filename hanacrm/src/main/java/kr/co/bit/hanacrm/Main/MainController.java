package kr.co.bit.hanacrm.Main;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.bit.hanacrm.Employee.EmpService;
import kr.co.bit.hanacrm.Employee.EmpVO;

@Controller
public class MainController {
	
	@Autowired
	private EmpService empService;
	
	// 로그인
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam("uid") String id, @RequestParam("password") String password, HttpSession session) {
		EmpVO emp = new EmpVO();
		System.out.println("login : " + id);
		emp.setId(id);
		emp.setPassword(password);
		emp = empService.login(emp);
		session.setAttribute("emp", emp);
		System.out.println(emp);
		return "redirect:/main";
	}
	//메인화면(대시보드)
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public String main(){
		System.out.println("main");
		return "/main/main";
	}
	//로그아웃 
	@RequestMapping(value="/logout.do", method=RequestMethod.GET)
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect:/";
	}
}
