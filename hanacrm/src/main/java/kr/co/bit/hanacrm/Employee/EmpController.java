package kr.co.bit.hanacrm.Employee;

import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	public String join(@RequestParam("uid") String id, EmpVO empVO, HttpSession session){
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
	@RequestMapping(value="/detail", method=RequestMethod.GET)
	public String detail(HttpSession session){
		System.out.println("detail");
		return "redirect:/";
	}
	//회원정보수정 

	
}
