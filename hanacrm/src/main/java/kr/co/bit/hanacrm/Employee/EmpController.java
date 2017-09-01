package kr.co.bit.hanacrm.Employee;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/emp")
public class EmpController {
	
	@Autowired
	private EmpService empService;
	
	//로그인 
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String login(@RequestParam("id")String id, @RequestParam("password")String password, HttpSession session){
		EmpVO emp = new EmpVO();
		emp.setId(id);
		emp.setPassword(password);
		emp = empService.login(emp);
		session.setAttribute("emp", emp);
		System.out.println(emp);
		return "login/login";
	}
	
	//로그아웃 
	@RequestMapping(value="/logout.do", method=RequestMethod.GET)
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect:/";
	}
	//회원가입 
	@RequestMapping(value="/join.do",method=RequestMethod.POST)
	public String join(EmpVO empVO, Model model, HttpSession session){
		System.out.println("가입정보 "+empVO);
		empService.join(empVO);
		
		return "redirect:/";
	}
	//회원가입 폼 
	@RequestMapping(value="/join.do",method=RequestMethod.GET)
	public String joinForm(EmpVO empVO, Model model, HttpSession session){
		System.out.println("가입정보 "+empVO);
		empService.join(empVO);
		
		return "redirect:/";
	}
	//회원정보 
	@RequestMapping(value="/detail.do/", method=RequestMethod.GET)
	public String detail(HttpSession session){
		return "";
	}
	//회원정보수정 

	//로그인
	//로그아웃
	
}
