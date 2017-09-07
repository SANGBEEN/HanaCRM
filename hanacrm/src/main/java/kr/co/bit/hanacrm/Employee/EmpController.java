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
	
	//회원가입 
	@RequestMapping(value="/join",method=RequestMethod.POST)
	public String join(@RequestParam("uid") String id, EmpVO empVO, Model model, HttpSession session){
		empVO.setId(id);
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

	
}
