package kr.co.bit.hanacrm.Employee;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.bit.hanacrm.Region.RegionService;
import kr.co.bit.hanacrm.Region.RegionVO;

@Controller
@RequestMapping("/emp")
public class EmpController {
	
	@Autowired
	private EmpService empService;
	@Autowired
	private RegionService regionService;
	
	//회원가입 
	@RequestMapping(value="/join",method=RequestMethod.POST)
	public String join(@RequestParam("uid") String id, EmpVO empVO){
		empVO.setId(id);
		//사원코드생성 
		Random rnd =new Random();
		StringBuffer code =new StringBuffer();
		for(int i=0;i<10;i++){
		    // rnd.nextBoolean() 는 랜덤으로 true, false 를 리턴. true일 시 랜덤 한 소문자를, false 일 시 랜덤 한 숫자를 StringBuffer 에 append 한다.
		    if(rnd.nextBoolean()){
		        code.append((char)((int)(rnd.nextInt(26))+97));
		    }else{
		        code.append((rnd.nextInt(10)));
		    }
		}
		empVO.setCode(code.toString());

		System.out.println("가입정보 "+empVO);
		if(empService.join(empVO)==1){
			System.out.println("가입성공");
			return "redirect:/";
		}
		
		return "redirect:/";
	}

	//회원정보 
	@RequestMapping(value="/profile", method=RequestMethod.GET)
	public String profile(HttpSession session, Model model){
		EmpVO emp = (EmpVO) session.getAttribute("emp");
		//List<RegionVO> regionList = new ArrayList<>();
		System.out.println(emp);
		emp = empService.profile(emp);
		//regionList = regionService.list();
		model.addAttribute("empProfile", emp);
		//model.addAttribute("regionList", regionList);
		
		return "employee/profile";
	}
	//회원정보수정 
	@RequestMapping(value="/profile", method=RequestMethod.POST)
	public String update(HttpSession session, Model model, EmpVO emp){
		System.out.println(emp);
		if(empService.update(emp)==1){
			session.removeAttribute("emp");
			session.setAttribute("emp", emp);
			//return "redirect:/main";
		}
		//regionList = regionService.list();
		//model.addAttribute("empProfile", emp);
		//model.addAttribute("regionList", regionList);
		
		return "redirect:/main";
	}
	
}
